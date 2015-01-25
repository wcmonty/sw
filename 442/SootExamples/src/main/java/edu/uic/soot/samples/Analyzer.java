package edu.uic.soot.samples;


import soot.*;
import soot.jimple.*;
import soot.jimple.internal.JIfStmt;
import soot.tagkit.*;
import soot.toolkits.graph.*;
import soot.toolkits.graph.pdg.*;
import soot.toolkits.scalar.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Analyzer extends BodyTransformer {

    // public static final Analyzer v = new Analyzer();
    // private Analyzer() {}

    private boolean allElementsAreTheSame(ArrayList<Block> list,
			ArrayList<Block> simplePath, int index) {
		if (index + list.size() <= simplePath.size()){
			for(int i = 0; i < list.size(); i++){
				if (list.get(i) != simplePath.get(index + i)){
					return false;
				}
			}
		}
		else {
			return false;
		}
		return true;
	}

    // Gets only locals on rightOp
    public List<Immediate> getAllImmediates(Unit u) {
        List<Immediate> imm = new ArrayList<Immediate>();
        for (ValueBox vb : u.getUseBoxes()) {
            getAllImmediates(vb, imm);
        }

        return imm;
    }

	public void getAllImmediates(ValueBox vb, List<Immediate> imm) {
        if (vb.getValue() instanceof Immediate) {
            imm.add((Immediate) vb.getValue());
            return;
        }

        for (Object o : vb.getValue().getUseBoxes()) {
            ValueBox v = (ValueBox) o;
            getAllImmediates(v, imm);
        }


    }

	public List<Local> getAllLocals(Unit u) {
        List<Immediate> imm = getAllImmediates(u);
        List<Local> locals = new ArrayList<Local>();
        for (Immediate im : imm) {
            if (im instanceof Local) {
                locals.add((Local) im);
            }
        }

        if (u instanceof AssignStmt) {
            //We dont handle assignments to instance fields.
            if (((AssignStmt) u).getLeftOp() instanceof Local) {
                locals.add((Local) ((AssignStmt) u).getLeftOp());
            }
        }

        return locals;

    }

	private ArrayList<ArrayList<Block>> getAllPrimePathsFromSimplePaths(Body body, 
			ArrayList<ArrayList<Block>> simplePaths) {
    	
    	ArrayList<ArrayList<Block>> primePaths = new ArrayList<ArrayList<Block>>();
    	for(ArrayList<Block> path : simplePaths){
			if (!isASubPathOfAnotherPath(path, simplePaths)) {
				primePaths.add(path);
			}
		}        
		return primePaths;
	}

	private ArrayList<ArrayList<Block>> getAllRoundTripPathsFromPrimePaths(Body body,
			ArrayList<ArrayList<Block>> primePaths) {
    	ArrayList<ArrayList<Block>> roundTripPaths = new ArrayList<ArrayList<Block>>();
    	for(ArrayList<Block> list : primePaths){
			if (list.size() > 1 && list.get(0) == list.get(list.size() - 1)) {
				roundTripPaths.add(list);
			}
		}
		return roundTripPaths;
	}

	private ArrayList<ArrayList<Block>> getAllSimplePaths(Body body, ClassicCompleteBlockGraph cfg) {   
		ArrayList<ArrayList<Block>> paths = new ArrayList<ArrayList<Block>>();
        for (Block block : cfg) {
    		ArrayList<Block> list = new ArrayList<Block>();
    		getAllSimplePathsFromBlock(cfg, block, paths, list, 0);
        }
        
        return paths;
    }

	private ArrayList<ArrayList<Block>> getAllSimplePathsFromBlock(ClassicCompleteBlockGraph cfg, Block block, 
			ArrayList<ArrayList<Block>> lists, ArrayList<Block> pathSoFar,
			int numberOfNodes) {
		// The first and last nodes are the same
		if(pathSoFar.size() > 0 && pathSoFar.get(0) == block){
			pathSoFar.add(block);
			lists.add(pathSoFar);
			return lists;
		}
		// We have already reached this point.
		else if(pathSoFar.contains(block)){
			return lists;
		}
		else {
			pathSoFar.add(block);
			numberOfNodes++;
			if (numberOfNodes > 1){
				lists.add(pathSoFar);
			}
			for (Block successor : cfg.getSuccsOf(block)){
				ArrayList<Block> clone = new ArrayList<Block>(pathSoFar);
				getAllSimplePathsFromBlock(cfg, successor, lists, clone, numberOfNodes);
			}
		}
		return lists;
	}

	public List<Unit> getDefsOfLocal(SimpleLocalDefs defs, Unit u, Local l) {
        if (defs.hasDefsAt(l, u)) {
            return defs.getDefsOfAt(l, u);
        } else {
            assert (u instanceof AssignStmt);
            List<Unit> defUnits = new ArrayList<Unit>();
            defUnits.add(u);
            return defUnits;
        }
    }
    
    @Override
    protected void internalTransform(Body body, String s, Map stringStringMap) {
        //print all defs for each local in each unit

		ClassicCompleteBlockGraph cfg = new ClassicCompleteBlockGraph(body);

    	ArrayList<ArrayList<Block>> simplePaths = getAllSimplePaths(body, cfg);
    	ArrayList<ArrayList<Block>> primePaths = getAllPrimePathsFromSimplePaths(body, simplePaths);
    	ArrayList<ArrayList<Block>> roundtripPaths = getAllRoundTripPathsFromPrimePaths(body, primePaths);
    	
    	System.out.println("********************************************************************************");
        System.out.println(String.format("Analyzing %s %s", body.getMethod(), body.getMethod().getDeclaringClass()));
        System.out.println("** Blocks:");
        printBlocks(cfg);
        System.out.println("** Simple paths:");
        printPaths(simplePaths);
    	System.out.println();
    	System.out.println("** Prime paths:");
        printPaths(primePaths);
        System.out.println();
        System.out.println("Round trip paths:");
        printPaths(roundtripPaths);
        System.out.println();
        System.out.println("** Def-Use chains:");
        printDefsForAllLocals(body);
    }

	private boolean isASubPathOfAnotherPath(ArrayList<Block> list,
			ArrayList<ArrayList<Block>> simplePaths) {
		for (ArrayList<Block> simplePath : simplePaths){
			// Do an efficient first pass to make sure all elements are in 
			// the simple path
			if (simplePath.containsAll(list) && simplePath != list){
				int index = simplePath.indexOf(list.get(0));
				if (allElementsAreTheSame(list, simplePath, index)){
					return true;
				}
			}
		}
		return false;
	}

	private void printAllDefs(List<Unit> defsForLocal) {
		for (Unit defUnit : defsForLocal) {
		    System.out.print("\t\t\tDef = " + defUnit);
		    printSourceLineOfUnit(defUnit);
		}
	}

	private void printBlocks(ClassicCompleteBlockGraph cfg) {
		for (Block block : cfg){
        	System.out.println(block);
        }
	}
	

	private void printDefsForAllLocals(Body body) {

        UnitGraph cfg = new EnhancedUnitGraph(body);
        SimpleLocalDefs simpleLocalDefs = new SimpleLocalDefs(cfg);

        for (Unit u : body.getUnits()) {
            System.out.println("\tLocals in unit: " + u);
            for (Local l : getAllLocals(u)) {
                List<Unit> defsForLocal = getDefsOfLocal(simpleLocalDefs, u, l);
                System.out.print("\t\tLocal: " + l);
                printSourceLineOfUnit(u);
                printAllDefs(defsForLocal);
            }
        }

    }


    private void printPath(ArrayList<Block> path) {
		System.out.print("[");
		int j = 0;
		for(Block block : path) {
			if (j > 0){
				System.out.print(", ");
			}
			System.out.print(block.getIndexInMethod());
			j++;        		
		}
		System.out.print("]");
	}

	private void printPaths(ArrayList<ArrayList<Block>> paths) {
        System.out.print("{");
		int i = 0;
        for(ArrayList<Block> simplePath : paths){
        	if (i > 0) {
        		System.out.print(", ");
        	}
        	printPath(simplePath);
        	i++;
        }
        System.out.println("}");
	} 

    private void printSourceLineOfUnit(Unit u) {
		SourceLnNamePosTag useTag = (SourceLnNamePosTag) u.getTag("SourceLnPosTag");
		if(useTag != null){
			System.out.println(" (line: " + useTag.startLn() + ")");
		}
		else {
			System.out.println();
		}
	}
}

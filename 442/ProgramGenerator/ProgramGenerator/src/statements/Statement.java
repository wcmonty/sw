package statements;

import java.util.ArrayList;
import java.util.Random;
import java.util.Set;

import classLevelElements.Method;
import classLevelElements.Type;
import classLevelElements.Type.Primitives;
import expressions.AssignmentExpression;
import expressions.VariableGenerator;
import nodes.Operand;
import packageLevelElements.ClassGenerator;
import util.ProgGenUtil;

/**
 * Statements: i1 = a+b;
 *
 * @author Ishtiaque_Hussain
 *
 */
public class Statement 
{
	String stmt = "";
	
	public static Statement getRandomizedStatement(
			Method method,
			ArrayList<ClassGenerator> classList)
	{
		Statement stmt = new Statement();
		Random rand = new Random();
		int option = 0;

		option = rand.nextInt(100) % 3;
		switch (option) 
		{
		case 0: // Assignment statement
			stmt.stmt = new AssignmentExpression(method).toString();
			//FIXME: if there is no local variable available to assign, it will simply use print statement.
			// following line will add an extra line to the LOC
			method.setLoc(method.getLoc()+1);
			break;
			
		case 1: // Print statements: Max. 5 lines in a block
			stmt.stmt = new PrintStatement(method).toString();
			break;
			
		case 2: // method calls: restrict it to MAX_ALLOWED_METH_CALL
			int methCalledCounterValue = method.getMethodCallCounter() + 1;
			method.setMethodCallCounter(methCalledCounterValue);
			if (methCalledCounterValue < method.getMaxAllowedMethodCalls()) 
			{
				if(ProgGenUtil.coinFlip())
				{
					stmt.stmt += ProgGenUtil.getMethodCall(method, classList);
				}
				else
				{
					//wire it to variables in scope
					Operand lhs;
					Random random = new Random();
					
					Set<Primitives> validPrimitivesInScope = ProgGenUtil.getValidPrimitivesInScope(method);
					
					//Pick a type
					Object[] primitivesArray = validPrimitivesInScope.toArray();
					
					if(primitivesArray.length == 0)
					{
						stmt.stmt += ProgGenUtil.getMethodCall(method, classList);
						break;
					}
					
					Primitives selectedPrimitive = (Primitives)primitivesArray[random.nextInt(primitivesArray.length)];

					// Introducing any variable
					lhs = VariableGenerator.getRandomizedVariable(method, selectedPrimitive);
										
					String methodCall = ProgGenUtil.getMethodCallForReturnType(
							method, classList, new Type(selectedPrimitive, ""), lhs);
					stmt.stmt += methodCall +  "\n";
				}
			}
			else
			{
				stmt.stmt = new PrintStatement(method).toString();
			}
			break;

		default:
			stmt.stmt = new IfStmtIfStmt(method, classList).toString();
		}
		
		return stmt;
	}
	
	public String toString() 
	{
		return stmt;
	}
}

/* Soot - a J*va Optimization Framework
 * Copyright (C) 2008 Eric Bodden
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

import java.util.Map;

import soot.*;
import soot.jimple.toolkits.pointer.LocalMustNotAliasAnalysis;
import soot.toolkits.graph.ExceptionalUnitGraph;

public class MyMain {
	public void run(String[] args) {
//		PackManager
//				.v()
//				.getPack("jtp")
//				.add(new Transform("jtp.instrumenter",
//						new DefUseTransformer() {
//							protected void internalTransform(Body body,
//									String phase, Map options) {
//								new LocalMustNotAliasAnalysis(
//										new ExceptionalUnitGraph(body));
//							}
//						}));

//		String[] args = { "-pp", 
//				"-process-dir", "/home/wcmonty/Projects/442/Generated500/src/test/",
//				"-cp", ".:" +
//						"/home/wcmonty/Projects/442/Generated500/src/test/:" +
//						"/home/wcmonty/Projects/442/soot_jar/sootclasses-2.5.0.jar:" +
//						"/home/wcmonty/Projects/442/soot_jar/polyglotclasses-1.3.5.jar:" +
//						"/home/wcmonty/Projects/442/soot_jar/jasminclasses-2.5.0.jar:" +
//						"/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/rt.jar",
//				"-pp",
//				"-output-format", output_format, 
//				"-include-all", 
//				"-w",
//				"-polyglot"};

//		soot.Main.main(args);
	}

	public static void main(String[] args) {
		System.out.println("I am here!!!!!!!!!");
		
		MyMain soot_example = new MyMain();
		soot_example.run(args);
	}

}

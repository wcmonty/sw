package classLevelElements;

import java.util.ArrayList;

import classLevelElements.Type.Primitives;
import packageLevelElements.ClassGenerator;

/**
 * Represents a variable in the generated class.
 * 
 * @author balamurugan
 *
 */
public class Variable 
	extends Field
{
	protected Variable(String name, ArrayList<ClassGenerator> classList) 
	{
		super(name, classList);
		
		//variables are not arrays
		this.isArray = false;
		
		//variables are not static
		this.isStatic = false;
	}
	
	protected Variable(String name, Primitives primitive)
	{
		super(name, primitive);
		
		//variables are not arrays
		this.isArray = false;
		
		//variables are not static
		this.isStatic = false;
	}

	public static Variable generateVariable(String name, ArrayList<ClassGenerator> classList)
	{
		return new Variable(name, classList);
	}
	
	public static Variable generateRecursionCounterVariable()
	{
		return new Variable("recursionCounter", Primitives.INT);
	}
	
	public boolean equals(Object obj)
	{
		if(obj == null)
			return false;
		
		if(! super.equals(obj) )
			return false;

		return true;
	}
}

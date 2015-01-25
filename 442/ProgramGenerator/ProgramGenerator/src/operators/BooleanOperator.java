package operators;

import java.util.Random;

import classLevelElements.Type.Primitives;
import nodes.Operator;
/**
 * Boolean Operators : ==, !=, >, >=, <, <=
 * @author Ishtiaque_Hussain
 *
 */

public class BooleanOperator extends Operator {

	private String symbol = null;

	public BooleanOperator(Primitives primitive)
	{
		Random rand = new Random();
		int option;
		if(primitive.equals(Primitives.STRING)
				|| primitive.equals(Primitives.OBJECT))
		{
			option = rand.nextInt(2);
		}
		else
		{
			option = rand.nextInt(6);
		}
		
		switch(option)
		{
			case 0: symbol = "!="; break;
			case 1: symbol = "=="; break;
			case 2: symbol = ">="; break;
			case 3: symbol = ">"; break;
			case 4: symbol = "<"; break;
			case 5: symbol = "<="; break;
		}
	}

	public String toString(){
		return symbol;
	}
}

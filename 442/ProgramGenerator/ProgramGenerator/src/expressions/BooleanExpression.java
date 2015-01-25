package expressions;

import java.util.Random;

import classLevelElements.Method;
import classLevelElements.Type.Primitives;
import nodes.Expression;
import nodes.Operator;
import operators.BooleanOperator;
import operators.ConjunctOperator;
import util.ProgGenUtil;

/**
 *
 * boolExpr := expr boolOp expr | boolExpr conjOp boolExpr
 * @author Ishtiaque_Hussain
 *
 */

public class BooleanExpression extends Expression {

	private Expression leftExpr = null;
	private Operator op = null;
	private Expression rightExpr = null;

	public BooleanExpression(Method method, Primitives primitive)
	{
		if(primitive == null)
			return;
		
		if(!ProgGenUtil.getPrimitivesOfVariables(
				method).contains(primitive))
		{
			return;
		}
		
		Random rand = new Random();
		int option = rand.nextInt(100);

		if(option < method.getAssociatedClass().getPercent())
		{
			leftExpr = new BooleanExpression(method, primitive);
			op = new ConjunctOperator();
			rightExpr = new BooleanExpression(method, primitive);
		}
		else
		{
			leftExpr = new NormalExpression(method, primitive);
			op = new BooleanOperator(primitive);
			rightExpr = new NormalExpression(method, primitive);
			
			//we also don't want if(i8 != i8)
			while(leftExpr.toString().equals(rightExpr.toString())){
				rightExpr = new NormalExpression(method, primitive);
			}
		}
	}

	public String toString()
	{
		if(leftExpr == null
				|| rightExpr == null
				|| op == null)
		{
			return null;
		}
		return "(" + leftExpr.toString() + op.toString()+ rightExpr.toString()+ ")";
	}
}

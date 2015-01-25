import java.util.Map;

import soot.Body;
import soot.BodyTransformer;


public class DefUseTransformer extends BodyTransformer {

	public DefUseTransformer() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void internalTransform(Body body, String phase, Map options) {
		System.out.println("In DefUseTransformer -> phase: ");
	}

}

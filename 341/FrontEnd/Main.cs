using System;

class MainClass
{
	// C#:
	public static void Main ()
	{
		string letters;
		Console.Write ("Please enter some letters: ");
		letters = Console.ReadLine ();
		var tupleList = ScrabbleWordGen.allScoredWords (letters, "dictionary.txt");
		foreach (var tuple in tupleList)
			Console.WriteLine (tuple.Item1 + ": " + tuple.Item2);
	}
}


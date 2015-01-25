using System;
using Mono.Data.Sqlite;

namespace sqlite
{
	class MainClass
	{
		public static void Main ()
		{
			string connectionInfo = "Data Source=Netflix.sqlite";
			SqliteConnection db = new SqliteConnection (connectionInfo);
			db.Open ();
			Console.Write ("Enter a movie id (1..999): ");
			int MovieID = int.Parse (Console.ReadLine ());
			string sql = "Select AVG(Rating) from Reviews where MovieID=" + MovieID;
			Console.WriteLine (sql);
			SqliteCommand cmd = new SqliteCommand (sql, db);
			object result = cmd.ExecuteScalar ();
			Console.WriteLine ("Average rating: " + result);

			// Total number of reviews
			sql = "Select count(*) from Reviews";
			cmd = new SqliteCommand (sql, db);
			result = cmd.ExecuteScalar ();
			Console.WriteLine ("Number of ratings: " + result);

			// Total number of movies
			sql = "Select count(*) from Movies";
			cmd = new SqliteCommand (sql, db);
			result = cmd.ExecuteScalar ();
			Console.WriteLine ("Number of movies: " + result);

			// Average review across all movies
			sql = "Select avg(Rating) from Reviews";
			cmd = new SqliteCommand (sql, db);
			result = cmd.ExecuteScalar ();
			Console.WriteLine ("Average rating across reviews: " + result);

			// Average review for each movies
			sql = "Select avg(Reviews.Rating), Movies.MovieName from Reviews JOIN Movies ON Reviews.MovieID = Movies.MovieID group by Reviews.MovieID";
			cmd = new SqliteCommand (sql, db);
			SqliteDataReader rdr = cmd.ExecuteReader();
			while (rdr.Read()) {
				Console.WriteLine ("Average rating for " + rdr.GetString(1) + " is " + rdr.GetDouble(0));
			}         
			db.Close ();
		}
	}
}
/*
– how many reviews are there in total? [ Hint: Count(*) ]
– how many movies are there in total?
– average review across all movies?
– average review for movie #1, movie #2, … , movie #10
*/

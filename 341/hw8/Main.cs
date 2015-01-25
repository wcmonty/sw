// 
// N-Tier database app: Test Tier 
// 
// William Montgomery
// University of Illinois, Chicago 
// CS341, Fall 2013 
// Homework 8 
// 

using System;
using Mono.Data.Sqlite;
using System.Collections;
using System.Collections.Generic;

namespace Netflix
{
	class MainClass
	{
		/** Main
		 * 
		 * Essentially just a list of tests.
		 * 
		 * This project has been documented with Doxygen tags.
		 * A HTML version can be found at docs/html/index.html
		 */
		public static void Main (string[] args)
		{
			AppDomain.CurrentDomain.ProcessExit += new EventHandler (OnProcessExit); 

			string divider = new string ('*', 80);

//			1. Ability to retrieve total # of movies 
			Console.WriteLine ("Total number of movies: " + Movie.count);
			Console.WriteLine (divider);

//			2. Ability to lookup a movie name from a movie id 
			Console.WriteLine ("Lookup a movie name from a movie id: " + Movie.find (1) ["MovieName"]);
			Console.WriteLine (divider);

//			3. Ability to lookup a movie id from a movie name
			Console.WriteLine ("Lookup a movie id from a movie name: ");
			foreach (Movie movie in Movie.findBy("MovieName", "When Harry Met Sally")) {
				Console.Write (movie ["MovieID"] + ", ");
			}
			Console.WriteLine ();
			Console.WriteLine (divider);


//			4. Ability to retrieve information about all the movies: ids, names, number of reviews, average rating, 
//			lowest rating, and highest rating; also the ability to foreach through this data 
			// All movies can be found with Movie.all
			// We can print out a subset of the movies with Movie.top
			foreach (Movie movie in Movie.top (10, "MovieID")) {
				ActiveCollection reviews = movie.reviews;
				Console.WriteLine ("{0} {1} {2} {3:F2} {4} {5}", 
				                  movie ["MovieID"], 
				                  movie ["MovieName"],
				                  reviews.count, 
				                  reviews.avg ("Rating"),
				                  reviews.max ("Rating") ["Rating"],
				                  reviews.min ("Rating") ["Rating"]);
			}
			Console.WriteLine (divider);

//			5. Ability to retrieve top-10 movies with the highest average ratings
			Console.WriteLine ("The highest rated movies are:");
			foreach (Review review in Review.highestRated(10)) {
//				Console.WriteLine(review.movie + review.movie.reviews.avg("Rating").ToString());
				Console.WriteLine ("{0} => {1:F2}", review.movie ["MovieName"], review ["AverageRating"]);
			}
			Console.WriteLine (divider);

//			6. Ability to retrieve total # of reviews 
			Console.WriteLine ("Total number of reviews: " + Review.count);
			Console.WriteLine (divider);

//			7. Ability to retrieve average rating across all the reviews 
			Console.WriteLine ("Average rating across all reviews: {0:F2}", Review.all.avg ("Rating"));
			Console.WriteLine (divider);

//			8. Ability to retrieve information about a user based on user id: number of distinct movies reviewed, 
//			number of reviews submitted, and average rating given by user across all their reviews 
			Console.WriteLine ("User with UserID 1509395 has {0} reviews across XXX distinct movies with an average rating of {1}.", 
			                  Review.findBy ("UserID", "1509395").count,
			                  Review.findBy ("UserID", "1509395").avg ("Rating"));
			Console.WriteLine (divider);

//			9. Ability to retrieve top-10 users who have submitted the most reviews 
			Console.WriteLine ("The top-10 users users who have submitted the most reviews are:");
			foreach (Review review in Review.mostRated(10)) {
				Console.WriteLine("{0} => {1}", review["UserID"], review["NumberReviews"]);
			}
			Console.WriteLine (divider);

//			10. Ability to insert a new review into the database 
			Review review2 = new Review();
			review2["Rating"] = 3;
			review2["MovieID"] = Movie.first["MovieID"];
			review2["UserID"] = Review.last["UserID"];
			Console.WriteLine("There was {0} review added\n", review2.save);
			Console.WriteLine("The last review entered was: " + Review.last);

			Movie movie2 = new Movie();
			movie2["MovieName"] = "The Harder They Come";
			Console.WriteLine("There was {0} movie added\n", movie2.save);
			Console.WriteLine("The last movie entered was: " + Movie.last);
			Console.WriteLine (divider);
		}

		/** Closes database connection at process exit */
		static void OnProcessExit (object sender, EventArgs e)
		{
			Console.WriteLine ("Closing db connection.");
			DatabaseConnection.closeConnection();
		}

	}
}

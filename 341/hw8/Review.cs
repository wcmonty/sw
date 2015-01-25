// 
// N-Tier database app: Business Tier 
// 
// William Montgomery
// University of Illinois, Chicago 
// CS341, Fall 2013 
// Homework 8 
// 

using System;
using System.Collections;
using System.Collections.Generic;

namespace Netflix
{
	/** ActiveRecord class corresponding to Reviews table */
	public class Review : ActiveRecord
	{
		/** Pass-through to base class */
		new public static ActiveCollection all {
			get {
				return all (typeof(Review));
			}
		}

		/** Pass-through to base class */
		public static Review find (int id)
		{
			return (Review)find (typeof(Review), id);
		}

		/** Pass-through to base class */
		public static ActiveCollection findBy (string value, string field)
		{
			return findBy (typeof(Review), value, field);
		}

		/** Pass-through to base class */
		new public static Review first {
			get {
				return (Review)first (typeof(Review));
			}
		}

		/** Pass-through to base class */
		public static ActiveCollection top (int number, string field)
		{
			return top (typeof(Review), number, field);
		}

		/** Pass-through to base class */
		public static ActiveCollection bottom (int number, string field)
		{
			return bottom (typeof(Review), number, field);

		}

		/** Pass-through to base class */
		new public static Review last {
			get {
				return (Review)last (typeof(Review));
			}
		}

		/** Pass-through to base class */
		new public static object count {
			get {
				return count (typeof(Review));
			}
		}

		/** Pass-through to base class */
		public Movie movie {
			get {
				return Movie.find(Convert.ToInt32(this.attributes["MovieID"]));
			}
		}

		/** Returns the reviews with the highest rating grouped by the movie.
		 * 
		 * Note that the returned objects have an additional field: AverageRating
		 */
		public static ActiveCollection highestRated (int number){
			string query = @"SELECT *, AVG(Rating) AS AverageRating from Reviews
							GROUP BY Reviews.MovieID
							ORDER BY AVG(Rating) DESC
							LIMIT " + number;
			DatabaseConnection db = new DatabaseConnection();
			return db.doMultipleQuery(typeof(Review), query);
		}

		/** Returns the reviews with the most rated grouped by the user.
		 * 
		 * Note that the returned objects have an additional field: numberReviews
		 */
		public static ActiveCollection mostRated (int number){
			string query = @"SELECT *, COUNT(*) AS NumberReviews from Reviews
							GROUP BY Reviews.UserID
							ORDER BY COUNT(*) DESC
							LIMIT " + number;
			DatabaseConnection db = new DatabaseConnection();
			return db.doMultipleQuery(typeof(Review), query);
		}
	}
//	public 
}
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
	/** ActiveRecord class corresponding to Movies table */
	public class Movie : ActiveRecord
	{
		/** Pass-through to base class */
		new public static ActiveCollection all {
			get {
				return all (typeof(Movie));
			}
		}

		/** Pass-through to base class */
		public static Movie find (int id)
		{
			return (Movie)find (typeof(Movie), id);
		}

		/** Pass-through to base class */
		public static ActiveCollection findBy (string value, string field)
		{
			return findBy (typeof(Movie), value, field);
		}

		/** Pass-through to base class */
		new public static Movie first {
			get {
				return (Movie)first (typeof(Movie));
			}
		}

		/** Pass-through to base class */
		public static ActiveCollection top (int number, string field)
		{
			return top (typeof(Movie), number, field);
		}

		/** Pass-through to base class */
		public static ActiveCollection bottom (int number, string field)
		{
			return bottom (typeof(Movie), number, field);

		}

		/** Pass-through to base class */
		new public static Movie last {
			get {
				return (Movie)last (typeof(Movie));
			}
		}

		/** Pass-through to base class */
		new public static object count {
			get {
				return count (typeof(Movie));
			}
		}

		/** Links movie to its reviews */
		public ActiveCollection reviews {
			get {
				return Review.findBy("MovieID", this.attributes["MovieID"].ToString());
			}
		}
	}
}


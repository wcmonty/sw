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
using System.Diagnostics;
using Mono.Data.Sqlite;
using System.Reflection;

namespace Netflix
{
	/** Implements the ActiveRecord design pattern.
	 * 
	 * The ActiveRecord design pattern ties records in a database
	 * to objects.  Each row is an object and each database field
	 * is a attribute. This implementation is based on the ActiveRecord
	 * implementation in Ruby.  The interface is similar, although 
	 * Ruby's dynamic implmentation provides considerably cleaner
	 * implementation for the inherited classes.
	 * 
	 * Static methods return either a single object or a collection
	 * of objects.  For example, to get all of the objects in a table,
	 * one could call TableName.all (assuming that TableName inherited 
	 * from ActiveRecord and implemented the correct methods).
	 * Instance methods are used as operations on those objects.  For
	 * example, to save an object, one could call object.save .
	 * 
	 * We make certain assumptions about the schema, i.e. tablenames are
	 * the plural and classes that inherit ActiveRecord are singular. This 
	 * is brittle in my implementation because I just add a 's' to the end of
	 * the table name.  I assume that things would break fairly fast in the real
	 * world with any of this code, but it could be used as the basis for a 
	 * heartier implementation.
	 * 
	 * With more time, I would add code to check column types and to pull in the
	 * DB schema at load time.  However this is beyond the scope of this project.
	 */
	abstract public class ActiveRecord
	{
		protected Hashtable attributes = new Hashtable (); /*!< Holds the attributes, so we can dynamically assign them */

		/** Default Constructor */
		public ActiveRecord ()
		{
		}

		/** Constructor with Hashtable holding initial parameters */
		public ActiveRecord (Hashtable hash)
		{
			attributes = hash; 
		}

		/** Gets all the records */
		protected static ActiveCollection all (Type t)
		{
			string query = "select * from " + className(t) + "s";
			DatabaseConnection db = new DatabaseConnection();
			return (db.doMultipleQuery(t, query));
		}

		/** Finds by ID */
		protected static ActiveRecord find (Type t, int id)
		{
			string query = "select * from " + className(t) + "s where " + className(t) + "ID = " + id + " limit 1";
			DatabaseConnection db = new DatabaseConnection();
			return (db.doSingleQuery(t, query));
		}

		/** Find by a field in the database */
		protected static ActiveCollection findBy (Type t, string field, string value)
		{
			string query = "select * from " + className(t) + "s where " + field + " = '" + value + "'";
			DatabaseConnection db = new DatabaseConnection();
			return (db.doMultipleQuery(t, query));
		}

		/** Find by the first record in database by ID */
		protected static ActiveRecord first(Type t) {
			string query = "select * from " + className(t) + "s order by " + className(t) + "ID limit 1";
			DatabaseConnection db = new DatabaseConnection();
			return (db.doSingleQuery(t, query));
		}

		/** Find by the last record in the database by ID */
		protected static ActiveRecord last(Type t) {
			string query = "select * from " + className(t) + "s order by " + className(t) + "ID DESC limit 1";
			DatabaseConnection db = new DatabaseConnection();
			return (db.doSingleQuery(t, query));
		}

		/** Finds the top number of records in a table by field */
		protected static ActiveCollection top (Type t, int number, string field)
		{
			string query = "select * from " + className(t) + "s order by " + field + " limit " + number;
			DatabaseConnection db = new DatabaseConnection();
			return (db.doMultipleQuery(t, query));
		}

		/** Returns the bottom number of records in table by field */
		protected static ActiveCollection bottom (Type t, int number, string field)
		{
			string query = "select * from " + className(t) + "s order by " + field + " DESC limit " + number;
			DatabaseConnection db = new DatabaseConnection();
			return (db.doMultipleQuery(t, query));
		}

		/** Returns the count of records in a table */
		protected static object count(Type t) {
			string query = "select COUNT(*) from " + className(t) + "s";
			DatabaseConnection db = new DatabaseConnection();
			return (db.doScalarQuery(t, query));
		}

		/** Converts a type to a className.
		 * 
		 * Returns the last part of the type after.
		 */
		private static string className (Type t)
		{
			string[] fqn = t.ToString().Split('.');
			return fqn[fqn.Length - 1];
		}

		/** Saves an object to the database. */
		public int save {
			get {
				string columns = "";
				string values = "";
				string query = "";
				Type t = this.GetType();

				int count = 0;
				foreach (DictionaryEntry de in attributes) {
					string key = de.Key.ToString();
					string value = de.Value.ToString();
					if (de.Value.GetType() == typeof(System.String)){
						value = "'" + value + "'";
					}
					if (count > 0){
						columns = columns + ", " + key;
						values = values + ", " + value;
					}
					else {
						columns = key;
						values = value;
					}
					count++;
				}
				query = "Insert into " + className(t) + "s (" + columns + ") values (" + values + ")"; 
				DatabaseConnection db = new DatabaseConnection();
				return db.doNonQuery(t, query);;
			}
		}

		/** Getters and setters so we can treat the class like a Hashtable */
		public object this [string key] {
			get { return attributes[key]; }
			set { attributes[key] = value; }
		}

		/** Converts to a string 
		 * @override
		 */
		override public string ToString ()
		{
			string returnString = "";
			foreach (DictionaryEntry de in attributes) {
				returnString = returnString + " " + de.Key  + " => " + de.Value + " "; 
			}
			return returnString;
		}

	}
}


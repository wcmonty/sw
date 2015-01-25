// 
// N-Tier database app: Data Access Tier 
// 
// William Montgomery
// University of Illinois, Chicago 
// CS341, Fall 2013 
// Homework 8 
// 

using System;
using System.Data;
using Mono.Data.Sqlite;
using System.Collections;
using System.Collections.Generic;

namespace Netflix
{
	/**
	 * \brief The Data Access Tier
	 * 
	 * There were two main considerations for the Data Access Tier.
	 *   1. I chose to implement the database connection so that business tier 
	 *      did not have to explicitly open and close the database connection.
	 *      The application does have to close the connection on exit however.
	 *   2. I chose to tie the return query functions to ActiveRecord and ActiveCollection
	 *      objects.  This makes these methods less general, however the objects that are
	 *      generated are fairly abstract and could easily be converted into other types of 
	 *      objects.
	 */
	public class DatabaseConnection
	{
		private static bool checkedOut = false; /*!< Flag if connection is in use */
		private static string connectionInfo = "Data Source=Netflix.sqlite"; /*!< DB Connection configuration */
		private static SqliteConnection connection = new SqliteConnection (connectionInfo); /*!< DB Connection */

		/** Checkout a connection
		 */
		private void checkoutConnection ()
		{
			if (connection.State != System.Data.ConnectionState.Open && !checkedOut) {
				connection.Open();
				Console.WriteLine("Opening connection");
			}
			checkedOut = true;
			return;
		}

		/** Checkin a connection
		 */
		private void checkinConnection ()
		{
			checkedOut = false;
		}

		/** Close a connection
		 */
		public static void closeConnection ()
		{
			connection.Close ();
		}

		/** Perform a DDL query
		 */
		public int doNonQuery (Type t, string query)
		{
			checkoutConnection();
			int rowsModified = 0;
			try {
				SqliteCommand cmd = new SqliteCommand (connection);
				cmd.CommandText = query;
				rowsModified = cmd.ExecuteNonQuery ();
			} catch (Exception ex) {
				Console.WriteLine("Error executing command: '" + query + "'");
				Console.WriteLine(ex);
			}
			checkinConnection ();
			return rowsModified;
		}

		/** Perform a DML query that returns a scalar
		 */
		public object doScalarQuery (Type t, string query)
		{
			object result = null;
			checkoutConnection();
			try {
				SqliteCommand cmd = new SqliteCommand (query, connection);
				result = cmd.ExecuteScalar ();
			} catch (Exception ex) {
				Console.WriteLine("Error executing command: '" + query + "'");
				Console.WriteLine(ex);
			}
			checkinConnection();
			return (result);

		}

		/** Perform a DML query that returns a collection of ActiveRecord objects
		 */
		public ActiveCollection doMultipleQuery (Type t, string query)
		{
			ActiveCollection results = new ActiveCollection();

			checkoutConnection();
			try { 
				SqliteCommand cmd = new SqliteCommand (connection);
				SqliteDataAdapter adapter = new SqliteDataAdapter (cmd);
				DataSet ds = new DataSet ();
				cmd.CommandText = query;
				adapter.Fill (ds);
				DataTable dt = ds.Tables ["TABLE"];

				foreach (DataRow row in dt.Rows) {
					ActiveRecord instance = (ActiveRecord)Activator.CreateInstance(t);
					foreach (DataColumn column in dt.Columns) {
						instance[(string)column.ColumnName] = row[column.ColumnName];
					}
					results.Add(instance);
				}
			}

			catch(Exception ex) {
				Console.WriteLine("Error executing command: '" + query + "'");
				Console.WriteLine(ex);
			}
			checkinConnection();
			return (results);
		}

		/** Performs a DML query that returns a single ActiveRecord object
		 */
		public ActiveRecord doSingleQuery (Type t, string query)
		{
			checkoutConnection();
			ActiveRecord instance = (ActiveRecord)Activator.CreateInstance (t);
			try {
				SqliteCommand cmd = new SqliteCommand (connection);
				SqliteDataAdapter adapter = new SqliteDataAdapter (cmd);
				DataSet ds = new DataSet ();
				cmd.CommandText = query;
				adapter.Fill (ds);
				DataTable dt = ds.Tables ["TABLE"];

				foreach (DataRow row in dt.Rows) {
					foreach (DataColumn column in dt.Columns) {
						instance [(string)column.ColumnName] = row [column.ColumnName];
					}
					break;
				}
			} catch (Exception ex) {
				Console.WriteLine("Error executing command: '" + query + "'");
				Console.WriteLine(ex);
			}				
			checkinConnection();
			return instance;
		}
	}
}


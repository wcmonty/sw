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
	/** Wrapper for collection of ActiveRecord objects */
	public class ActiveCollection : IEnumerable
	{
		List<ActiveRecord> list; /*!< Data structure holding objects */

		/** Default Constructor */
		public ActiveCollection ()
		{
			list = new List<ActiveRecord>();
		}

		/** Implementation of IEnumerable */
		public IEnumerator GetEnumerator(){
			foreach (object o in list) {
                  if (o == null) {
                      break;
                  }
  
                  yield return o;
              }
		}

		/** Adds an item */
		public void Add (ActiveRecord item){
			list.Add(item);
		}

		/** Averages across the list for a specific field 
		 * 
		 * I couldn't figure out how to reduce the list in C#.
		 * With more time, I would try to make this faster.
		 */
		public double avg (string field)
		{
			double sum = 0;
			foreach (ActiveRecord item in list) {
				sum += Convert.ToDouble(item[field]);
			}
			return sum / (double)list.Count;
		}

		/** Returns the maximum for a specific field
		 * 
		 * Again, this is pretty crappy.  With more time I 
		 * would make it more generic.
		 */
		public ActiveRecord max (string field)
		{
			ActiveRecord max = null;
			foreach (ActiveRecord item in list) {

				if (max == null) {
					max = item;
				} else if (Convert.ToDouble (item [field]) > Convert.ToDouble(max[field])){
					max = item;
				}
			}
			return max;
		}

		/** Returns the minimum for a specific field
		 * 
		 * Again, this is pretty crappy.  With more time I 
		 * would make it more generic.
		 */
		public ActiveRecord min (string field)
		{
			ActiveRecord min = null;
			foreach (ActiveRecord item in list) {

				if (min == null) {
					min = item;
				} else if (Convert.ToDouble (item [field]) < Convert.ToDouble(min[field])){
					min = item;
				}
			}
			return min;
		}

		/** Converts to a string
		 * @override
		 */
		override public String ToString ()
		{
			String returnString = "";
			foreach (ActiveRecord item in list) {
				returnString = returnString + item.ToString() + "\n";
			}
			return returnString;
		}

		/** Returns the number of elements in the list */
		public Int32 count {
			get {
				return list.Count;
			}
		}
	}
}


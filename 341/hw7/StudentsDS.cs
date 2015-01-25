// 
// Student-based sorting program 
// 
// William Montgomery
// U. of Illinois, Chicago 
// CS341, Fall 2013 
// Homework 7 
// 
using System;
using System.Collections;

namespace StudentsApp
{
	class StudentsDS : MyISortable, IEnumerable
	{
		private Student[] students;

		public StudentsDS (Student[] s)
		{
			students = s;
		}

		public int Count { 
			get { return students.Length; }
		}

		public object this [int i] {
			get { return students [i]; }
			set { students [i] = (Student)value; }
		}

		public Object Get (int i)
		{
			return students [i];
		}

		public void Set (int i, object o)
		{
			students [i] = (Student)o;
		}

		public IEnumerator GetEnumerator ()
		{
			foreach (object o in students) {
				if (o == null) {
					break;
				}

				yield return o;
			}
		}
	}
}//namespace
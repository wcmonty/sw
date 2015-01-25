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
	public interface MyIComparer
	{
		int Compare(object x, object y);
	}

	interface MyISortable
	{
		int Count { get; }
		object this[int i] { get; set; }

		object Get(int i);
		void Set(int i, Object o);
	}

	class Algorithms
	{

		public static void SelectionSort(MyISortable ds, MyIComparer ic)
		{
			for (int i = 0; i < ds.Count - 1; i++)
			{
				int min = i;

				// select smallest:
				for (int j = i + 1; j < ds.Count; j++)
					if (ic.Compare(ds[j], ds[min]) < 0)
						min = j;

				if (i != min)  // swap:
				{
					object temp;
					temp = ds[i];
					ds[i] = ds[min];
					ds[min] = temp;
				}
			}//for
		}//selectionsort

	}//class
}//namespace
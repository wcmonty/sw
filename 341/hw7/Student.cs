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

	class GPAComparer : MyIComparer
	{
		public int Compare(Object x, Object y)
		{
			Student s1 = (Student)x;
			Student s2 = (Student)y;

			if (s1.GPA < s2.GPA)
				return -1;
			else if (s1.GPA > s2.GPA)
				return +1;
			else
				return 0;
		}
	}

	class NameComparer : MyIComparer
	{
		public int Compare(Object x, Object y)
		{
			Student s1 = (Student)x;
			Student s2 = (Student)y;

			return String.Compare(s1.Name, s2.Name);
		}
	}

	class IDComparer : MyIComparer
	{
		public int Compare(Object x, Object y)
		{
			Student s1 = (Student)x;
			Student s2 = (Student)y;

			if (s1.ID < s2.ID)
				return -1;
			else if (s1.ID > s2.ID)
				return +1;
			else
				return 0;
		}
	}

	class EmailComparer : MyIComparer
	{
		public int Compare(Object x, Object y)
		{
			Student s1 = (Student)x;
			Student s2 = (Student)y;

			return String.Compare(s1.Email, s2.Email);
		}
	}

	class Student
	{
		public string Name;
		public int ID;
		public double GPA;
		public string Email;

		public Student(string Name, int ID, double GPA, string Email)
		{
			this.Name = Name;
			this.ID = ID;
			this.GPA = GPA;
			this.Email = Email;
		}
	}

}//namespace
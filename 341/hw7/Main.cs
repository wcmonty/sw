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
	class Program
	{

		//
		// Main:
		//
		static void Main(string[] args)
		{
			Student[] students = CreateStudents();

			//
			// create a sortable data structure:
			//
			StudentsDS ds = new StudentsDS(students);

			//
			// Sort by GPA:
			//
			Console.WriteLine();
			Algorithms.SelectionSort(ds, new GPAComparer());

			Console.WriteLine("** By GPA **");
			Console.WriteLine();

			//for (int i = 0; i < students.Length; i++)
			foreach(Student s in ds)
				Console.WriteLine("{0}:\t{1:0.00}", s.Name, s.GPA);

			//
			// Sort by NAME:
			//
			Console.WriteLine();
			Algorithms.SelectionSort(ds, new NameComparer());

			Console.WriteLine("** By NAME **");
			Console.WriteLine();

			foreach(Student s in ds)
				Console.WriteLine("{0}", s.Name);

			//
			// Sort by ID:
			//
			Console.WriteLine();
			Algorithms.SelectionSort(ds, new IDComparer());

			Console.WriteLine("** By ID **");
			Console.WriteLine();

			foreach(Student s in ds)
				Console.WriteLine("{0}:\t{1}", s.Name, s.ID);
			
			//
			// Sort by Email:
			//
			Console.WriteLine();
			Algorithms.SelectionSort(ds, new EmailComparer());

			Console.WriteLine("** By Email **");
			Console.WriteLine();

			foreach(Student s in ds)
				Console.WriteLine("{0}:\t{1}", s.Name, s.Email);
			
			//
			// done:
			//
			Console.WriteLine();
			Console.WriteLine();
		}


		// 
		// Create an array containing 5 students:
		//
		static Student[] CreateStudents()
		{
			Student[] students = new Student[5];

			students[0] = new Student("Das, Dibyayan", 23456, 2.23, "ddas@uic.edu");
			students[1] = new Student("Wang, Hong", 99823, 3.92, "hwang@uic.edu");
			students[2] = new Student("Ma, Guixiang", 55525, 4.00, "gma@uic.edu");
			students[3] = new Student("Li, Jia", 45678, 1.01, "jli@uic.edu");
			students[4] = new Student("Bikas, Naser", 12345, 3.20, "abikas@uic.edu");

			return students;
		}

	}//class
}//namespace
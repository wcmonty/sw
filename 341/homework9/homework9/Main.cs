/*!
 * William Montgomery 
 * CS 341 
 * Homework 9
 * Asian Options Stock Pricing
 */

using System;
using Gtk;

namespace homework9
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			Application.Init ();
			MainWindow win = new MainWindow ();
			win.Show ();
			Application.Run ();
		}
	}
}

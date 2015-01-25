/*!
 * William Montgomery 
 * CS 341 
 * Homework 9
 * Asian Options Stock Pricing
 */

using System;
using System.Threading;
using System.Threading.Tasks;
using Gtk;
using homework9;

public partial class MainWindow: Gtk.Window
{	
	double initial = 30.0;
	double exercise = 30.0;
	double up = 1.40;
	double down = 0.80;
	double interest = 1.08;
	long periods = 30;
	long sims = 500;
	object lockObject = new object();


	public MainWindow (): base (Gtk.WindowType.Toplevel)
	{
		Build ();
		this.entryInitialPrice.Text = this.initial.ToString();
		this.entryExercisePrice.Text = this.exercise.ToString();
		this.entryUpperBound.Text = this.up.ToString();
		this.entryLowerBound.Text = this.down.ToString();
		this.entryInterestRate.Text = this.interest.ToString();
		this.entryTimePeriod.Text = this.periods.ToString();
		this.entrySimulationRuns.Text = this.sims.ToString();
	}
	
	protected void OnDeleteEvent (object sender, DeleteEventArgs a)
	{
		Application.Quit ();
		a.RetVal = true;
	}

	protected void OnEntryInitialPriceChanged (object sender, EventArgs e)
	{
		Double.TryParse (this.entryInitialPrice.Text, out this.initial);
	}

	protected void OnEntryExercisePriceChanged (object sender, EventArgs e)
	{
		Double.TryParse (this.entryExercisePrice.Text, out this.exercise);
	}

	protected void OnEntryUpperBoundChanged (object sender, EventArgs e)
	{
		Double.TryParse (this.entryUpperBound.Text, out this.up);
	}

	protected void OnEntryLowerBoundChanged (object sender, EventArgs e)
	{
		Double.TryParse (this.entryLowerBound.Text, out this.down);
	}

	protected void OnEntryInterestRateChanged (object sender, EventArgs e)
	{
		Double.TryParse (this.entryInterestRate.Text, out this.interest);
	}

	protected void OnEntryTimePeriodChanged (object sender, EventArgs e)
	{
		this.periods = Convert.ToInt64 (this.entryTimePeriod.Text);
	}

	protected void OnEntrySimulationRunsChanged (object sender, EventArgs e)
	{
		this.sims = Convert.ToInt64 (this.entrySimulationRuns.Text);
	}


	protected void OnButtonStartClicked (object sender, EventArgs e)
	{
		// The version of MonoDevelop for my system does not
		// support async/await.

		AsianOptionsPricing pricing = new AsianOptionsPricing (initial, exercise, up, down, interest, periods, sims);
		Task t1 = new Task(() => 
		{
			pricing.run ();
		});

		Task t2 = t1.ContinueWith ( (prevtask) =>
		{
			Gtk.Application.Invoke( (_sender, _e) =>
			{
				double elapsedTimeInSecs = (pricing.stop - pricing.start) / 1000.0;
				string buffer = "** Simulation complete:\n" +
					"   Sims: " + pricing.sims + "\n" +
					"   Price: " + pricing.price + "\n" + 
					"   Time:  " + elapsedTimeInSecs + " secs\n";

				lock (lockObject) {
					this.textviewOutput.Buffer.Text = this.textviewOutput.Buffer.Text + buffer + "\n";
				}
			});
		});

		t1.Start();
	}

}

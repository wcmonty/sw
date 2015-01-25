/*!
 * William Montgomery 
 * CS 341 
 * Homework 9
 * Asian Options Stock Pricing
 */

using System;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace homework9
{
	public class AsianOptionsPricing
	{
		double initial;
		double exercise;
		double up;
		double down;
		double interest;
		long periods;
		public long sims;
		public double price;
		public int start;
		public int stop;
		private static Random _global = new Random();

		public AsianOptionsPricing (double initial, 
		                            double exercise, 
		                            double up, 
		                            double down, 
		                            double interest, 
		                            long periods, 
		                            long sims)
		{
			this.initial = initial;
			this.exercise = exercise;
			this.up = up;
			this.down = down;
			this.interest = interest;
			this.periods = periods;
			this.sims = sims;
		}

		[ThreadStatic] 
	    private static Random _local;

	    public static int Next() 
	    { 
	        Random inst = _local; 
	        if (inst == null) 
	        { 
	            int seed; 
	            lock (_global) seed = _global.Next(); 
	            _local = inst = new Random(seed); 
	        } 
	        return inst.Next(); 
	    } 

		public AsianOptionsPricing run()
		{
			start = System.Environment.TickCount;
			// Risk-neutral probabilities:
			double piup = (interest - down) / (up - down);
			double pidown = 1 - piup;

			double sum = 0.0;

			object lockObject = new object();

			// Run simulations:
			Parallel.For (0, (int)sims, 
			              () => 0.0d,
			(x, loopState, partialResult) => {
				// Create a new random generator for each thread
				// Random is not thread safe

				// Generate one path:
				double sumPricePath = initial;
				double previous = initial;
				double next;

				for (int i = 1; i <= periods; i++)
				{
					double rn;

					// The Random class is not threadsafe and I was 
					// not getting any improvement to the code when I was locking
					// it.
//					lock(lockObject2) {
//						rn = rand.NextDouble();
//					}

					// http://blogs.msdn.com/b/pfxteam/archive/2009/02/19/9434171.aspx
					// suggests the approach of the Singleton class as implemented in
					// RandomGenerator.  This class 
					rn = (double)RandomGenerator.Next(); 

					if (rn > pidown){
						next = previous * up;
					}
					else {
						next = previous * down;
					}

					sumPricePath += next;
					previous = next;
				}

				double priceAverage = sumPricePath / (periods + 1);
				return partialResult + Math.Max(priceAverage - exercise, 0);
			},

			// Aggregate the sums
			(localPartialSum) => {
				lock(lockObject){
					sum += localPartialSum;
				}
			}
			);

			// Return average across all simulations:
			price = (sum / Math.Pow(interest, periods)) / sims;
			stop = System.Environment.TickCount;
			return this;
		}
	}
}


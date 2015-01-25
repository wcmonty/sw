/*!
 * William Montgomery 
 * CS 341 
 * Homework 9
 * Asian Options Stock Pricing
 */

using System;

namespace homework9
{
	public static class RandomGenerator
	{ 
	    private static Random global = new Random(); 
	    [ThreadStatic] 
	    private static Random local;

	    public static double Next() 
	    { 
	        Random inst = local; 
	        if (inst == null) 
	        { 
	            int seed; 
	            lock (global) seed = global.Next(); 
	            local = inst = new Random(seed); 
	        } 
	        return inst.NextDouble(); 
	    } 
	}
}


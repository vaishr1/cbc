package com.cbc.additional;
import java.util.Random;
public class RandomNumber {
	
		public int generateRandomNumber(int start, int end ){
			//System.out.println("hi this is ransom");
	        Random random = new Random();
	        long fraction = (long) ((end - start + 1 ) * random.nextDouble());
	        return ((int)(fraction + start));
	    }
}

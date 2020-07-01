package cn.bdqn.util;


import java.util.Random;
import java.util.UUID;

import org.junit.Test;



public class TooSiz {
	
	public static String Rodem(){
		String string = UUID.randomUUID().toString().replace("-", "");
		return string;
	}

}

package com.nexr.workerbee.util;

import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;

public class SystemUtils {
	
	public static void main(String[] args) {
		Map<String,String> map = System.getenv();
		for (String key : map.keySet()){
			System.out.println(key+"\t"+map.get(key));
		}
		Properties props = System.getProperties();
		
		for(Object key : props.keySet()){
			System.out.println(key.toString()+"\t"+props.getProperty(key.toString()));
		}
	}
}

package com.ape.common;

public class WeGoSystemUtil {

	public static String throwIfBlank(String message, String target) {
		
		if (target == null || (target=target.trim()).length() == 0) {
			throw new WeGoSystemExeption(message);
		}
		return target;
	}
	
	public static String $(String message, String target) {
		return throwIfBlank(message, target);
	}
}

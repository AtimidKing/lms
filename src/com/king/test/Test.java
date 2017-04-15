package com.king.test;


import java.text.SimpleDateFormat;

public class Test {

	public static void main(String[] args) {
		java.util.Date date=new java.util.Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		System.out.println(sdf.format(date));
	}



}

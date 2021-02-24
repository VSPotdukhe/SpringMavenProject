package com.ecomm.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class GeneralTest
{
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		
		myContext.scan("com.ecomm");
		
		myContext.refresh();
		
	}
}

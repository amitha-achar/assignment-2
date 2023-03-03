package com.caltech.controller;

public class LoginController {
	
	public boolean isValidUser(String user, String pwd)
	{
		boolean returntype;
		System.out.println("I am validating user");
		if(user.trim().equalsIgnoreCase("admin") && pwd.trim().equalsIgnoreCase("admin"))
		{
		returntype = true;
		}
		else 
		{
		  returntype = false;
		}
		System.out.println(returntype);
		return returntype;
	}	
}

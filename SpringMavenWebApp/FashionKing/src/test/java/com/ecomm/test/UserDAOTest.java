package com.ecomm.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest
{
	static UserDAO userDAO;
		
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext myContext=new AnnotationConfigApplicationContext();
		myContext.scan("com.ecomm");
		myContext.refresh();
		
		userDAO=(UserDAO)myContext.getBean("userDAO");
	}	
	
	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		user.setUsername("Rohan");
		user.setPassword("$2a$04$BKCsZhfJopscPHBSw0CQ9eLHuQbk0F6BSwcVoIbLpnX.plwU.QOFO");
		user.setCustomerName("RohanKumar");
		user.setEnabled(true);
		user.setEmailId("rohankumar@gmail.com");
		user.setAddress("Kanpur");
		user.setMobileNo("9847829912");
		user.setRole("ROLE_USER");
		
		assertTrue("Problem in Inserting UserDetail :",userDAO.registerUser(user));	
	}

}

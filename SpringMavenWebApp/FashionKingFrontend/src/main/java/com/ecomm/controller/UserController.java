package com.ecomm.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

@Controller
public class UserController 
{
	@Autowired
	UserDAO userDAO;

	@RequestMapping(value="/registerUser",method=RequestMethod.POST)
	public String registerUser(@RequestParam("username")String username, @RequestParam("password")String password,@RequestParam("customerName")String customerName,@RequestParam("emailId")String emailId,@RequestParam("mobileNo")String mobileNo,@RequestParam("address")String address,Model m)
	{
		System.out.println("Registered User Method");
		UserDetail user=new UserDetail();
		user.setUsername(username);
		user.setPassword(password);
		user.setCustomerName(customerName);
		user.setEnabled(true);
		user.setEmailId(emailId);
		user.setAddress(address);
		user.setMobileNo(mobileNo);
		user.setRole("ROLE_USER");		
		
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();  
		String encodedPassword=bCryptPasswordEncoder.encode(user.getPassword());
		user.setPassword(encodedPassword);
		
		userDAO.registerUser(user);
		return "RegisterSuccess";

	}

	@RequestMapping(value="/login_success")
	public String successLoggedIn(HttpSession session)
	{
		String page="";
		
		SecurityContext sContext=SecurityContextHolder.getContext();
		Authentication authentication=sContext.getAuthentication();
		
		String username=authentication.getName();
		session.setAttribute("username", username);
		
		Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role", role.getAuthority());
			
			if(role.getAuthority().equals("ROLE_ADMIN"))
				page="AdminHome";
			else
				page="UserHome";			
		}		
		return page;
	}
	
	@RequestMapping(value="/logout")
	public String loggedOut()
	{
		System.out.println("Logging out");
		UserDetail user=new UserDetail();
		user.setRole(null);
		return "Logout";	
	}
}

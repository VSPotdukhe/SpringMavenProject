package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController
{
	@RequestMapping("/")
	public String showHomePage(Model m)
	{
		System.out.println("-------It is in My Controller - Home Page");
		m.addAttribute("pagename", " - Home");
		return "Home";
	}
	
	@RequestMapping("/login")
	public String showLoginPage(Model m)
	{
		System.out.println("-------It is in My Controller - Login Page");
		m.addAttribute("pagename", " - Sign In");
		return "Login";
	}
	
	@RequestMapping("/register")
	public String showRegisterPage(Model m)
	{
		System.out.println("-------It is in My Controller - Register Page");
		m.addAttribute("pagename", " - Sign Up");
		return "Register";
	}
	
	@RequestMapping("/userpage")
	public String showUserPage(Model m)
	{
		System.out.println("-------It is in My Controller - User Page");
		m.addAttribute("pagename", " - User Home");
		return "UserHome";
	}	
	
	@RequestMapping("/adminpage")
	public String showAdminPage(Model m)
	{
		System.out.println("-------It is in My Controller - Admin Page");
		m.addAttribute("pagename", " - Home");
		return "AdminHome";
	}

	@RequestMapping("/aboutus")
	public String showAboutUsPage(Model m)
	{
		System.out.println("-------It is in My Controller - About Us Page");
		m.addAttribute("pagename", " - About Us");
		return "AboutUs";
	}
	
	@RequestMapping("/contactus")
	public String showContactUsPage(Model m)
	{
		System.out.println("-------It is in My Controller - Contact Us Page");
		m.addAttribute("pagename", " - Contact us");
		return "ContactUs";
	}

	@RequestMapping("/editCategory")
	public String editCategoryPage(Model m)
	{
		System.out.println("-------It is in Edit Category Controller Page");
		m.addAttribute("pagename", " - Edit Category");
		return "UpdateCategory";
	}
	
	@RequestMapping("/editProduct")
	public String editProductPage(Model m)
	{
		System.out.println("-------It is in Edit Product Controller Page");
		m.addAttribute("pagename", " - Edit Product");
		return "UpdateProduct";
	}
	
	@RequestMapping("/editSupplier")
	public String editSupplierPage(Model m)
	{
		System.out.println("-------It is in Edit Supplier Controller Page");
		m.addAttribute("pagename", " - Edit Supplier");
		return "UpdateSupplier";
	}	
}

package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;

@Controller
public class CartController
{
	@Autowired
	CartDAO cartDAO;

	@RequestMapping(value="/viewCart",method=RequestMethod.POST)
	public String insertCart(@RequestParam("username")String username,@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("quantity")int quantity,@RequestParam("totalAmount")int totalAmount,@RequestParam("dateTime")String dateTime,@RequestParam("paid")String paid,Model m)
	{
		Cart cart=new Cart();
		
		cart.setUsername(username);
		cart.setProductId(productId);
		cart.setProductName(productName);
		cart.setQuantity(quantity);
		cart.setDateTime(dateTime);
		cart.setPaid(paid);
		cart.setTotalAmount(totalAmount);
		
		cartDAO.addCart(cart);	
		
		List<Cart> cartList=cartDAO.retrieveCarts();
		m.addAttribute("cartList", cartList);
		return "ViewCart";
	}
	
	@RequestMapping("/deleteCart/{cartId}")
	public String deleteCart(@PathVariable("cartId") int cartId, Model m)
	{  
		System.out.println("I am in delete cart controller");
		Cart cart=cartDAO.getCart(cartId);
		cartDAO.deleteCart(cart);
		List<Cart> cartList=cartDAO.retrieveCarts();
		m.addAttribute("cartList", cartList);
		System.out.println("Cart List updated");
		return "ViewCart";
	}
}

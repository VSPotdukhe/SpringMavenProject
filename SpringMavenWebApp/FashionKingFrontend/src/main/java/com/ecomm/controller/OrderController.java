package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.OrderDAO;
import com.ecomm.model.OrderDetail;

@Controller
public class OrderController
{
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping(value="/orderPlace",method=RequestMethod.POST)
	public String orderPlace(@RequestParam("username")String username,@RequestParam("cartId")int cartId,@RequestParam("productId")int productId,@RequestParam("productName")String productName,@RequestParam("quantity")int quantity,@RequestParam("totalAmount")int totalAmount,@RequestParam("orderDate")String orderDate,@RequestParam("paid")String paid,Model m)
	{
		OrderDetail order=new OrderDetail();	
		order.setUsername(username);
		order.setCartId(cartId);
		order.setProductId(productId);
		order.setProductName(productName);
		order.setQuantity(quantity);
		order.setTotalAmount(totalAmount);
		order.setOrderDate(orderDate);
		order.setPaid(paid);		
		
		orderDAO.addOrder(order);	
		
		List<OrderDetail> orderList=orderDAO.retrieveOrderDetails();
		m.addAttribute("orderList", orderList);
		return "OrderPlace";
	}
}

package com.ecomm.dao;

import java.util.List;

import com.ecomm.model.OrderDetail;

public interface OrderDAO 
{
	public boolean addOrder(OrderDetail order);
	public boolean deleteOrder(OrderDetail order);
	public boolean updateOrder(OrderDetail order);
	public OrderDetail getOrder(int orderId);
	public List<OrderDetail> retrieveOrderDetails();
}
package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.OrderDetail;

@Repository("orderDAO")
@Transactional
public class OrderDAOImpl implements OrderDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addOrder(OrderDetail order) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(order);
			System.out.println("OrderAdded");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);	
			return false;
		}
	}

	@Override
	public boolean deleteOrder(OrderDetail order) {
		try
		{
			sessionFactory.getCurrentSession().delete(order);
			System.out.println("MySQL updated after deleting order");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	}

	@Override
	public boolean updateOrder(OrderDetail order) {
		try
		{
			sessionFactory.getCurrentSession().update(order);
			System.out.println("Order Updated");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	}
	
	@Override
	public OrderDetail getOrder(int orderId) 
	{
		Session session=sessionFactory.openSession();
		OrderDetail order=(OrderDetail)session.get(OrderDetail.class, orderId);
		session.close();
		return order;
	}
	
	@Override
	public List<OrderDetail> retrieveOrderDetails() 
	{
		Session session=sessionFactory.openSession();
		List<OrderDetail> orderList=(List<OrderDetail>)session.createQuery("from OrderDetail").list();
		session.close();
		return orderList;
	}
}
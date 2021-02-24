package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Cart;

@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addCart(Cart cart) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(cart);
			System.out.println("CartAdded");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);	
			return false;
		}
	}

	@Override
	public boolean deleteCart(Cart cart) {
		try
		{
			sessionFactory.getCurrentSession().delete(cart);
			System.out.println("MySQL updated after deleting cart");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	}

	@Override
	public boolean updateCart(Cart cart) {
		try
		{
			sessionFactory.getCurrentSession().update(cart);
			System.out.println("Cart Updated");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	}
	
	@Override
	public Cart getCart(int cartId) 
	{
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		session.close();
		return cart;
	}	
	
	@Override
	public List<Cart> retrieveCarts() 
	{
		Session session=sessionFactory.openSession();
		List<Cart> cartList=(List<Cart>)session.createQuery("from Cart").list();
		session.close();
		return cartList;
	}	
}
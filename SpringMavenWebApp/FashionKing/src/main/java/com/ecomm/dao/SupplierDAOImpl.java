package com.ecomm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.model.Supplier;

@Repository("supplierDAO")
@Transactional
public class SupplierDAOImpl implements SupplierDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addSupplier(Supplier supplier) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(supplier);
			System.out.println("SupplierAdded");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);	
			return false;
		}
	}

	@Override
	public boolean deleteSupplier(Supplier supplier) {
		try
		{
			sessionFactory.getCurrentSession().delete(supplier);
			System.out.println("MySQL updated after deleting supplier");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	}

	@Override
	public boolean updateSupplier(Supplier supplier) {
		try
		{
			sessionFactory.getCurrentSession().update(supplier);
			System.out.println("Supplier Updated");
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised:"+e);
			return false;
		}
	}
	
	@Override
	public Supplier getSupplier(int supplierId) 
	{
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class, supplierId);
		session.close();
		return supplier;
	}
	
	@Override
	public List<Supplier> retrieveSuppliers() 
	{
		Session session=sessionFactory.openSession();
		List<Supplier> supplierList=(List<Supplier>)session.createQuery("from Supplier").list();
		session.close();
		return supplierList;
	}
}
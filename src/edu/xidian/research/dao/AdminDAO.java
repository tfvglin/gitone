package edu.xidian.research.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.xidian.research.vo.Admin;

public class AdminDAO extends SuperDAO{
	
	public boolean adminLogin(Admin ad)
	{
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		String hql="from Admin where adminname=:adminname and adminpassword=:adminpassword";
		try
		{
			Query query = session.createQuery(hql);
			query.setString("adminname", ad.getAdminname());
			query.setString("adminpassword", ad.getAdminpassword());
			Admin admin = (Admin)query.uniqueResult();
			tx.commit();
			if(admin!=null)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch(Exception ex)
		{
				ex.printStackTrace();
				tx.rollback();
				return false;
		}
		
	}
	
	public boolean addAdmin(Admin ad)
	{
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		
		try
		{
			session.save(ad);
			tx.commit();
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			tx.rollback();
			return false;
		}
	}

}

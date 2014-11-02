package edu.xidian.research.dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;





import edu.xidian.research.vo.Students;

public class StudentsDAO extends SuperDAO  {
	private Connection conn = null;
	 
	private ResultSet rs = null;
	
	public boolean stucheck(Students stu)
	{
		PreparedStatement stmt = null;
		
		String name = stu.getStuname();
		String num = stu.getStunum();
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/question?useUnicode=true&characterEncoding=UTF-8","root","0510");
			
			stmt = conn.prepareStatement("select * from answer where stuname=? and stunum =?");
			stmt.setString(1, name);
			stmt.setString(2, num);
			
			rs=stmt.executeQuery();
			
			//System.out.println(rs);
			if(rs.next())
			{
				return false;
			}
			else
			{
				return true;
			}
		}
		
		catch(Exception ex)
		{
			ex.printStackTrace();
			
			return false;
		}
	
	}
	
	
	public boolean stuLogin(Students stu)
	{
		//SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		try
		{
			//System.out.println(stu.getStuname()+stu.getStunum());
			String hql = "from Students t where t.stuname=:stuname and  t.stunum=:stunum ";
			Query query = session.createQuery(hql);
			query.setParameter("stuname", stu.getStuname());
			query.setParameter("stunum", stu.getStunum());
			Students s = (Students)query.uniqueResult();
			tx.commit();
			
			if(s!=null)
			{  
				
			    /*int id=s.getID();
			    
				hql="update Students where ID=id set check=1 ";
				query = session.createQuery(hql);
				query.executeUpdate();*/
				
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
	
	
	
	public boolean list()
	{
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Students> stus = new ArrayList<Students>();
	
		  try{

			  String hql = "from Students t where t.stunum=123 ";
			  Query query = session.createQuery(hql);
			 /* List<Students> list = query.list();
			  Iterator<Students> it = list.iterator();
			  while(it.hasNext())
			  {
				  Students s = it.next();
				  System.out.println(s.getStuname());
				  stus.add(s);
			  }*/
				Students s = (Students)query.uniqueResult();
				
				tx.commit();
				if(s!=null)
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
	}




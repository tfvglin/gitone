package edu.xidian.research.dao;

import org.hibernate.SessionFactory;

public class SuperDAO {
	
	protected static SessionFactory sessionFactory;
	
	static
	{
		sessionFactory = Conn.getSessionFactory();
	}

}

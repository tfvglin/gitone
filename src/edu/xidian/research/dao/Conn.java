package edu.xidian.research.dao;



import java.sql.Connection;
import java.sql.DriverManager;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class Conn {
	
	
		public static SessionFactory getSessionFactory()
		{
			
			SessionFactory sf = null ;
			try
			{
				Configuration cf = new AnnotationConfiguration().configure();
				sf = cf.buildSessionFactory();
				return sf;
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
				return sf;
			}
		}

}

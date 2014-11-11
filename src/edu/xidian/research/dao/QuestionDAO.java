package edu.xidian.research.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import edu.xidian.research.vo.Students;



public class QuestionDAO {
	
	private Connection conn = null;
	 
	private ResultSet rs = null;
	
	public boolean add(Students stu,String phone,List<String> sel_list,List<String> dia_list,List<String> other_list)
	{
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		PreparedStatement stmt = null;
		int result;
		int i=6;
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/question?useUnicode=true&characterEncoding=UTF-8","root","zsb@2014");
			
			stmt = conn.prepareStatement("insert into answer (ID,stuname,stunum,phone,time,q1,q2,q3,q4_1,q4_2,q4_3,q4_4,q4_5,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q1other,q2other,q3other,q4_1other,q4_2other,q4_3other,q4_4other,q4_5other,q5other,q6other,q7other,q8other,q9other,q10other,q11other,q12other,q13other,q14other,q17other,q18other,q19other,q20other,q21other) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			//String sql="insert into answer ('ID','stuname','stunum') values (1,'ажи╜','123')";
			//String sql="insert into answer (ID,stuname,stunum) values (3,?,?)";
			stmt.setInt(1, getMaxID()+1);
			stmt.setString(2, stu.getStuname());
			stmt.setString(3, stu.getStunum());
			stmt.setString(4,phone);
			stmt.setString(5, df.format(date));
			for(String s : sel_list)
			{
				stmt.setString(i++, s);
			}
			for(String s:dia_list )
			{
				stmt.setString(i++, s);
			}
			for(String s:other_list )
			{
				stmt.setString(i++, s);
			}
			result=stmt.executeUpdate();
			return true;
		}
		catch(SQLException ex)
		{
			
			System.out.print(ex.getMessage());
			return false;
		}

		
	}
	
	public int getMaxID()
	{
		Statement stmt = null;
		ResultSet result=null;
		int ansID = 0;
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/question?useUnicode=true&characterEncoding=UTF-8","root","zsb@2014");
			
			stmt = conn.createStatement();
			//String sql="insert into answer ('ID','stuname','stunum') values (1,'ажи╜','123')";
			String sql="select max(ID) from answer";
	
			result=stmt.executeQuery(sql);
			result.next();
			ansID=result.getInt(1);
			return ansID;
		}
		catch(SQLException ex)
		{
			
			System.out.print(ex.getMessage());
			return ansID;
		}

	}
		
	public ResultSet getAnswer()
	{
		Statement stmt = null;
		ResultSet result=null;
	
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/question?useUnicode=true&characterEncoding=UTF-8","root","zsb@2014");
			
			stmt = conn.createStatement();
			
			String sql="select * from answer";
			result = stmt.executeQuery(sql);
			return result;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return result;
		}
	}
	
	public int getAnswerCount()
	{
		Statement stmt = null;
		ResultSet result=null;
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/question?useUnicode=true&characterEncoding=UTF-8","root","0510");
			
			stmt = conn.createStatement();
			String sql = "select count(*) record from answer";
			result  = stmt.executeQuery(sql);
			if(result.next())
			{
			return result.getInt("record");
			}
			else
			{
				return 0;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return 0;
			
		}
	}
	
	}

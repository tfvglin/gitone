package edu.xidian.research.dao;

import junit.framework.Assert;
import junit.framework.TestCase;
import edu.xidian.research.vo.Students;

public class TestStudentsDAO extends TestCase{
	
	private StudentsDAO stu_dao = new StudentsDAO();
	
	public void testStuLogin()
	{
		Students stu= new Students();
		stu.setStuname("ºîÙ»");
		stu.setStunum("321");
		//stu.setCheck(1);
		Assert.assertEquals(true, stu_dao.stuLogin(stu));
	}

	public void testStu()
	{
		Assert.assertEquals(true, stu_dao.list());
		
	}
	
	public void teststucheck()
	{
		Students stu= new Students();
		stu.setStuname("ÁÖÉ­");
		stu.setStunum("123");
		//stu.setCheck(1);
		Assert.assertEquals(true, stu_dao.stucheck(stu));
	}
}

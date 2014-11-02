package edu.xidian.research.dao;

import junit.framework.TestCase;

public class TestQuestionDAO extends TestCase{
	
	
	public void testgetMaxID()
	{
		QuestionDAO q_dao = new QuestionDAO();
		
		int a=q_dao.getMaxID();
		System.out.print(a);
	}

}

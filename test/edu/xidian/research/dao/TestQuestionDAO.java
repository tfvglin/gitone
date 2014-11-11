package edu.xidian.research.dao;

import junit.framework.TestCase;

public class TestQuestionDAO extends TestCase{
	QuestionDAO q_dao = new QuestionDAO();
	
	public void testgetMaxID()
	{
		
		
		int a=q_dao.getMaxID();
		System.out.print(a);
	}
	
	public void testgetAnswerCount()
	{
		System.out.print(q_dao.getAnswerCount());
	}

}

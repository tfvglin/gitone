package edu.xidian.research.action;

import java.util.ArrayList;
import java.util.List;

import edu.xidian.research.dao.QuestionDAO;
import edu.xidian.research.vo.Students;



public class QuestionActionOver extends SuperAction{
	
	
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String addanswer()
	{
		//Answers ans = new Answers();
		
		 QuestionDAO q_dao = new QuestionDAO();
		Students stu = new Students();
		List<String> sel_anslist = new ArrayList();
		List<String> dia_anslist = new ArrayList();
		List<String> other_anslist = new ArrayList();
		String phone=null;
		String[] a = request.getParameterValues("question4.1");
		phone=request.getParameter("phone");
		
	
	
		stu.setStuname(request.getParameter("stuname"));
		stu.setStunum(request.getParameter("stunum"));
		
		
		sel_anslist.add(request.getParameter("question1"));
			if(sel_anslist.get(0)==null)
			{
				this.addActionMessage("����д��1��");
				return INPUT;
			}
		sel_anslist.add(request.getParameter("question2"));
		if(sel_anslist.get(1)==null)
		{
			this.addActionMessage("����д��2��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question3"));
		if(sel_anslist.get(2)==null)
		{
			this.addActionMessage("����д��3��");
			return INPUT;
		}
		sel_anslist.add(tool(request.getParameterValues("question4.1")));
		sel_anslist.add(tool(request.getParameterValues("question4.2")));
		sel_anslist.add(tool(request.getParameterValues("question4.3")));
    	sel_anslist.add(tool(request.getParameterValues("question4.4")));
		sel_anslist.add(tool(request.getParameterValues("question4.5")));
		sel_anslist.add(request.getParameter("question5"));
		if(sel_anslist.get(8)==null)
		{
			this.addActionMessage("����д��5��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question6"));
		if(sel_anslist.get(9)==null)
		{
			this.addActionMessage("����д��6��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question7"));
		if(sel_anslist.get(10)==null)
		{
			this.addActionMessage("����д��7��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question8"));
		if(sel_anslist.get(11)==null)
		{
			this.addActionMessage("����д��8��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question9"));
		if(sel_anslist.get(12)==null)
		{
			this.addActionMessage("����д��9��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question10"));
		if(sel_anslist.get(13)==null)
		{
			this.addActionMessage("����д��10��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question11"));
		if(sel_anslist.get(14)==null)
		{
			this.addActionMessage("����д��11��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question12"));
		if(sel_anslist.get(15)==null)
		{
			this.addActionMessage("����д��12��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question13"));
		if(sel_anslist.get(16)==null)
		{
			this.addActionMessage("����д��13��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question14"));
		if(sel_anslist.get(17)==null)
		{
			this.addActionMessage("����д��14��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question15"));
		if(sel_anslist.get(18)==null)
		{
			this.addActionMessage("����д��15��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question16"));
		if(sel_anslist.get(19)==null)
		{
			this.addActionMessage("����д��16��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question17"));
		if(sel_anslist.get(20)==null)
		{
			this.addActionMessage("����д��17��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question18"));
		if(sel_anslist.get(21)==null)
		{
			this.addActionMessage("����д��18��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question19"));
		if(sel_anslist.get(22)==null)
		{
			this.addActionMessage("����д��19��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question20"));
		if(sel_anslist.get(23)==null)
		{
			this.addActionMessage("����д��20��");
			return INPUT;
		}
		sel_anslist.add(request.getParameter("question21"));
		if(sel_anslist.get(24)==null)
		{
			this.addActionMessage("����д��21��");
			return INPUT;
		}
		
		dia_anslist.add(request.getParameter("question22"));
		if(sel_anslist.get(25)==null)
		{
			this.addActionMessage("����д��22��");
			return INPUT;
		}
		dia_anslist.add(request.getParameter("question23"));
		if(sel_anslist.get(26)==null)
		{
			this.addActionMessage("����д��23��");
			return INPUT;
		}
		dia_anslist.add(request.getParameter("question24"));
		if(sel_anslist.get(27)==null)
		{
			this.addActionMessage("����д��24��");
			return INPUT;
		}
		dia_anslist.add(request.getParameter("question25"));
		if(sel_anslist.get(28)==null)
		{
			this.addActionMessage("����д��25��");
			return INPUT;
		}
		
		if(q_dao.add(stu,phone,sel_anslist,dia_anslist,other_anslist))
		{
			return SUCCESS;

		
		}
		else
		{
			return INPUT;
		}
		
	}
	
	public String tool(String[] qustr)
	{
		if(!(qustr==null))
		{
			String str=null;
			StringBuffer sb = new StringBuffer();
			for(int i=0; i<qustr.length;i++)
			{
			
				sb. append(qustr[i]);
			}
			str=sb.toString();
			return str;
		}
		else
		{
			return null;
		}
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		super.validate();
	}
	

}

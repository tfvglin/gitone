package edu.xidian.research.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import edu.xidian.research.dao.QuestionDAO;
import edu.xidian.research.vo.Students;



public class QuestionAction extends SuperAction{
	
	
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String addanswer()
	{
		
		//String test = (String) request.getSession().getAttribute("stuname");
		
		//System.out.println(test);
		
		QuestionDAO q_dao = new QuestionDAO();
		Students stu = new Students();
		List<String> sel_anslist = new ArrayList<String>();
		List<String> dia_anslist = new ArrayList<String>();
		List<String> other_anslist = new ArrayList<String>();
		String phone=null;
		String[] ans24=new String[5];
		String str = new String();
		
		for(int i=0;i<=4;i++)
		{
			str=request.getParameter("question24_"+i);
			if(!(str.equals(null)||str.equals("")) )
			{
				ans24[i]=str;
			}
		}
		
		
	//	System.out.println(Arrays.toString(ans24));
	//	System.out.println(Arrays.toString(request.getParameterValues("question4.1")));
		phone=request.getParameter("phone");
		
	
	
		
		stu.setStuname(request.getParameter("stuname"));
		stu.setStunum(request.getParameter("stunum"));
		
		
		for(int i=1;i<=21;i++)
		{
			
				if(i==4)
				{
					for(int j=1;j<=5;j++)
					{
						str=tool(request.getParameterValues("question4."+j));
						sel_anslist.add(str);						
					}
				}
				else
				{
					str=request.getParameter("question"+i);
					
					sel_anslist.add(str);
					}
		}

		dia_anslist.add(request.getParameter("question22"));

		dia_anslist.add(request.getParameter("question23"));
		
		
		dia_anslist.add(tool(ans24));

		dia_anslist.add(request.getParameter("question25"));
		
		
		for(int i=1;i<=21;i++)
		{
			if(i!=15 && i!=16)
			{
				if(i==4)
				{
					for(int j=1;j<=5;j++)
					{
						str=request.getParameter("q4_"+j+"other");
						
						if(str.equals("Çë×¢Ã÷..."))
						{
							other_anslist.add("");
						}	
						else
						{
							other_anslist.add(str);
						}
						
					}
				}
				else
				{
					str=request.getParameter("q"+i+"other");
					if(str.equals("Çë×¢Ã÷..."))
						other_anslist.add("");
						
					else
						other_anslist.add(str);
				}
			}
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
			int i=0;
			for(i=0; i<qustr.length-1;i++)
			{
				if(!(qustr[i]==null))
				sb. append(qustr[i]+",");
			}
			if(!(qustr[i]==null))
			sb.append(qustr[i]);
			str=sb.toString();
			return str;
		}
		else
		{
			return "";
		}
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		super.validate();
	}
	

}

package edu.xidian.research.action;

import com.opensymphony.xwork2.ModelDriven;

import edu.xidian.research.dao.StudentsDAO;
import edu.xidian.research.vo.Students;

public class StudentsAction extends SuperAction implements ModelDriven<Students>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Students stu = new Students();
	
	public String login()
	{
		
		StudentsDAO stu_dao = new StudentsDAO();
		if(stu_dao.stuLogin(stu))
		{
			if(stu_dao.stucheck(stu))
			{
				return SUCCESS;
			}
			else
			{
				this.addActionMessage("请勿重复作答");
				return INPUT;
			}
			
		}
		else{
			this.addActionMessage("姓名或学号错误");
			return INPUT;
		}
		
	}
	
	@Override
	public Students getModel() {
		// TODO Auto-generated method stub
		return stu;
	}


}

package edu.xidian.research.action;

import java.io.File;
import java.sql.ResultSet;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import com.mysql.jdbc.ResultSetMetaData;
import com.opensymphony.xwork2.ModelDriven;

import edu.xidian.research.dao.AdminDAO;
import edu.xidian.research.dao.QuestionDAO;
import edu.xidian.research.vo.Admin;

public class AdminAction extends SuperAction implements ModelDriven<Admin>{
	
	private Admin admin = new Admin();
	AdminDAO aDao = new AdminDAO();
	QuestionDAO qDao = new QuestionDAO();
	public String login()
	{
		request.getSession().setAttribute("c", qDao.getAnswerCount());
		
		if(aDao.adminLogin(admin))
		{
	
			
			return SUCCESS;
		}
		else
		{
			this.addActionMessage("用户名或密码错误");
			return INPUT;
		}
	}
	
	public boolean add(Admin ad)
	{
		if(aDao.addAdmin(ad))
		{
			return true;
			
		}
		else
		{
			return false;
		}
	}
	
	public String creatExcel()
	{
		
		ResultSet rs = qDao.getAnswer();
		
		 try {
			 ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
			 WritableWorkbook wb = Workbook.createWorkbook(new File("D:/wwwroot/Question_Paper/data/answer.xls"));
			 WritableSheet st = wb.createSheet("调查结果", 0);
			 int count=rsmd.getColumnCount();
			 Label[] label_title=new Label[count];
			
			  for(int i=0;i<count;i++)
			 {
				 label_title[i] = new Label(i,0,rsmd.getColumnName(i+1));
				 st.addCell(label_title[i]);
			 }
			 	 int l =1;
			 	 while(rs.next())
			 {
				 for(int i=0;i<count;i++)
				 {
					 st.addCell(new Label(i,l,rs.getString(i+1)));
			 
				 }
				 l++;
			 }
			 
			 
			 //InputStream instream = new FileInputStream("D:/answer.xls");
			 	/*	System.out.println(System.getProperty("user.dir"));
			WritableWorkbook wb = Workbook.createWorkbook(new File("D:/wwwroot/Question_Paper/data/answer.xls"));
			WritableSheet st = wb.createSheet("调查结果", 0);
			Label title_stuname = new Label(0, 0, "姓名");
			Label title_stunum = new Label(1, 0, "学号");
			Label title_phone = new Label(2, 0, "电话");
			Label title_time = new Label(3,0,"提交时间");
			Label title_q1 = new Label(4, 0, "q1");
			Label title_q1other = new Label(5, 0, "q1other");
			Label title_q2 = new Label(6, 0, "q2");
			Label title_q2other = new Label(7, 0, "q2other");
			Label title_q3 = new Label(8, 0, "q3");
			Label title_q3other = new Label(9, 0, "q3other");
			Label title_q4_1 = new Label(10, 0, "q4_1");
			Label title_q4_1other = new Label(11, 0, "q4_1other");
			Label title_q4_2 = new Label(12, 0, "q4_2");
			Label title_q4_2other = new Label(13, 0, "q4_2other");
			Label title_q4_3 = new Label(14, 0, "q4_3");
			Label title_q4_3other = new Label(15, 0, "q4_3other");
		//	Label title1 = new Label(15, 0, "姓名");
			st.addCell(title_stuname);
			st.addCell(title_time);
			st.addCell(title_q4_3other);
			st.addCell(title_q4_3);
			st.addCell(title_q4_2other);
			st.addCell(title_q4_2);
			st.addCell(title_q4_1other);
			st.addCell(title_q4_1);
			st.addCell(title_q3other);
			st.addCell(title_q3);
			st.addCell(title_q2other);
			st.addCell(title_q2);
			st.addCell(title_q1other);
			st.addCell(title_q1);
			st.addCell(title_stunum);
			st.addCell(title_phone);
			int i=1;
			while(rs.next())
			{
				st.addCell(new Label(0,i,rs.getString("stuname")));
				st.addCell(new Label(1,i,rs.getString("stunum")));
				st.addCell(new Label(2,i,rs.getString("phone")));
				st.addCell(new Label(3,i,rs.getString("time")));
				st.addCell(new Label(4,i,rs.getString("q1")));
				st.addCell(new Label(5,i,rs.getString("q1other")));
				st.addCell(new Label(6,i,rs.getString("q2")));
				st.addCell(new Label(7,i,rs.getString("q2other")));
				st.addCell(new Label(8,i,rs.getString("q3")));
				st.addCell(new Label(9,i,rs.getString("q3other")));
				st.addCell(new Label(10,i,rs.getString("q4_1")));
				st.addCell(new Label(11,i,rs.getString("q4_1other")));
				st.addCell(new Label(12,i,rs.getString("q4_2")));
				st.addCell(new Label(13,i,rs.getString("q4_2other")));
				st.addCell(new Label(14,i,rs.getString("q4_3")));
				st.addCell(new Label(15,i,rs.getString("q4_3other")));
				i++;
			}*/
			wb.write();
            wb.close();
            return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	}


	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin;
	}

}

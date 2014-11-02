package edu.xidian.research.action;

import junit.framework.Assert;
import junit.framework.TestCase;
import edu.xidian.research.dao.AdminDAO;
import edu.xidian.research.vo.Admin;

public class TestAdminAction extends TestCase{
	
	AdminDAO adao = new AdminDAO();
	
	public void testcreatExcel()
	{
		AdminAction aa = new AdminAction();
		aa.creatExcel();
	}
	
	public void testadd()
	{
		Admin ad = new Admin();
		ad.setAdminname("admin");
		ad.setAdminpassword("admin");
		Assert.assertEquals(true, adao.addAdmin(ad));
	}

}

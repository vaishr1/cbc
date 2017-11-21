
package com.cbc.bo;

import java.util.ArrayList;

import com.cbc.dao.AdminDao;
import com.cbc.vo.AdminVO;
//import com.cbc.vo.UsercbcVO;

public class AdminBO {
	
	public boolean validateLogin(AdminVO registerAdmin)
	{
		boolean result=false;
		
		
			AdminDao adao=new AdminDao();
			result=adao.insertUserData(registerAdmin);
			
		
		
		
		
		
		return result;
	}
	
	
	

}

/*
 * AdminDao dao=new AdminDao();
	public ArrayList<UsercbcVO>	transactionFetch()
	{
		return dao.transactionFetch();
	}

public class AdminBo {
	public boolean validateLogin(AdminDao registerAdmin)
	{
		boolean result=false;
		
		
		AdminDao adao=new AdminDao();
			result=adao.insertUserData(registerAdmin);
			
		
		
		
		
		
		return result;
	}
}
*/
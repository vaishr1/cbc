package com.cbc.bo;



import java.util.ArrayList;

import com.cbc.dao.UserDao;
import com.cbc.vo.UserVO;
import com.cbc.vo.UsercbcVO;

public class UserBO {
	public boolean validateLogin(UserVO register)
	{
		boolean result=false;
		
		
		UserDao ldao1=new UserDao();
			result=ldao1.insertUserData(register);
			
		
		
		
		
		
		return result;
	}
	UserDao dao=new UserDao();
	public ArrayList<UsercbcVO>	transactionFetch(String userid)
	{
		return dao.transactionFetch(userid);
	}    
	public ArrayList<UsercbcVO>	transactionFetchFund(String userid)
	{
		return dao.transactionFetchFund(userid);
	}  
}

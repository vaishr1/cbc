package com.cbc.bo;

import com.cbc.dao.LoginDAO;

import com.cbc.vo.LoginVO;

public class LoginBO {
	
public boolean validateLogin(LoginVO vo)
{
	boolean result=false;
	
	System.out.println("In Login BO");
	LoginDAO ldao=new LoginDAO();
		result=ldao.validateLogin(vo);
		
		//Register_user_dao ldao1=new Register_user_dao();
		//result=ldao1.insertUserData(register);
		
	
	
	
	return result;
}


}

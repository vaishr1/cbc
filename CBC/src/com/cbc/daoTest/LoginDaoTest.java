package com.cbc.daoTest;

import com.cbc.vo.LoginVO; 
import com.cbc.dao.LoginDAO;
import static org.junit.Assert.*;

import org.junit.Test;

public class LoginDaoTest {

	@Test
	public void testValidateLogin1() {
		LoginDAO ldao=new LoginDAO();
		LoginVO vo=new LoginVO();
		vo.setUserName("xyz");
		vo.setPassword("jai");
		vo.setRole("hjbgf");
		boolean actualOutPut=ldao.validateLogin(vo);
		assertEquals(false,actualOutPut);
	}
	@Test
	public void testValidateLogin() {
		LoginDAO ldao=new LoginDAO();
		LoginVO vo=new LoginVO();
		vo.setUserName("467432");
		vo.setPassword("D45512swrwr");
		vo.setRole("indvl");
		boolean actualOutPut=ldao.validateLogin(vo);
		assertEquals(true,actualOutPut);
	}

	
	
	

}

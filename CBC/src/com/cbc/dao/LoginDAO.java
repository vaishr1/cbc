package com.cbc.dao;

import java.sql.Connection;
//import org.apache.log4j.Logger;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;
import java.util.ArrayList;
import java.util.ResourceBundle;

import com.cbc.vo.LoginVO;
import com.cbc.util.DBConnect;
//import com.sun.istack.internal.logging.Logger;

public class LoginDAO {
	Connection con=null;
	PreparedStatement smt=null;
	ResultSet rs=null;
	ResourceBundle res=null;
//	private static Logger Log=Logger.getLogger(LoginDAO.class);

public boolean validateLogin(LoginVO vo)
{
//	Log.info("In Login DO");
	System.out.println("In Login DO");
	boolean result=false;
	res=ResourceBundle.getBundle("Query");
	DBConnect connect=new DBConnect();
	connect.initializeDriver();
	con=connect.getConnect();
	ResultSet rset=null;
	try {
		if(vo.getRole().equalsIgnoreCase("admin"))
		{
			smt=con.prepareStatement(res.getString("GET_ADMIN_LOGIN_DETAILS"));
			System.out.println("Statement PREPARED");
			System.out.println("1");
			
		}
		else if(vo.getRole().equalsIgnoreCase("indvl"))
		{
			smt=con.prepareStatement(res.getString("GET_USER_LOGIN_DETAILS"));
			System.out.println(2);
		}
			else
			{
				smt=con.prepareStatement(res.getString("GET_USER_LOGIN_DETAILS"));
				System.out.println(2);
			}
		
		smt.setString(1, vo.getUserName());
		smt.setString(2, vo.getPassword());
		smt.setString(3, vo.getRole());
		rs=smt.executeQuery();
		System.out.println("Query Executed");
		if(rs.next())
		{
			System.out.println("result present");
			result=true;
		}
		System.out.println(result);
		//System.out.println(result);
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		//Logger.getLogger(LoginDAO.class.getName()).error(e.toString());
		result=false;
		e.printStackTrace();
	}
	
	return result;
}
}



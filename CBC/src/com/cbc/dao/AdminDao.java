package com.cbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import com.cbc.util.DBConnect;
import com.cbc.vo.AdminVO;

public class AdminDao {
	
		Connection con=null;
		PreparedStatement smt=null;
		ResultSet rs=null;
		ResourceBundle res=ResourceBundle.getBundle("Query");
		
	public boolean insertUserData(AdminVO login)
	{
		boolean result=false;
		//res=ResourceBundle.getBundle("Query");
		DBConnect connect=new DBConnect();
		connect.initializeDriver();
		con=connect.getConnect();
		try {
			//String lname=null,email,address;
			//String number;
			smt=con.prepareStatement(res.getString("SET_ADMIN_DETAILS"));
			smt.setString(1, login.getLogin());
			smt.setString(2, login.getPassword());
			smt.setString(3, login.getFname());
			
			
			smt.setString(4, login.getLname());
			smt.setString(13, login.getRole());
			smt.setString(5, login.getAge());
			smt.setString(6, login.getGender());
			smt.setString(7,login.getNumber());
			smt.setString(8, login.getEmail());
			smt.setString(9, login.getAddress());
			smt.setString(11, login.getCity());
			smt.setString(12, login.getZip());
			smt.setString(14, login.getAmount().toString());
			smt.setString(10, login.getCountry());
			int v=smt.executeUpdate();
			if(v>0)
			{
				result=true;
			}
		}
			catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
		}
	
	public float getAmountInvested(String id)
	{
		DBConnect connect=new DBConnect();
		connect.initializeDriver();
		con=connect.getConnect();
		float amount=0;
		try {
			smt=con.prepareStatement("select Investment from user_details where User_ID=?");
			smt.setString(1,id);
			rs=smt.executeQuery();
			if(rs.next())
			{
				amount=rs.getFloat("Investment");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return amount;
	}
	
	
	
}
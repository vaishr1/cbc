package com.cbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import com.cbc.vo.IndUsercbcVO;
import com.cbc.vo.LoginVO;
import com.cbc.vo.UsercbcVO;
import com.cbc.util.DBConnect;

public class IndUserDao {
	Connection con=null;
	PreparedStatement smt=null;
	ResultSet rs=null;
	ResourceBundle res=null;
	public ArrayList<IndUsercbcVO> transactionFetch()
	{
		
		ArrayList<IndUsercbcVO> ls=new ArrayList<IndUsercbcVO>();;
		

		boolean result=false;
		res=ResourceBundle.getBundle("Query");
		DBConnect connect=new DBConnect();
		connect.initializeDriver();
		con=connect.getConnect();
		try {
		
			System.out.println(res.getString("INDIVIDUAL_TRANSACTION_FETCH"));
			smt=con.prepareStatement(res.getString("INDIVIDUAL_TRANSACTION_FETCH"));
			rs=smt.executeQuery();
System.out.println(rs);
			
			
			while (rs.next()) {
				IndUsercbcVO vo=new IndUsercbcVO();
				//l.clear();
	            vo.setUser_ID(rs.getString("User_ID")); 
	            vo.setFirst_Name(rs.getString("First_Name"));
	            vo.setLast_Name("Last_Name");
	            vo.setEmail_ID(rs.getString("Email_ID"));
	            vo.setContact_Number(rs.getString("Contact_Number"));
	            vo.setAge(rs.getString("Age"));
	            vo.setGender(rs.getString("Gender"));
	            vo.setCountry(rs.getString("Country"));
	            vo.setRole(rs.getString("Role"));
	         
	           ls.add(vo);
	         
	           
	       
			
		} 
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			//Logger.getLogger(AdminDAO.class.getName()).error(e.toString());
			e.printStackTrace();
		}
		
		return ls;
	}
	
	public boolean submitData(String userId,String nstock,String StockName, String punit,String total,String tai,String chargeBack,String balanceAmount)
	{
		int id=0;
		boolean result=false;
		res=ResourceBundle.getBundle("Query");
		DBConnect connect=new DBConnect();
		connect.initializeDriver();
		con=connect.getConnect();
		ResultSet rs=null;
		try {
			smt=con.prepareStatement(res.getString("MAX_ID"));
			rs=smt.executeQuery();
			if(rs.next())
			{
				id=rs.getInt(1);
				System.out.println("transaction id is "+id);
				if(id==0)
				{
					id=1;
				}
				else
					id=id+1;
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			smt=con.prepareStatement(res.getString("INTO_CLIENT_TRANSACTION_BUY"));
			smt.setInt(1,id);
			smt.setString(2,userId);
			smt.setString(3,StockName);
			smt.setString(4,nstock);
			smt.setString(5,punit);
			//smt.setString(6,total);
			smt.setString(6,tai);
			smt.setString(7,chargeBack);
			smt.setString(8,balanceAmount);
			
			int result1=smt.executeUpdate();
			if(result1>0)
			{
				System.out.println("into bc query executed");
				result=true;
			}
			else
			{
				System.out.println("error in into bc");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public boolean submitSellData(String userId,String nstock,String StockName, String punit,String sPrice,String total,String tai,String chargeBack,String balanceAmount)
	{
		int id=0;
		boolean result=false;
		res=ResourceBundle.getBundle("Query");
		DBConnect connect=new DBConnect();
		connect.initializeDriver();
		con=connect.getConnect();
		ResultSet rs=null;
		try {
			smt=con.prepareStatement(res.getString("MAX_ID"));
			rs=smt.executeQuery();
			if(rs.next())
			{
				id=rs.getInt(1);
				System.out.println("transaction id is "+id);
				if(id==0)
				{
					id=1;
				}
				else
					id=id+1;
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			smt=con.prepareStatement(res.getString("INTO_CLIENT_TRANSACTION_SELL"));
			smt.setInt(1,id);
			smt.setString(2,userId);
			smt.setString(3,StockName);
			smt.setString(4,nstock);      
			smt.setString(5,punit);
			//
			//smt.setString(7,total);    			
			smt.setString(6,tai);
			smt.setString(7,chargeBack);
			smt.setString(8,balanceAmount);
			smt.setString(9,sPrice);
			int result1=smt.executeUpdate();
			if(result1>0)
			{
				System.out.println("into bc query executed");
				result=true;
				System.out.println("end bc query executed");
			}
			else
			{
				System.out.println("error in into bc");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}

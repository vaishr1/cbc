package com.cbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;
//import org.apache.log4j.Logger;

//import com.cts.model.LoginVO;
import com.cbc.util.DBConnect;
import com.cbc.vo.UserVO;
import com.cbc.vo.UsercbcVO;

public class UserDao {
	Connection con=null;
	PreparedStatement smt=null;
	ResultSet rs=null;
	ResourceBundle res=null;
public boolean insertUserData(UserVO login)
{
	boolean result=false;
	res=ResourceBundle.getBundle("Query");
	DBConnect connect=new DBConnect();
	connect.initializeDriver();
	con=connect.getConnect();
	try {
		//String lname=null,email,address;
		//String number;
		smt=con.prepareStatement(res.getString("SET_USER_DETAILS1"));
		smt.setString(1, login.getLogin());
		smt.setString(2, login.getPassword());
		smt.setString(3, login.getFname());
		/*if(login.getNumber().equals(""))
		{
			number=null;
		}
		else
		{
			number=login.getNumber();
		}*/
		
		
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
			smt=con.prepareStatement(res.getString("SET_FUND_USER_MASTER"));
			smt.setString(1,login.getFundgroupname());
			smt.setString(2,login.getLogin());
			v=smt.executeUpdate();
			if(v>0)
			{
			result=true;
			}
		}
	}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public ArrayList<UsercbcVO> transactionFetch(String userid)
	{
	
	ArrayList<UsercbcVO> ls=new ArrayList<UsercbcVO>();;
	System.out.println("userid = "+userid);

	boolean result=false;
	res=ResourceBundle.getBundle("Query");
	DBConnect connect=new DBConnect();
	connect.initializeDriver();
	con=connect.getConnect();
	try {
	
		System.out.println(res.getString("TRANSACTION_FETCH"));
		smt=con.prepareStatement(res.getString("TRANSACTION_FETCH"));
		smt.setString(1,userid);
		rs=smt.executeQuery();
		System.out.println("iquery executed");
		
		while (rs.next())
		{
			System.out.println("in if");
			UsercbcVO vo=new UsercbcVO();
			//l.clear();
            vo.setTransid(rs.getString("Trans_ID")); 
            vo.setUserid(rs.getString("User_ID")); 
            vo.setStock_name(rs.getString("Stock_Name"));
            vo.setAmount(rs.getString("Amount_Invested"));
            vo.setChargeback(rs.getString("Charge_Back"));
            vo.setNo_units(rs.getString("No_Of_Stock_Per_Unit_bought"));
            vo.setStock_price(rs.getString("Per_Unit_Price"));
            
            System.out.println(rs.getString("User_ID"));
          /*  ls.add(rs.getString("amount")); 
            ls.add(rs.getString("stock_name"));
            ls.add(rs.getString("no_of_units"));
            ls.add(rs.getString("stock_price"));
            ls.add(rs.getString("charge_back"));*/
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
	public ArrayList<UsercbcVO> transactionFetchFund(String userid)
	{
	
	ArrayList<UsercbcVO> ls=new ArrayList<UsercbcVO>();;
	System.out.println("userid = "+userid);

	boolean result=false;
	res=ResourceBundle.getBundle("Query");
	DBConnect connect=new DBConnect();
	connect.initializeDriver();
	con=connect.getConnect();
	try {
	
		System.out.println(res.getString("TRANSACTION_FETCH_FUND"));
		smt=con.prepareStatement(res.getString("TRANSACTION_FETCH_FUND"));
		smt.setString(1,userid);
		rs=smt.executeQuery();
		System.out.println("iquery executed");
	
		while (rs.next())
		{
			System.out.println("in if");
			UsercbcVO vo=new UsercbcVO();
			//l.clear();
            vo.setTransid(rs.getString("Trans_ID")); 
            vo.setFundid(rs.getString("Fund_ID")); 
            vo.setStock_name(rs.getString("Stock_Name"));
            vo.setAmount(rs.getString("Amount_Invested"));
            vo.setChargeback(rs.getString("Charge_Back"));
            vo.setNo_units(rs.getString("No_Of_Stock_Per_Unit_bought"));
            vo.setStock_price(rs.getString("Per_Unit_Price"));
            
            System.out.println(rs.getString("Fund_ID"));
          /*  ls.add(rs.getString("amount")); 
            ls.add(rs.getString("stock_name"));
            ls.add(rs.getString("no_of_units"));
            ls.add(rs.getString("stock_price"));
            ls.add(rs.getString("charge_back"));*/
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
}

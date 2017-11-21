package com.cbc.dao;

import com.cbc.util.DBConnect;
import com.cbc.vo.FundVO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class FundUserDao {
	Connection con=null;
	PreparedStatement smt=null;
	ResultSet rs=null;
	PreparedStatement smt1=null;
	ResultSet rs1=null;
	ResourceBundle res=null;
	
	public ArrayList<FundVO> getAllFundDetails()
	{
		
		ArrayList<FundVO> ls=new ArrayList<FundVO>();;
		

		boolean result=false;
		res=ResourceBundle.getBundle("Query");
		DBConnect connect=new DBConnect();
		connect.initializeDriver();
		con=connect.getConnect();
		try {
		
			System.out.println(res.getString("GET_FUND_GROUP"));
			smt=con.prepareStatement(res.getString("GET_FUND_GROUP"));
			rs=smt.executeQuery();

			
			while (rs.next()) {
				
				
				FundVO vo=new FundVO();
				vo.setFundId(rs.getString(1));
				vo.setFundName(rs.getString(2));
				
			    ls.add(vo);
				
				
				
				
				//l.clear();
				
			
		} 
			
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			//Logger.getLogger(AdminDAO.class.getName()).error(e.toString());
		}
		return ls;	
		
	
	}
	public boolean submitDataFund(String fundId,String nstock,String StockName, String punit,String total,String tai,String chargeBack,String balanceAmount)
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
			smt=con.prepareStatement(res.getString("INTO_CLIENT_TRANSACTION_BUY_FUND"));
			smt.setInt(1,id);
			smt.setString(8,fundId);          ///////??? column no??///
			smt.setString(2,StockName);
			smt.setString(3,nstock);
			smt.setString(4,punit);
			//smt.setString(6,total);
			smt.setString(5,tai);
			smt.setString(6,chargeBack);
			smt.setString(7,balanceAmount);
			
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
	public boolean submitSellDataFund(String fundId,String nstock,String StockName, String punit,String sPrice,String total,String tai,String chargeBack,String balanceAmount)
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
			smt=con.prepareStatement(res.getString("INTO_CLIENT_TRANSACTION_SELL_FUND"));
			smt.setInt(1,id);
			smt.setString(8,fundId);     ///////??? column no??///
			smt.setString(2,StockName);
			smt.setString(3,nstock);      
			smt.setString(4,punit);
			//
			//smt.setString(7,total);    			
			smt.setString(5,tai);
			smt.setString(6,chargeBack);
			smt.setString(7,balanceAmount);
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
	

	
	

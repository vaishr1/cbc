package com.cbc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;



public class DBConnect {
	ResourceBundle resource=null;
Connection con=null;
public void initializeDriver()
{
	resource=ResourceBundle.getBundle("DBProperties");
	try {
		Class.forName(resource.getString("DriverName"));
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public Connection getConnect()
{
	
	try {
		con=DriverManager.getConnection(resource.getString("url"),resource.getString("user"),resource.getString("pass"));
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return con;
}




}

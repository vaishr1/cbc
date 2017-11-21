package com.cbc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.cbc.controller.Login;
//import com.cbc.VO.LoginVO;
import com.cbc.bo.AdminBO;
import com.cbc.bo.UserBO;
import com.cbc.vo.AdminVO;
import com.cbc.vo.UserVO;

/**
 * Servlet implementation class Register
 */
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String fgroupname=request.getParameter("fundGroupName");
		String role=request.getParameter("Role");
		String login=request.getParameter("login");
		String Password=request.getParameter("Password");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String Age=request.getParameter("age");
		String Role=request.getParameter("Role");
		String Country=request.getParameter("country");
		String Gender=request.getParameter("gender");
		String Number=request.getParameter("number");
		String Email=request.getParameter("email");
		String Address=request.getParameter("address");
		String Zip=request.getParameter("zip");
		String City=request.getParameter("city");
		String Amount=request.getParameter("number");
		String autoId=request.getParameter("autoId");
	System.out.println(autoId);
	if(role.equalsIgnoreCase("indvl"))
	{
		UserVO register=new UserVO();
		

		
		register.setLogin(request.getParameter("login"));
		register.setPassword(request.getParameter("Password"));
		register.setFname(request.getParameter("fname"));
		register.setLname(request.getParameter("lname"));
		register.setAge(request.getParameter("age"));
		register.setRole(request.getParameter("Role"));
		register.setCountry(request.getParameter("country"));
		register.setGender(request.getParameter("gender"));
		register.setNumber(request.getParameter("number"));
		register.setEmail(request.getParameter("email"));
		register.setAddress(request.getParameter("address"));
		register.setZip(request.getParameter("zip"));
		register.setCity(request.getParameter("city"));
		register.setAmount(Double.parseDouble(request.getParameter("number")));
		
		
		
			UserBO rbo=new UserBO();
			boolean result=rbo.validateLogin(register);
		if(result==true)
		{
			PrintWriter pw= response.getWriter();
			//pw.println("User Registered Successfully");
			response.sendRedirect("registerSuccess2.jsp?id="+autoId+"");
		}
		}
	
	else
		if(role.equalsIgnoreCase("admin"))
	{
			AdminVO registerAdmin=new AdminVO();
			registerAdmin.setLogin(request.getParameter("login"));
			registerAdmin.setPassword(request.getParameter("Password"));
			registerAdmin.setFname(request.getParameter("fname"));
			registerAdmin.setLname(request.getParameter("lname"));
			registerAdmin.setAge(request.getParameter("age"));
			registerAdmin.setRole(request.getParameter("Role"));
			registerAdmin.setCountry(request.getParameter("country"));
			registerAdmin.setGender(request.getParameter("gender"));
			registerAdmin.setNumber(request.getParameter("number"));
			registerAdmin.setEmail(request.getParameter("email"));
			registerAdmin.setAddress(request.getParameter("address"));
			registerAdmin.setZip(request.getParameter("zip"));
			registerAdmin.setCity(request.getParameter("city"));
			registerAdmin.setAmount(Double.parseDouble(request.getParameter("number")));
			
			AdminBO rabo=new AdminBO();
			boolean result=rabo.validateLogin(registerAdmin);
		if(result==true)
		{
			PrintWriter pw= response.getWriter();
			response.sendRedirect("registerSuccess.jsp?id="+autoId+"");
		}
		}
		
	
		else
			if(role.equalsIgnoreCase("fund"))
		{
		UserVO register=new UserVO();
		

		register.setFundgroupname(fgroupname);
		register.setLogin(request.getParameter("login"));
		register.setPassword(request.getParameter("Password"));
		register.setFname(request.getParameter("fname"));
		register.setLname(request.getParameter("lname"));
		register.setAge(request.getParameter("age"));
		register.setRole(request.getParameter("Role"));
		register.setCountry(request.getParameter("country"));
		register.setGender(request.getParameter("gender"));
		register.setNumber(request.getParameter("number"));
		register.setEmail(request.getParameter("email"));
		register.setAddress(request.getParameter("address"));
		register.setZip(request.getParameter("zip"));
		register.setCity(request.getParameter("city"));
		register.setAmount(Double.parseDouble(request.getParameter("number")));
		
		
		
			UserBO rbo=new UserBO();
			boolean result=rbo.validateLogin(register);
		if(result==true)
		{
			PrintWriter pw= response.getWriter();
			//pw.println("User Registered Successfully");
			response.sendRedirect("registerSuccess2.jsp?id="+autoId+"");
		}
		}
	
		
}
	
}
	

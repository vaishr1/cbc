package com.cbc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.cbc.vo.LoginVO;

import com.cbc.bo.LoginBO;
import com.cbc.dao.LoginDAO;
//import com.sun.istack.internal.logging.Logger;



/**
package com.cbc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger Log=Logger.getLogger(LoginController.class);
    /**
     * @see HttpServlet#HttpServlet()
   //  public static final Logger LOG = Logger.getLogger("LoginController");
   // public LoginController() {
        super();
        // TODO Auto-generated constructor stub
  //  }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName=request.getParameter("id");
		String password=request.getParameter("password");
		String role=request.getParameter("role");
		Log.info("in controller");
		LoginVO vo=new LoginVO();
		vo.setUserName(userName);
		vo.setRole(role);
		vo.setPassword(password);
		
		LoginBO bo=new LoginBO();
		boolean result=bo.validateLogin(vo);
		
		
		
			System.out.println("bo.validateLogin(vo) "+result);
			if(role.equalsIgnoreCase("admin"))
			{
				System.out.println("in role");
				if(result)
				{
					System.out.println("inside");
				//PrintWriter pw= response.getWriter();
				//pw.println("Admin Login Successfully");
				response.sendRedirect("adminSuccess.jsp?role=admin");
					
			     }
				else  {
					
					response.sendRedirect("error.jsp");
			
				}
			
			
		     }
			
			else if(role.equalsIgnoreCase("indvl"))
				{
				System.out.println("indvl");
				 if(result)
				 {
					 request.setAttribute("userid",userName);
					 
				//response.sendRedirect("indSuccess.jsp?role=indvl");
					 RequestDispatcher rd=request.getRequestDispatcher("indSuccess.jsp");
					 rd.forward(request, response);
					//PrintWriter pw= response.getWriter();
					//pw.println("User Login Successfully");
				 }
				 
				
				 else  {
						
						response.sendRedirect("error.jsp");
				
					}
				
				}
			
			else if(role.equalsIgnoreCase("fund"))
			{
			System.out.println("fund");
			 if(result)
			 {
				 request.setAttribute("userid",userName);
				 
			//response.sendRedirect("indSuccess.jsp?role=indvl");
				 RequestDispatcher rd=request.getRequestDispatcher("fundSuccess.jsp");
				 rd.forward(request, response);
				//PrintWriter pw= response.getWriter();
				//pw.println("User Login Successfully");
			 }
			 
			
			 else  {
					
					response.sendRedirect("error.jsp");
			
				}
			
			}
		
			else  {
				
				response.sendRedirect("error.jsp");
		
			}
			
	
		
	
		
	}
	}




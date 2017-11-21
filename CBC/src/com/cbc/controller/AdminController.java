package com.cbc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cbc.bo.FundBO;
import com.cbc.bo.IndUserBO;
import com.cbc.bo.LoginBO;
import com.cbc.vo.FundVO;
import com.cbc.vo.IndUsercbcVO;
import com.cbc.vo.LoginVO;
import com.cbc.vo.UsercbcVO;

/**
 * Servlet implementation class FundController
 */
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static final String fundUserView="fundUserView.jsp?list";
	
	private static final String indUserView="indUserView.jsp?list";
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String actionName=request.getParameter("action");
		
		
		
		
		
	
	
		if(actionName.equalsIgnoreCase("fundUser"))
		{
			
			FundBO bo=new FundBO();
			List<FundVO> list=bo.getAllFundDetails();
			request.setAttribute("list",list);
			RequestDispatcher rd=request.getRequestDispatcher(fundUserView);
			rd.forward(request,response);
		}
		else if(actionName.equalsIgnoreCase("indUser"))
		{
			IndUserBO bo=new IndUserBO();
			List<IndUsercbcVO> list=bo.transactionFetch();
			request.setAttribute("list",list);
			RequestDispatcher rd=request.getRequestDispatcher(indUserView);
			rd.forward(request,response);
			
		}
		
		
		
		
		
	}

}

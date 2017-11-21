<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*,com.cbc.vo.*,com.cbc.dao.*,com.cbc.bo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><center><img src="css/image/logo.png " style="width:200px;height:100px;"></center><hr>
<link rel="stylesheet" type="text/css" href="css/css1.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#F0FFFF">
<center>
<h1>Welcome to Charge Back Calculation Page!!!</h1>
</center>
<div id=leftside>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Home.jsp"><h3>Home</h3></a>
<%--<a href="Role.jsp"><h3>Register here</h3></a>--%>
<a href="AboutUs.jsp"><h3>About Us</h3></a>
<a href="ContactUs.jsp"><h3>Contact Us</h3></a>
</div>

<%

	String userType=request.getParameter("u_Type");
	String userId=request.getParameter("u_id");
	String fundId=request.getParameter("f_id");
	System.out.println("in sellsuccess.jsp "+userType);
	System.out.println("in sellSuccess.jsp "+userId);
	String StockName=request.getParameter("StockName");
	String nstock=request.getParameter("nstock");
	String punit=request.getParameter("punit"); 
	String sPrice=request.getParameter("sPrice");
	String total=request.getParameter("total");

	String tai=request.getParameter("tai");
	String chargeBack=request.getParameter("chargeBack");
	String balanceAmount=request.getParameter("balanceAmount");
	System.out.println("before if");
	if(userType.equalsIgnoreCase("indU"))
	{
	IndUserBO ind=new IndUserBO();
	ind.submitSellData(userId,nstock,StockName,punit,sPrice,total,tai,chargeBack,balanceAmount);
	}
	else if(userType.equalsIgnoreCase("fundU")){
		FundBO ind=new FundBO();
		ind.submitSellDataFund(fundId,nstock,StockName,punit,sPrice,total,tai,chargeBack,balanceAmount);
	}
	
%>

<div id=center>
<br><br>
<h2><font color="red">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspStocks sold successfully</font></h2>

</div>
<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>

</body>
</html>
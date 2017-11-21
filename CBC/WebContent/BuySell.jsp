<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String userType=request.getParameter("u_Type");
String userId=request.getParameter("u_id");
String fundId=request.getParameter("f_id");
System.out.println("in buysell f_id="+fundId);
System.out.println("in buysell "+userId);
System.out.println("in buysell "+userType);
%>
<html>
<head><center><img src="css/image/logo.png " style="width:200px;height:100px;"></center><hr>
<link rel="stylesheet" type="text/css" href="css/css1.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body bgcolor="#F0FFFF">
<center>
<h1>Welcome to admin!!!</h1>
</center>
<div id=leftside>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Home.jsp"><h3>Home</h3></a>
<%-- <a href="Role.jsp"><h3>Register here</h3></a>--%>
<a href="AboutUs.jsp"><h3>About Us</h3></a>
<a href="ContactUs.jsp"><h3>Contact Us</h3></a>
</div>



<div id=center>
<br>
<h4><font color="Blue">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPlease select the reqiured Operation</font></h4>
<form method="get" action="Buy.jsp">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<input type="hidden" name="u_id" value="<%=userId %>">
<input type="hidden" name="f_id" value="<%=fundId %>">
<input type="hidden" name="u_Type" value="<%=userType %>">
<input type="submit" name="Buy" value="Buy" onclick="" userName="user">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</form>
<form method="get" action="Sell.jsp">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

<input type="hidden" name="u_id" value="<%=userId %>">
<input type="hidden" name="f_id" value="<%=fundId %>">
<input type="hidden" name="u_Type" value="<%=userType %>">

<input type="submit" name="Sell" value="Sell" onclick="" userName="user">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</form>
<!--
<form method="get" action="Sell.jsp">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   
<input type="hidden" name="u_id" value="<%=fundId %>">
<input type="hidden" name="u_Type" value="<%=userType %>">

<input type="submit" name="Sell" value="Sell" onclick="" userName="user">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</form>
-->








</div>

<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>
</body>
</html>

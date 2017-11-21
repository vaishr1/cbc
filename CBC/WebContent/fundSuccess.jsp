<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.cbc.bo.*,com.cbc.dao.*,java.util.*,com.cbc.vo.*" %>
    <jsp:useBean id="UserBO" class="com.cbc.bo.UserBO" scope="page" />
    <%
    String userid=(String)request.getAttribute("userid"); 
    System.out.println("in indSuccess userid="+userid);   
    ArrayList<UsercbcVO> list=UserBO.transactionFetchFund(userid);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><center><img src="css/image/logo.png " style="width:200px;height:100px;"></center><hr>
<link rel="stylesheet" type="text/css" href="css/css1.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body bgcolor="#F0FFFF">
<center>
<h1>Welcome User!!!</h1>
</center>
<div id=leftside>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Home.jsp"><h3>Home</h3></a>
<%-- <a href="Role.jsp"><h3>Register here</h3></a>--%>
<a href="AboutUs.jsp"><h3>About Us</h3></a>
<a href="ContactUs.jsp"><h3>Contact Us</h3></a>
</div>

<br><br>

<div id=center>
<form method="get" action="">
<table border="1" id="table">
<tr>
<%-- <th>select</th>--%>
<th> Transaction ID</th>
<th> Fund ID </th>
<th> Stock name</th>
<th> No of units of stock</th>
<th>Stock Price per unit</th>
<th>Charge Back</th>
<th> Balance Amount</th>
<%-- <th> Balance Amount(in $)</th>--%>

</tr>



<%

for(int i=0;i<list.size();i++)
{
	UsercbcVO vo=(UsercbcVO)list.get(i);
	
%> 

<tr>
<%--<td><input type="radio" name="userId" value="<%=vo.getUserid() %>"></td>--%>
<td><%=vo.getTransid() %></td><td><%=vo.getFundid() %><td><%=vo.getStock_name() %></td>
<td><%=vo.getNo_units() %></td>
<td><%=vo.getStock_price() %></td>
<td><%=vo.getChargeback() %></td>
<td><%=vo.getAmount() %></td>

</tr>

<% 
}	

%>

<%-- <tr><td><input type="submit" value="proceed" /></td></tr>--%>
</table>

</form>


<%-- <%
for(int i=0;i<list.size();i++)
{
	UsercbcVO vo=(UsercbcVO)list.get(i);
	out.println("<tr><td>");
	%>
	<%=vo.getTransid() %>
	<%
	out.println("</td><td>");
	%>
<% 
}

%>
--%> 
</table>
</div>

<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*,com.cbc.vo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><center><img src="css/image/logo.png " style="width:200px;height:100px;"></center><hr>
<link rel="stylesheet" type="text/css" href="css/css1.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body bgcolor="#F0FFFF">
<center>
<h1>Welcome Admin!!!</h1>
</center>
<div id=leftside>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Home.jsp"><h3>Home</h3></a>
<%-- <a href="Role.jsp"><h3>Register here</h3></a>--%>
<a href="AboutUs.jsp"><h3>About Us</h3></a>
<a href="ContactUs.jsp"><h3>Contact Us</h3></a>
</div>



<div id=center>
<table border="1" id="table">
<tr><th>FUND_ID</th><th>FUND_NAME</th></tr>

<%
List<FundVO> list=(List<FundVO>)request.getAttribute("list");
for(int i=0;i<list.size();i++)
{
	FundVO vo=(FundVO)list.get(i);
	
%>
	<tr>
	<td> <%=vo.getFundId() %></td><td><a href="BuySell.jsp?u_Type=fundU&f_id=<%=vo.getFundId() %> " onMouseOver="this.style.color='red'" onMouseOut="this.style.color='rgb(18, 50, 218)'">
		<%=vo.getFundName()%></a></td>
	
	</tr>
	
<% 	
}
%>

</table>
</div>

<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>
</body>
</html>

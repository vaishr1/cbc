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
<h1>Welcome to admin!!!</h1>
</center>
<div id=leftside>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Home.jsp"><h3>Home</h3></a>
<%-- <a href="Role.jsp"><h3>Register here</h3></a>--%>
<a href="AboutUs.jsp"><h3>About Us</h3></a>
<a href="ContactUs.jsp"><h3>Contact Us</h3></a>
</div>

<div id=center>
<form method="get" action="">
<br><br>

<table border="1" id="table">
<tr>

<th>User ID </th>
<%--   <th><a href="proceed.jsp"> <%=vo.getFirst_Name() %> </th>--%>
<th> Name</th>
<th> Email</th>

<th> Total Investment </th>  
<th> Age </th>
<th> Gender </th>
<th> Country </th>
<th> Role </th>
</tr>



<%
List<IndUsercbcVO> list=(List<IndUsercbcVO>)request.getAttribute("list");
for(int i=0;i<list.size();i++)
{
	IndUsercbcVO vo=(IndUsercbcVO)list.get(i);

	
%>

 


<tr>
<%-- <td><input type="radio" name="userId" value="<%=vo.getUser_ID() %>"></td>--%>
<%--<td><%=vo.getUser_ID() %></td>--%>
<td><div class="user_id_row_<%=i%>" ><a href="BuySell.jsp?u_Type=indU&u_id=<%=vo.getUser_ID() %>" onMouseOver="this.style.color='red'" onMouseOut="this.style.color='rgb(18, 50, 218)'"><%=vo.getUser_ID() %></div>

    <div id="user_row_<%=i %>" style="color:rgb(18, 50, 218);text-decoration: underline;"onMouseOver="this.style.color='red'"
   onMouseOut="this.style.color='rgb(18, 50, 218)'"></div> </td> 
<td><%=vo.getFirst_Name() %></td>

<td><%=vo.getEmail_ID() %></td>
<td><%=vo.getContact_Number() %></td>
<td><%=vo.getAge() %></td>
<td><%=vo.getGender() %></td>
<td><%=vo.getCountry() %></td>
<td><%=vo.getRole() %></td>
</tr>

<% 
}	

%>

</table>
<%--<tr><td><input type="submit" value="proceed" /></td></tr>--%>

</form>
</div>

<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>
</body>
</html>

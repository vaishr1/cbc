<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="java.util.*,com.cbc.vo.*,com.cbc.dao.*,com.cbc.bo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
String userType=request.getParameter("u_Type");
String userId=request.getParameter("u_id");
String fundId=request.getParameter("f_id");
System.out.println("in buy.jsp "+userType);
System.out.println("in buy.jsp "+userId);
AdminDao ad=new AdminDao();
float amount=ad.getAmountInvested(userId);

%>
<html>
<head><center><img src="css/image/logo.png " style="width:200px;height:100px;"></center><hr>
<link rel="stylesheet" type="text/css" href="css/cssHome.css">
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



<script type="text/javascript">

function calAmount()
{
	<%--alert('hello');--%>
	var nstock=document.getElementById("nstock").value;
	var punit=document.getElementById("punit").value;
	<%--alert(nstock*punit);--%>
	document.getElementById("total").value=nstock*punit;
	
}

function CalCbc(){
	
	var cbc=0;
	var nstock=document.getElementById("nstock").value; 
	var punit=document.getElementById("punit").value;
	var total=document.getElementById("total").value;
	var tai=document.getElementById("tai").value;
	if(total>=500 && total<=1000)
	{
	cbc=total*0.18;
	}
	else if(total>=1001 && total<=2000)
	{
	cbc=total*0.25;
	}
	else if(total>=2001 && total<=5000)
	{
	cbc=total*0.34;
	}
	else if(total>=5001 && total<=10000)
	{
	cbc=total*0.4;
	}
	else if(total>=10001 && total<=20000)
	{
	cbc=total*0.73;
	}
	else if(total>=20001 && total<=40000)
	{
	cbc=total*1.1;
	}
	else if(total>=40001 && total<=8000)
	{
	cbc=total*1.5;
	}
	else if(total>=80001)
	{
	cbc=total*2.0;
	}
	chargeBack=cbc/100;
	
	document.getElementById("chargeBack").value=cbc/100;
	document.getElementById("balanceAmount").value=(tai-chargeBack);
	
}



</script>
<form name="buy" action="BuySuccess.jsp" method="get">
<div id=center>
<br>
<table >

<tr>
<td>Stock Name</td>

<td><select name="StockName"><option  >Select Stock</option>
<option value="SUN_Pharma">SUN_Pharma</option>
<option value="Hind.zinc">Hind.zinc</option>
<option value="Asian_paints">Asian_paints</option>
<option value="Cipla">Cipla</option>
<option value="JSW_Steels">JSW_Steels</option>
<option value="Ashok_leyland">Ashok_leyland</option>
<option value="Harvells_India">Harvells_India</option>
<option value="Titan">Titan</option>
<option value="Apollo">Apollo</select></option></td>
</tr>

<tr>
<td><input type="hidden" name="u_id" value="<%=userId %>"></td>
<td><input type="hidden" name="f_id" value="<%=fundId %>"></td>
<td><input type="hidden" name="u_Type" value="<%=userType %>"></td>
</tr>


<tr>
<td>No. of Stocks</td>
<td><input type="text" id="nstock" name="nstock"></td>
</tr>
<tr>
<td>Per Unit Price</td>
<td><input type="text" id="punit" name="punit" onChange="calAmount();"></td>
</tr>
<tr>
<td>Amount Investing</td>
<td><input type="text" id="total" name="total" value""></td>
</tr>
<tr>
<td>Total Amount Invested</td>
<td><input type="text" id="tai" name="tai" value="<%=amount%>"> </td>
</tr>
<tr>
<td>Total Charge Back</td>
<td><input type="text" id="chargeBack" name="chargeBack" value""></td>
</tr>
<tr>
<td>Balance Amount</td>
<td><input type="text" id="balanceAmount" name="balanceAmount" value""></td>
</tr>
<tr>
<td><input type="button" name="Calculate" value="Calculate" id="Calculate" onclick="CalCbc();"></td>
<td><input type="submit" name="Update" value="Update" id="Update"  ></td>
<td><input type="submit" name="Reset" value="Reset" id="Reset"></td>
</tr>
</table>

</div>
</form>
<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><center><img src="css/image/logo.png " style="width:200px;height:100px;"></center><hr>
<link rel="stylesheet" type="text/css" href="css/cssHome.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function validateForm() {
	// alert("All fields");
    var x = document.forms["login"]["id"].value;
    var y = document.forms["login"]["password"].value;
    var z = document.forms["login"]["role"].value;
   
    if ((x == null || x == "") || (y == null || y == "")) {
        alert("All fields must be filled to log in!");
        return false;
        
        }
        else
        	{
        	
        	return true;
        	
        	}
          
}

function name_validation(){
	var a= document.forms["login"]["id"].value;
	 re = /[0-9]/;
     if(!re.test(a)) {
       document.getElementById("lid").innerHTML="<font color='red'>Id must contain only numbers (0-9)</font>";
    	return true;
     }
     else
    	 document.getElementById("lid").innerHTML="";
    	 return false;
}
function passid_validation()  
{  
var a=1,b=1,c=1,d=1,e=1;

var passid_len =document.getElementById("pass").value; 
   if(passid_len!=0)
          {
                  if(passid_len.length < 8) {
                    document.getElementById("pid").innerHTML="<font color='red'>Size should be greater than eigth characters</font>";
                    a=0;
                   
                  }
                  if(passid_len == fname) {
                    document.getElementById("pid").innerHTML="<font color='red'>Password should be diffrenet from user name</font>";
                   b=0;
                   
                  }
                  re = /[0-9]/;
                  if(!re.test(passid_len)) {
                    document.getElementById("pid").innerHTML="<font color='red'>password must contain at least one number (0-9)</font>";
                  
                   
                    
                    c=0;
                  }
                  re = /[a-z]/;
                  if(!re.test(passid_len)) {
                    document.getElementById("pid").innerHTML="<font color='red'> password must contain at least one lowercase letter (a-z)</font>";
                    
                   
                   
                    d=0;
                  }
                  re = /[A-Z]/;
                  if(!re.test(passid_len)) {
                    document.getElementById("pid").innerHTML="<font size='2px' color='red'>must contain at least one uppercase letter (A-Z)</font>";
                    
                  
                    e=0;
                  }
                
    if(a==1 && b==1 && c==1 && d==1 && e==1)
      {document.getElementById("pid").innerHTML="";
      return true;
      }
      
      else
            {
    	  
            return false;
            }     
}
      else
            {
    	
           document.getElementById("pid").innerHTML="<font color='red'>empty</font>";
      return false;
            }
  
}
</script>
</head>
<body bgcolor="#F0FFFF">
<center>
<h1>Welcome to Charge Back Calculation..!!!</h1>
</center>
<div id=leftside>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Home.jsp"><h3>Home</h3></a>
<a href="Role.jsp"><h3>Register here</h3></a>
<a href="AboutUs.jsp"><h3>About Us</h3></a>
<a href="ContactUs.jsp"><h3>Contact Us</h3></a>
</div>



<div id=center>

<br><br>

<form name="login" method="post" action="LoginController"> 
<table>
	<tr>
		<td align="left">Login Id</td>
		<td><input name="id" id="name" onblur="name_validation()"><span id="lid"></span></td>
	</tr>
	<tr>
		<td align="left">Password</td>
		<td><input type="password" name="password" id="pass" onblur="passid_validation()"><span id="pid"></span></td>
	</tr>
	<tr>
		<td align="left">Role</td>
		<td><select name="role"><option value="admin">Bank Representative</option>
		<option value="indvl">Individual User</option>
		<option value="fund">Fund User</option></select>
		</td>
	</tr>
	<tr>
		<td><input type="submit" value="Login" onClick="validateForm()"></td>
		<td><input type="button" value="Reset" ></td>
	</tr>
</table>
</form>

</div>
<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>

</body>
</html>
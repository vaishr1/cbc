<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.StringTokenizer"%>

<%@page import="com.cbc.additional.RandomNumber" %>
<%@page import="java.sql.ResultSet"%>
<html>
<head><center><img src="css/image/logo.png " style="width:200px;height:100px;"></center><hr>
<link rel="stylesheet" type="text/css" href="css/cssHome.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function call(){
	//alert("hai");
    var ids=document.forms ["registration"]["country"].value;
//alert(ids);
var xmlhttp = new XMLHttpRequest();

var urlcountry = "http://localhost:8180/Charge_back_calculation/prepopulate?id="+ids;
//alert(urlcountry);
xmlhttp.onreadystatechange = function() {
      
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
    var myArr = JSON.parse(xmlhttp.responseText);   

      myFunction(myArr);
      //alert(myArr.length);
     // document.getElementById('zipcode').value=myArr[0].name;
  }
}
xmlhttp.open("GET", urlcountry, true);
xmlhttp.send();

function myFunction(arr) {
      
    var sel = document.getElementById('city');
   //alert(sel);
    sel.innerHTML = ""; 
    var out = "";
  var i;
  var opt = document.createElement('option');
  opt.innerHTML = "select city";
  opt.value = "0";
  sel.appendChild(opt);
//  alert(arr.length);
  for(i = 0; i < arr.length; i++) {
    out=arr[i].id;
    var opt = document.createElement('option');
    opt.innerHTML = out;
    opt.value = out;
    sel.appendChild(opt);
    
  }
  //alert(sel.value);
}
}
function zipcode1(){
  //  

var ids=document.forms ["registration"]["city"].value;
  var xmlhttp = new XMLHttpRequest();
  var url = "http://localhost:8180/Charge_back_calculation/zipcodeser?id="+ids;
  xmlhttp.onreadystatechange = function() {
            
      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
  var myArr1 = JSON.parse(xmlhttp.responseText);

  document.getElementById('zipcode').value=myArr1[0].name;
}}

xmlhttp.open("GET", url, true);
xmlhttp.send();  
} 
 
function fname_validation()  
{  
var uid_len =  document.getElementById("fname").value; 
var a=1;
if(uid_len!=0)
            {
         re = /^[A-Z]{1}[A-Za-z]{1,}$/;
      
        
            if(!re.test(uid_len)  )
            {
            document.getElementById("fid").innerHTML="<font color='red'>*Enter the first letter as Uppercase and enter only alphabets</font>";
             a=0;
            }
            
            if(a==1)
                  {
                   document.getElementById("fid").innerHTML="";
                 return true;
                  }
      else
            {
            return false;
            }
}
else
      {
      document.getElementById("fid").innerHTML="<font color='red'>*Enter the first name</font>";
   return false;
      
      }
}
function lname_validation()  
{  
var uid_len = document.getElementById("lname").value; 
var a=1;
if(uid_len!=0)
      {
      re = /^[A-Z]{1}[A-Za-z]{1,}$/;
        
         if(!re.test(uid_len))
       {
       document.getElementById("lid").innerHTML="<font color='red'>*Enter the first letter as Uppercase and enter only alphabets</font>";
        a=0;
       }
       
       if(a==1)
            {
             document.getElementById("lid").innerHTML="";
            return true;
            }
else
       {
       return false;
       }
      }
else
            {
            document.getElementById("lid").innerHTML="<font color='red'>*Enter the last name</font>";
            return false;
            }
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
function age_validation()  
{  
var age = document.getElementById("age").value;  
var a=1,b=1;
re = /^[0-9]{2}$/;
//re1=/[a-z]/;
if(age.length!=0)
            {
             if(age<21 || age>99)
            {  
            document.getElementById("ageid").innerHTML="<font color='red'>*Age must be above 21 and less than 99</font>";
            a=0;
            }
             if(!re.test(age))
               {
               document.getElementById("ageid").innerHTML="<font color='red'>*Enter only digits</font>";
               b=0;
               }
             if(a==1 && b==1)
               {
                 document.getElementById("ageid").innerHTML="";
                 return true;
               }
           else
            {
            return false;
            }
            
}
else
      {
      document.getElementById("ageid").innerHTML="<font color='red'>*Enter the age</font>";
      return false;
      }
}
function email_validation()  
{  

var email=document.getElementById("email").value;
var a=1;
re=/^[A-Za-z0-9._]{3,}[@]{1}[A-Za-z]{4,}[.]{1}(com)$/;
if(email.length!=0)
      {
      if(!re.test(email))
            {
            document.getElementById("eid").innerHTML="<font size='2px' color='red'>provide valid email id</font>";
            a=0;
            }
      if(a==1)
      {
      document.getElementById("eid").innerHTML="";
      return true;
      }
      else
            {
            return false;
            }
      }
else
{
document.getElementById("eid").innerHTML="<font color='red'>*Enter the email address</font>";
return false;
}
}
    
function contact_validation()  
{  
var contact = document.getElementById("contact").value;  
var cont=document.getElementById("country").value;
var a=1;
re = /^[0-9]{10}$/;
re1=/^[0-9]{13}$/;
if(contact.length!=0 && cont=="India")
            {
            if(!re.test(contact))
                  {
                  document.getElementById("coid").innerHTML="<font color='red'>Provide valid contact number</font>";
                    a=0;
                  }
            if(a==1)
            {
                  document.getElementById("coid").innerHTML="";
                  return true;
            }
            else
                  {
                  return false;
                  }
            
            }
else if(contact.length!=0 && cont=="USA")
{
if(!re1.test(contact))
      {
      document.getElementById("coid").innerHTML="<font color='red'>Provide valid contact number</font>";
    a=0;
      }
if(a==1)
{
      document.getElementById("coid").innerHTML="";
      return true;
}
else
      {
      return false;
      }

}
            
      else
            {  
        document.getElementById("coid").innerHTML="<font color='red'>*Enter the contact number</font>";
            return false;
            }
            
}

function gender_validation()
{
	
      
      var res=document.getElementById("gend");

      if(res.selectedIndex==0)
            {
            document.getElementById("genderid").innerHTML="<font color='red'>*select gender</font>";
               return false;
            }
      else
            {
            document.getElementById("genderid").innerHTML="";
        return true;
            }
      
      
}
function address_validation()
{
      
      var resout=document.getElementById("address").value;

      if(resout.length==0)
            {
            document.getElementById("addid").innerHTML="<font color='red'>*enter the address</font>";
               return false;
            }
      else
            {
            document.getElementById("addid").innerHTML="";
        return true;
            }
      
      
}
function investment_validation()  
{  

var investment = document.getElementById("investment").value;  
 var a=1;
re = /^[0-9]{1,9}$/;
if(investment!=0)
            {
            if( investment<1000 ||  !re.test(investment) )
                {
                document.getElementById("ivid").innerHTML="<font color='red'>*Provide valid investment amount</font>";
                                        a=0;
                }
            if(a==1)
                {
                document.getElementById("ivid").innerHTML="";
                return true;
                }
            else
                {
                return false;
                }
                
                }
                
      else
            {  
                  document.getElementById("ivid").innerHTML="<font color='red'>*Enter the investment amount</font>";
                                return false;
            }
            
}
function country_validation()
{
      
      var res1=document.getElementById("country");

      if(res1.selectedIndex==0)
            {
            document.getElementById("countryid").innerHTML="<font color='red'>*select country</font>";
               return false;
            }
      else
            {
            document.getElementById("countryid").innerHTML="";
        return true;
            }
      
      
}
function city_validation()
{
      
      var city1=document.forms ["registration"]["city"].value;

      if(city1==0)
            {
            document.getElementById("cityid").innerHTML="<font color='red'>*select the city</font>";
               return false;
            }
      else
            {
            document.getElementById("cityid").innerHTML="";
        return true;
            }
    
      
}


function formValidation()  
{  
if(fname_validation()&& lname_validation()&& passid_validation()&& age_validation() && email_validation() && gender_validation() && investment_validation() && country_validation() && city_validation() && contact_validation() )
{

  return true;
}  
else
      {
      return false;
      }
  
}  








function Reset() {
         document.getElementById("registration").reset();//form1 is the form id.
      }

</script> 
</head>
<script type="text/javascript">
function disablefield()
{
	document.getElementById("fundid").disabled=true;
	}
	
function enableField(v)
{
	
	if(v.value=='fund')
		{
		
	document.getElementById("fundid").disabled=false;
		}
	if(v.value!='fund')
		{
		document.getElementById("fundid").disabled=true;
		}
}
</script>
<body bgcolor="#F0FFFF" onload="disablefield()">
<center>
<h1>Welcome to Registration Page!!!</h1>
</center>
<div id=leftside>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Home.jsp"><h3>Home</h3></a>
<a href="Role.jsp"><h3>Register here</h3></a>
<a href="AboutUs.jsp"><h3>About Us</h3></a>
<a href="ContactUs.jsp"><h3>Contact Us</h3></a>
</div>



<div >
<form name='registration' method='post' action="RegisterController" onsubmit="return formValidation()">  
<table >  
<tr>
<td><label for="fname">First name</label></td>  
<td><input type="text" name="fname" id="fname" onblur="fname_validation()"><span id="fid"></span></td>  
</tr>
<tr>
<td><label for="lname">Last name</label></td>  
<td><input type="text" name="lname" id="lname" onblur="lname_validation()"><span id="lid"></span></td>  
</tr>
<tr>
<td><label for="Password">Password</label></td>  
<td><input type="password" name="Password" id="pass"  onblur="passid_validation()"><span id="pid"></span></td>  
</tr>
<tr>
<td><label for="Role">Role</label></td>  
<td>
<select name="Role" class="s" onChange="enableField(this)">

	<option selected="" value="0">(select Role)</option>
  <option value="indvl">individual</option>
  <option value="admin">Bank Representative</option>
    <option value="fund">Fund user</option>
  </select> 


<select name="fundGroupName"  id="fundid" class="s">
	<option selected="" value="0">(select fund ID)</option>
  <option value="1">1</option>
  <option value="2">2</option>
    <option value="3">3</option>
     <option value="4">4</option>
  </select></td> 
  </tr>
  <tr>
<td><label for="age">Age</label></td>  
<td><input type="text" name="age" id="age" onblur="age_validation()"><span id="ageid"></span></td>  
</tr>
<%
  	RandomNumber rm=new RandomNumber();
  int res=rm.generateRandomNumber(100000,999999);
  %>


<tr>
<td><label for="Login id">Login ID:</label></td>  
<td><input type="text" name="login" id="loginid" value="<%=res%>" class="field left" readonly></td>  
</tr>
<tr>
<td><label for="email">Email</label></td>  
<td><input type="text" name="email" id="email" onblur="email_validation()"><span id="eid"></span></td>  
</tr>
<tr>
<td><label for="gender">Gender</label></td>

  <td><select name="gender" id="gend" class="s">
  <option selected="" value="0">(select gender)</option>  
  <option value="Female">Female</option>
  <option value="Male">Male</option>
</select>
<span id="genderid"></span></td>
</tr>
<tr>
<td><label for="number">Investment:</label></td>  
<td><input type="text" name="number" id="investment" onblur="investment_validation()"><span id="ivid"></span></td>
</tr>

<tr>

<td><label for="address">Address:</label></td>  
<td><textarea class="s" name="address" id="address" onblur="address_validation()"></textarea><span id="addid"></span> </td>
</tr>
<tr>
<td><label for="country" >Country:</label></td>
<td>
<select name="country" id="country" class="s" onchange="call()">
<option selected="" value ="0">Choose Country</option>
<option value = "India">India</option>
<option value = "USA">USA</option>
</select>
<span id="countryid"></span>
</td>
</tr>

<tr>
<td>
<label for="city" class="s">City:</label></td>
<td>
<select id="city" name="city"  onchange="zipcode1()">
<option value = "Choose City">Choose City</option>
<option value = "Pune">Pune</option>
<option value = "Delhi">Delhi</option>
</select> 
<span id="cityid"></span>
</td>
</tr>

<tr>
<td>
<label for="zipcode" class="s">Zip code:</label>
<td><input type="text" name="zip" id="zipcode">
</td>
</tr>

<tr>
<td><label for="number">Contact:</label></td>  
<td><input type="text" name="number" id="contact" onblur="contact_validation()"><span id="coid"></span></td> 
<td><input type="hidden" name="autoId" id="autoId" value=<%=res%>>
</td>
</tr>
<tr>
<td><input type="submit" name="submit" class="sub" value="Submit"/></td> 
 <td><input type="reset" name="reset"  class="sub1" value="Reset" onclick="this.form.Reset();"/>
</td>
</tr>




 
</table>

</form>  
</div>

<div>
<footer><br><br><br><br>
  <p>copyright &copy <a href="mailto:Cbc@cognizant.com">Cbc@cognizant.com</a> 2016</p>
  
</footer>

</div>
</body>
</html>

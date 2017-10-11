<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register page</title>
</head>


	<script type="text/javascript">  
	function validate()  
	 {  
	      var d=document.register;  
	      var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;  
	      if(d.fullname.value == '')  
	      {  
	           alert("Enter Name"); 
	                   document.getElementById('fullname').style.backgroundColor = "red";
	 
	           d.fullname.focus();  
	           return false;  
	         }
	           else{
	            document.getElementById('fullname').style.backgroundColor = "green";
	 
	           }
	       
	      if(d.fullname.value.length<=2)  
	      {  
	      alert("Minimum Name Should be greater than two");  
	      document.getElementById('fullname').style.backgroundColor = "red";

	      return false;       
	      }  
	      else{ 
	            document.getElementById('fullname').style.backgroundColor = "green";
	 
	           }
	      if(d.department.value == '')  
	      {  
	           alert("Enter Department");  
	          document.getElementById('department').style.backgroundColor = "red";

	           return false;  
	      }  
	      else{
	            document.getElementById('department').style.backgroundColor = "green";
	 
	           }
	      if(d.department.value.length<=3)  
	      {  
	      alert("Enter full department name");  
	       document.getElementById('department').style.backgroundColor = "red";

	      return false;       
	      } 
	      else{
	            document.getElementById('department').style.backgroundColor = "green";
	 
	           }
	     
	 
	      if(d.email.value == '')  
	      {  
	      document.getElementById('email').style.backgroundColor = "red";

	      alert("Email is is Required");  
	      d.email.focus();  
	      return false;       
	      }  
	      else{
	            document.getElementById('email').style.backgroundColor = "green";
	 
	           }
	      if(reg.test(d.email.value) == false)  
	      {  
	      alert("Invalid Email"); 
	      document.getElementById('email').style.backgroundColor = "red";
	 
	      return false;       
	      } 
	      else{
	            document.getElementById('email').style.backgroundColor = "green";
	 
	           }

	      if(d.password.value == '')  
	      {
	      alert("Password is  Required");  
	      document.getElementById('password').style.backgroundColor= "red";

	      d.password.focus();  
	      return false;       
	      }  
	      else
	          document.getElementById('password').style.backgroundColor = "white";
	      
	      if(d.password.value != d.cpassword.value)  
	      {  
	      alert("Passwords Mismatch")
	         document.getElementById('password').style.backgroundColor = "red";

	      return false;      
	      } 
	      else
	          document.getElementById('password').style.backgroundColor = "green";
	      
	    

	 } 
	 
 </script>
 <style>
label {
  	float: left;
  	width: 175px;
  	text-align: right;
  	padding-right: 12px;
  	margin-top: 12px;
  	clear: left;
  }

  input {
  	margin-top: 12px;
  }

  td {
  font-weight: bold;
  color: white;
  }

    
  h1 {
  	font-size: 25;
  	font-family: courier;
  	background-color: #483D8B;
  	padding: 30px;
  	color: gray;
   }
  
  h2{
  	background-color: #ADFF2F;
  	color: blue;
  	font-weight: normal;
  	font-family: Arial;
  	padding: 10px;
  	font-size: 20;
  	text-align:center;
  }
  h3{
   color: #ADFF2F;
   text-align: center;
  }
  h5{
  	color:red;
    font-size: 25;
    text-align: center;
  }
   }
  
 .wishlist{
 	color: #483D8B;
 	font-size: 20;
 }
div.ex {
    
	text-align: right width:300px;
	padding: 100px;
	border: 5px solid white;
	margin: 0px
	
}
body {
   background-color: black;
}
p {
color: white;
text-align:right;
}
</style>
<body>
<div>
	  <img src="wishlistr.GIF"/>
	  
	  </div>

	  <div id="list">
	   
	  </div> 
  
  	<div style="clear:both;"></div>
  <div id="h2">
    <h2>REGISTER TO BE A PART OF WORKSHOP</h2>
    <h3 class="wishlist"> WORKSHOP MEMBER REGISTRATON</h3>
  </div> 

  <div id="h3">
    <p>Already a member ? skip this step and <a href="login.jsp">login directly</a> </p>
  </div>

   <div id="h5">
     <h5>ENTER YOUR DETAILS</h5>
   </div>
	<form action="/register" name="register" method="post" onSubmit="return validate()">
		<table class="tble" width="500" border="1" align="center" height="100">
			<tr>
				<td>Full Name<span style="color:black"></span>:
				</td>
				<td><input type="text" name="fullname" id="fullname"></td>
			</tr>
			<tr>
				<td>Department<span style="color: black"></span>:
				</td>
				<td><input type="text" name="department" id="department"></td>
			</tr>
			<tr>
				<td>Email<span style="color: black"></span>:
				</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td>Password<span style="color: black"></span>:
				</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
			<tr>
				<td>Confirm-Password:</td>
				<td><input type="password" name="cpassword" id="cpassword"></td>
			</tr>

			
				<td colspan="2" align="center">
				<input type="submit" name="submit" id="submit" value="REGISTER"></td>
			
			
		</table>
	</form>


</body>
</html>
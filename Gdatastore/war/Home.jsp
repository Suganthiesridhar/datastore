<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<style>
h2{
color: #ADFF2F;
font-family: Arial;
text-align : center;

}
.out{
text-align: right;

}
p{
font-size: 20;
color:yellow;
text-align:center;
font-family:arial;
}
body{
background-color:black;
}
</style>
<body>
	<%    HttpSession var=request.getSession();  
String name=(String)var.getAttribute("name");   %>
	<h2>
		Welcome, You are now eligible to attend the workshop on GoOGLE APP ENGINE...!!!
	</h2>
	<p>Click the link to display the members registered<a align=left href="Showpersons.jsp"> Members Details</a></p>
	<br><br>
	<form action=Delete method=post>
	<input type=text name=delete placeholder="Delete by name">
	<input type=submit value="Delete">
	
	</form>
	
	<div class="out">
	<a align=right href="Logout">Logout</a>
</div>



</body>
</html>	s
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>

<script>
	history.pushState(null, null, document.URL);
	window.addEventListener('popstate', function() {
		window.alert("Please login");
		history.pushState(null, null, document.URL);
		location.reload();
	});
</script>
<style>
.para{
color:yellow;
text-align: center;
}
.tablecon {
	margin-top: 4cm;
	color: red;
	margin-top: 4cm;
}
#log{
background-color:#ADFF2F;
color:white;


}
</style>
<body style="background-color: black;">

<div id="log">
<h1>LOGIN</h1>
</div>
	
	<form action="login" method=post>
		<table class="tablecon" width="400" border="4" align="center">

			<tr>
				<td>UserName<span style="color: blue"></span>
				</td>
				<td><input type=text name=name ></td>
			</tr>
			<td>Password<span style="color: blue"></span>
			</td>
			<td><input type=password name=password></td>
			</tr>
			<tr>
				<td><input type=submit value=submit></td>
				
			</tr>
		</table>
	</form>
	<br><br>
	<div class="para">
     Not a member ? <a href=/register.jsp>Register</a>Now
</div>




</body>
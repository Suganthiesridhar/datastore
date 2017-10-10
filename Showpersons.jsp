<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.google.appengine.api.datastore.DatastoreService"%>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory"%>
<%@ page import="com.google.appengine.api.datastore.Entity"%>
<%@ page import="com.google.appengine.api.datastore.PreparedQuery"%>
<%@ page import="com.google.appengine.api.datastore.Query"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display members</title>

</head>
<style>
link{
text-align:center;
}
</style>


<body>

	<form method="post" name="form" action="">
		<table width="100%" cellpadding="0" cellspacing="0" border="1">
			<tr>
				<th>fullName</th>
				<th>department</th>
				<th>Email</th>
				<th>Password</th>
				
			</tr>


			<%
				DatastoreService ds = DatastoreServiceFactory.getDatastoreService();

				Query query = new Query("person");
				PreparedQuery prepque = ds.prepare(query);

				for (Entity entity : prepque.asIterable())

				{
			%>

			<tr>
				<td><%=entity.getProperty("fullname")%></td>
				<td><%=entity.getProperty("department")%></td>
				<td><%=entity.getProperty("email")%></td>
				<td><%=entity.getProperty("password")%></td>
				
			</tr>

			<%
				}
			%>
		</table>
	</form>
	<div class="link">
	<a align=right href="Logout">Logout</a>
	</div>
</body>
</html>
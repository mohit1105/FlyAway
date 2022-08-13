<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.Servlets.Login"%>

<%
try {
	Class.forName("com.mysql.jdbc.Driver");

} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head>
<body>
<h1>Admin Portal</h1>
	<%
	if (Login.isLoggedIn) {
	%>
	<table style="width:1000px; text-align:center" >
		<thead>
			<tr>
				<th scope="col">Flight ID</th>
				<th scope="col">Name</th>
				<th scope="col">Source</th>
				<th scope="col">Destination</th>
				<th scope="col">Day</th>
				<th scope="col">Ticket Price</th>
			</tr>
		</thead>
		<%
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyway", "root", "Harsh@123");
			Statement statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM flyway.airline;");
			while (resultSet.next()) {
		%>

		<tbody style="width:1000px; text-align:center">
			<tr>
				<td><%=resultSet.getString("id")%></td>
				<td><%=resultSet.getString("name")%></td>
				<td><%=resultSet.getString("source")%></td>
				<td><%=resultSet.getString("destination")%></td>
				<td><%=resultSet.getString("days")%></td>
				<td><%=resultSet.getString("price")%></td>
			</tr>
		</tbody>



		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		} else {
		out.print("You must Login first");
		}
		%>
	</table>
	<a href="index.jsp"><button style="align:center">Logout</button></a>
</body>
</html>
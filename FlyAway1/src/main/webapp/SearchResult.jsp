<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ page import="com.businesslogic.Search"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Searched Result</title>
</head>
<body>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");

	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	%>
	<h2 align="center">
		<span><strong>Search Results</strong></span>
	</h2>
	<p align="center">
		<span><strong> Showing available flights from <%=Search.source%>
				to <%=Search.destination%> <br> Date of travel : <%=Search.date%>
				(<%=Search.day%>) <br> No of travellers : <%=Search.persons%> <br>
				<table style="width: 1000px; text-align: center">
					<thead>
						<tr>
							<th scope="col">Flight Number</th>
							<th scope="col">Name</th>
							<th scope="col">Source</th>
							<th scope="col">Destination</th>
							<th scope="col">Day</th>
							<th scope="col">Ticket Price</th>
						</tr>
					</thead>
					<%
					try {
						Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyway", "root", "Mohit@1105");
						Statement statement = con.createStatement();
						ResultSet resultSet = statement.executeQuery("SELECT * FROM flyway.FlyInfo;");
						while (resultSet.next()) {
					%>

					<tbody style="width: 1000px; text-align: center">
						<tr>
							<td><%=resultSet.getString("id")%></td>
							<td><%=resultSet.getString("name")%></td>
							<td><%=Search.source%></td>
							<td><%=Search.destination%></td>
							<td><%=Search.date%></td>
							<td><%=resultSet.getString("price")%></td>
						</tr>
					</tbody>
					<td>
					
						<form action="RegistrationDetails.jsp" method="post">
							<input type="hidden" name="name"
								value="<%=resultSet.getString("name")%>"> <input
								type="hidden" name="price"
								value="<%=resultSet.getString("price")%>"> 
								<input
								type="hidden" name="id"
								value="<%=resultSet.getString("id")%>"> 
								<input type="submit" value="Submit">								
						</form>
					</td>
					<%
					}
					}
						catch (Exception e) {
					e.printStackTrace();
					}
					
					%>
				</table>
</body>
</html>
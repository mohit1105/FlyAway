<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="com.businesslogic.Booking" %>
	<%
    Booking.bid = request.getParameter("id");
    Booking.bprice = Integer.parseInt(request.getParameter("price"));
    Booking.bname = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details Page</title>
</head>
<body>
	<h1>Enter the Detail</h1>
	<form action="Payment.jsp" method="post">
		<label>Name</label><br> <input type="text" name="text" required><br>
		<label>Email ID</label><br> <input type="email" name="email"
			required><br> <label>Phone Number</label><br> <input
			type="text" name="pnumber" required><br> <label>Addhar
			Details</label><br> <input type="text" name="email"><br> <input
			type="checkbox" value="Agree the Term and Condition" required>Agree
		the Term and Condition<br><br>
		<button>Submit</button>
	</form>
</body>
</html>
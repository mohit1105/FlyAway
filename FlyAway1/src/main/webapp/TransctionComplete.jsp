<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.businesslogic.Search"%>
<%@ page import="com.businesslogic.Booking"%>
<%
Booking.nameoncard = request.getParameter("name_on_card");
Booking.carddetails = request.getParameter("card_details");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Summary</title>
</head>
<body>
	<h1>Thank you for Booking Ticket</h1>
	<span><%=Search.source%> to <%=Search.destination%> || <%=Search.date%>
		(<%=Search.day%>)</span>
			<p align="left"><%=Booking.bid%>
			-
			<%=Booking.bname%>
			(Travellers
			<%=Search.persons%>)
		</p>
		<br> <br>
		<h3>
			<strong>Passenger Summary</strong>
		</h3>
		<h3>
			Booking Name-<%=Booking.pname%>
			| Email-
			<%=Booking.pemail%>
			| Phone-
			<%=Booking.pphone%></h3>
		<br>
		<h3>
			<strong>Payment Summary</strong>
		</h3>
		<h4>
			Payment By-<%=Booking.nameoncard%>
			| Card No-
			<%=Booking.carddetails%></h4>
		<br>
		<h2 align="right">
			<strong>Total Paid- Rs.<%=Search.persons * Booking.bprice%></strong>
		</h2>
		<button onclick="window.print()">Print the Ticket</button>
		<a herf="index.jsp"><button>Main Menu</button></a>
		
</body>
</html>
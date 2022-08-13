<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Portal Login</title>
</head>
<body>
	<h1>Admin login</h1>
	<form action="Login" method="post">
		<label>Email Address</label> <input type="email" name="adminemail"><br>
		<small>&nbsp;&nbsp;Email: flyaway@gamil.com</small><br> <label>Password</label>
		<input type="password" name="adminpassword"><br> <small>&nbsp;&nbsp;Password:
			Admin</small><br>
		<button type="submit" value="Submit">Submit</button>
	</form>
</body>
</html>


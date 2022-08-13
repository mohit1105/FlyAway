package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Login.java")

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 public static boolean isLoggedIn = false;
    public static String password = "Admin";
    public static String email = "flyaway@gamil.com";
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();

	        String email = request.getParameter("adminemail");
	        String pass = request.getParameter("adminpassword");

	        if (email.equals(Login.email) && pass.equals(Login.password)){
	            isLoggedIn = true;
	            out.println("You have LoggedIn");
	            response.sendRedirect("AdminDashboard.jsp");
	        }
	        else {
	            isLoggedIn = false;
	            out.println("Login Failed : Incorrect email or Password");
	        }
	        out.close();
	}

}

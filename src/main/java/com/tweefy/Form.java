package com.tweefy;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Form extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		  String name = request.getParameter("nm");
		  String email = request.getParameter("em");
		  String subject = request.getParameter("sub");
		  String message = request.getParameter("message");
		  
		  
		  response.setContentType("text/html");
		  
		  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String username = "root";
			String password = "root";
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tweefy", username, password);
			
			PreparedStatement ps = con.prepareStatement("insert into forminfo (name, email, subject, message) values(?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, subject);
			ps.setString(4, message);
			int i = ps.executeUpdate();
			if(i>0) {
				RequestDispatcher rd = request.getRequestDispatcher("formsubmitted.html"); 
            	rd.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e);
		} 
	}
}

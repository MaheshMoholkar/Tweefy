package com.tweefy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String DB_URL = "jdbc:mysql://localhost:3306/tweefy";
	    String DB_USER = "root";
	    String DB_PASSWORD = "root";
		response.setContentType("text/html");
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		HttpSession session=request.getSession();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM logininfo WHERE username = ? AND password = ?");
            ) {
            
            statement.setString(1, user);
            statement.setString(2, pass);
            
            ResultSet resultSet = statement.executeQuery();
            
            if (resultSet.next()) {
            	PreparedStatement ps = connection.prepareStatement("SELECT * FROM registerinfo WHERE username = ?");
                ps.setString(1, user);
                ResultSet rs = ps.executeQuery();
                rs.next();
                String n = rs.getString(2)+" "+rs.getString(3);
                session.setAttribute("email",rs.getString(5));
                session.setAttribute("name",n);
		        session.setAttribute("sign","Sign Out"); 
		        session.setAttribute("userid", user);
            	RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); 
            	rd.forward(request, response);
                System.out.println("Login successful");
            } else {
            	session.setAttribute("login",false);
            	RequestDispatcher rd = request.getRequestDispatcher("login.jsp"); 
            	rd.forward(request, response);
                System.out.println("Login failed");
            }
        } catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
        
    	
            

package com.tweefy;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Register extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		HttpSession session=request.getSession(); 
		PreparedStatement ps, s, p;
		ResultSet rs, r;
		try (Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tweefy","root","root")) {
			   ps=con.prepareStatement("select * from logininfo where username = ?");
			   ps.setString(1,username);
			   rs = ps.executeQuery();
			   s=con.prepareStatement("select * from registerinfo where (mobile = ? or email = ?)");
			   s.setString(1, mobile);
			   s.setString(2, email);
			   r = s.executeQuery();
			   if(rs.next()) {
				   if(r.next()) {
					   session.setAttribute("login", true);
					   RequestDispatcher rd = request.getRequestDispatcher("login.jsp"); 
					   rd.forward(request, response); 
				   }
				   else {
					   session.setAttribute("register", true);
					   session.setAttribute("id", "Username");
					   RequestDispatcher rd = request.getRequestDispatcher("register.jsp"); 
					   rd.forward(request, response);
				   }
			   }
			   else if(r.next()){
				   if(r.getString(4)==mobile) {
					   session.setAttribute("loginid", "Mobile");
				   }
				   else {
					   session.setAttribute("loginid", "Email");
				   }
				   session.setAttribute("login", true);
				   RequestDispatcher rd = request.getRequestDispatcher("login.jsp"); 
				   rd.forward(request, response); 
			   }
			   else {
				   ps=con.prepareStatement("insert into logininfo values(?,?)");
				   ps.setString(1,username);
				   ps.setString(2,password);
				   ps.executeUpdate();
				   p=con.prepareStatement("insert into registerinfo values (?,?,?,?,?)");
				   p.setString(1,username);
				   p.setString(2,firstName);
				   p.setString(3,lastName);
				   p.setString(4,mobile);
				   p.setString(5,email);
				   int i = p.executeUpdate();
				   if(i>0) { 
					   session.setAttribute("userid", username);
				       session.setAttribute("sign","Sign Out");  
				       RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); 
		           	   rd.forward(request, response);
				   }
			   }
			  con.close();
		} 
		catch(Exception e) {
				System.out.println(e);
		}
	}
}


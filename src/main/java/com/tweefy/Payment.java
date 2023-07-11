package com.tweefy;
import java.util.Calendar;
import java.util.Date;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Payment extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		calendar.add(Calendar.DAY_OF_YEAR, 30);
		Date newDate = calendar.getTime();

		
		try {
			   Class.forName("com.mysql.cj.jdbc.Driver");
			   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tweefy","root","root");
			   PreparedStatement ps=con.prepareStatement("insert into logininfo values(?,?,?,?,?,?)");
			   ps.setString(1,username);
			   ps.setString(2,firstName);
			   ps.setString(3,lastName);
			   con.close();
			} 
			catch(Exception e) {
				System.out.println(e);
			} 
	}
}

package com.tweefy;
import java.io.IOException;
import java.time.LocalDate;
import java.util.UUID;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Buy extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		LocalDate currentDate = LocalDate.now();
		LocalDate futureDate = currentDate.plusDays(30);
		double tax;
		
		UUID uniqueId = UUID.randomUUID();
        String invoiceId = uniqueId.toString().replace("-", "").substring(0, 14);
		invoiceId = invoiceId.toUpperCase();
		int price = Integer.parseInt(request.getParameter("price"));
		double total = 0;
		if (price==0){
			tax = 0;
			total = price + tax;
		} else if(price==9) {
			tax = 1.35;
			total = price + tax;
		} else {
			tax = 2.85;
			total = price + tax;
		}
		HttpSession session=request.getSession();
		session.setAttribute("date", futureDate);
		session.setAttribute("price", price);
		session.setAttribute("tax", tax);
		session.setAttribute("total", total);
		session.setAttribute("invoice", invoiceId);
		RequestDispatcher rd = request.getRequestDispatcher("payment.jsp"); 
    	rd.forward(request, response);
	}
}
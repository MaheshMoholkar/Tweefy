package com.tweefy;

import java.io.*;
import javax.mail.*;
import javax.mail.internet.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.Properties;

public class Mail extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp-relay.sendinblue.com");
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.ssl.trust", "smtp-relay.sendinblue.com");
        properties.put("mail.smtp.ssl.protocols", "TLSv1.2");

        Session session = Session.getDefaultInstance(properties, new Authenticator() {
        	protected PasswordAuthentication getPasswordAuthentication() {
        		return new PasswordAuthentication("silverlining337700@mail.com", "Z5TmO78S2FP0bYGN");
        	}
        });

        try {
            Message email = new MimeMessage(session);
            email.setFrom(new InternetAddress("silverlining337700@mail.com"));
            System.out.print(email);
            email.setRecipient(Message.RecipientType.TO, new InternetAddress("mahesh.moholkar.dypimr@gmail.com"));
            email.setSubject(subject);
            email.setText(message);
            Transport.send(email);
            response.sendRedirect("formsubmitted.html");
        } catch (MessagingException e) {
            throw new ServletException(e);
        }
    }
}

package com.customer;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isSuccess;
		
		isSuccess = CustomerDBUtil.insertCustomer(name, email, phone, userName, password);
	
		if(isSuccess == true) {
			response.sendRedirect("successMessage.jsp");
			
		} else {
			response.sendRedirect("registration.jsp");
		}
	}

}

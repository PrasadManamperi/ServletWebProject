package com.customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
        
        Customer user = CustomerDBUtil.validateUser(username, password);
        
        if (user == null) {
//             handle login failure
            response.sendRedirect("login.jsp");
        } else {
//             Set user details in session
            HttpSession session = request.getSession();
           /* session.setAttribute("user", user); */
            
            
            if ("admin".equals(user.getRole())) {
//            	 Set admin details in a session
            	session.setAttribute("admin", user);
//                 Redirect to admin page
                response.sendRedirect("admin.jsp");
            } else {
//            	Set user details in session
            	session.setAttribute("user", user);
                // Redirect to customer home page
                response.sendRedirect("home.jsp");
            }
        }
    }
}

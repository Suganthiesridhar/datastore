package com.gooapp.Gdatastore;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Register extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		boolean reg;

		String fullname = request.getParameter("fullname");
		String department = request.getParameter("department");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println("fullname:" + fullname + "department:" + department + "email:" + email + "password:" + password);

		reg = Test.CreateorUpdate(fullname, department, email, password);
		System.out.println("The value of reg is:" + reg);

		if (reg) {

			System.out.println("You have Registered Successfully !!!");

			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");

			rd.forward(request, response);

		} else {
			System.out.println("failed to Register,Try Again!!");

			RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");

			rd.forward(request, response);
		}

	
	}

}

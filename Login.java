package com.gooapp.Gdatastore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		boolean checklog;

		String name = request.getParameter("name");
		String password = request.getParameter("password");
		System.out.println("name:" + name + "password:" + password);

		checklog = Test.LoginTest(name, password);
		System.out.println("The value of checklog is:" + checklog);

		if (checklog) {

			HttpSession session = request.getSession();
			session.setAttribute("name", name);
			System.out.println("Logged in Successfully..!!");
			RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
			rd.forward(request, response);// method may be include or forward

		} else {
			System.out.println("failed to Login..TRY AGAIN..!!");

			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid login details');");
			out.println("location='login.jsp';");
			out.println("</script>");

			 }

	}
}

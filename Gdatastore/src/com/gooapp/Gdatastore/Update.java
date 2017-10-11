package com.gooapp.Gdatastore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

public class Update extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		boolean update;

		String fullname = request.getParameter("fullname");
		String department = request.getParameter("department");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println("fullname:" + fullname + "department:" + department + "email:" + email + "password:" + password);

		update = Test.CreateorUpdate(fullname, department, email, password);
		System.out.println("The value of checkup is:" + update);

		if (update) {

			System.out.println("Updated successfully");
			response.sendRedirect("Showpersons.jsp");
			
		}
		else {
			System.out.println("Updation failed..Try again..!!");

			RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");

			rd.forward(request, response);
		}

		
	}

}

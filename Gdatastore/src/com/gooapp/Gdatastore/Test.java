package com.gooapp.Gdatastore;


import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Key;

public class Test {

	public static DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
	
	static boolean value;

	public static boolean CreateorUpdate(String fullname, String department, String email, String password) {
		System.out.println("Create/Update the person");
		Entity person = new Entity("person", fullname);
		person.setProperty("fullname", fullname);
		person.setProperty("department", department);
		person.setProperty("email", email);
		person.setProperty("password", password);
		ds.put(person);
		System.out.println("Value of the person:" + person);
		Key k    = KeyFactory.createKey("person", fullname);
		System.out.println("Value of the key is:" + person.getKey() + "The kind value is:" + person.getKind());

		return true;
	}

	
	public static boolean LoginTest(String fullname, String password) {
		String un = null;
		String pwd = null;

		Query que = new Query("person");
		PreparedQuery prepque = ds.prepare(que);
		
		for (Entity var : prepque.asIterable()) {
			un = (String) var.getProperty("fullname");
			pwd = (String) var.getProperty("password");
			System.out.println("username and passwords are:" + un + "and" + pwd);

			if (pwd != null && pwd.equalsIgnoreCase(password) && un.equalsIgnoreCase(fullname)) {
				
				System.out.println(" true");
				return true;

			}
		}
		System.out.println("outside for loop::from db:" + un + "&&" + pwd + "entered::" + password + "&&" + fullname);
		

		return false;
	}

	public static void DeleteTest(String del) {
		// deleting the person
		Key personkey = KeyFactory.createKey("person", del);
	
		System.out.println("The keyvalue of person is :" + personkey);
		ds.delete(personkey);
	}

}
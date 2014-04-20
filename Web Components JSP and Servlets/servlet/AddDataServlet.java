package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;

/**
 * Servlet implementation class AddDataServlet
 */
public class AddDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDataServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String xValue = request.getParameter("xValue");
		String yValue = request.getParameter("yValue");
		String selectedTable = request.getParameter("selectedTable");
		System.out.println(xValue + " : " + yValue + " : " + selectedTable);
		
		/**** Connect to MongoDB ****/
		// Since 2.10.0, uses MongoClient
		MongoClient mongo = new MongoClient("localhost", 27017);
		
		/**** Get database ****/
		// if database doesn't exists, MongoDB will create it for you
		DB db = mongo.getDB("espawsdb");
		
		/**** Get collection / table from 'testdb' ****/
		// if collection doesn't exists, MongoDB will create it for you
		DBCollection table = db.getCollection(selectedTable);
		//DBCollection table = db.getCollection("user");
		 
		/**** Insert ****/
		// create a document to store key and value
		BasicDBObject document = new BasicDBObject();
		document.put("X", xValue);
		document.put("Y", yValue);
		//document.put("createdDate", new Date());
		table.insert(document);
		
		request.setAttribute("Message", "Saved.");
		request.setAttribute("selectTableServlet", selectedTable);
		request.getRequestDispatcher("addNewDataPage.jsp").forward(request, response);
		
	}

	
			 
			
	
	
}

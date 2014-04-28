package com.servlet;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;
import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

/**
 * Servlet implementation class CreateTableServlet
 */
public class CreateTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateTableServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("tableNames", getCollections());
		request.getRequestDispatcher("createTable.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String createTableName = request.getParameter("createTableText");
		try{
			MongoClient mongo = new MongoClient("localhost", 27017);
			DB db = mongo.getDB("espawsdb");
			boolean createTable = true;
			for(String name : db.getCollectionNames()){
				if(name.equals(createTableName)){
					createTable=false;
				}
			}
			if(createTable){
				System.out.println("creating table");
				DBObject options = BasicDBObjectBuilder.start().add("capped", true).add("size", 2000000000l).get();
		        db.createCollection(createTableName, options);
			}else{
				request.setAttribute("message", "Table Already Exists");
			}
		}catch(Exception e){
			request.setAttribute("message", e.getMessage());
		}
		request.setAttribute("tableNames", getCollections());
		request.getRequestDispatcher("createTable.jsp").forward(request, response);
	}
	
	private ArrayList getCollections(){
		ArrayList tableNames=null;
		try {
			MongoClient mongo = new MongoClient("localhost", 27017);
			DB db = mongo.getDB("espawsdb");
			tableNames = new ArrayList();
			for(String name : db.getCollectionNames()){
				System.out.println("I am in collections " + name);
				if(!name.equals("system.indexes")){
					tableNames.add(name);
				}
			}
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return tableNames;
	}

}
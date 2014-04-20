package com.servlet;

import java.io.IOException;
import java.util.Collections;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

/**
 * Servlet implementation class SelectTableServlet
 */
public class SelectTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectTableServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("tableNames", getCollections());
		request.getRequestDispatcher("selectTable.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Source1Table = request.getParameter("Source1");
		String Source2Table = request.getParameter("Source2");
		MongoClient mongo = new MongoClient("localhost", 27017);
		 
		/**** Get database ****/
		// if database doesn't exists, MongoDB will create it for you
		DB db = mongo.getDB("espawsdb");
	 
		/**** Get collection / table from 'testdb' ****/
		// if collection doesn't exists, MongoDB will create it for you
		DBCollection tableS1 = db.getCollection(Source1Table);
		DBCollection tableS2 = db.getCollection(Source1Table);
		
		ArrayList<tableprint> SourcePrint = new ArrayList<tableprint>();
		//ArrayList<tableprint> Source2Print = new ArrayList<tableprint>();

		
		DBCursor cursorS1 = tableS1.find();
		while (cursorS1.hasNext()) {
			DBObject dbObject = cursorS1.next();
			tableprint print = new tableprint((String)dbObject.get("Y"), (String) dbObject.get("X"), "S1");
			SourcePrint.add(print);
		}
		
		DBCursor cursorS2 = tableS2.find();
		while (cursorS2.hasNext()) {
			DBObject dbObject = cursorS2.next();
			tableprint print = new tableprint((String)dbObject.get("Y"), (String) dbObject.get("X"), "S2");
			SourcePrint.add(print);
		}
		System.out.println("Before");
		for(tableprint printobj : SourcePrint){
			
			System.out.println(printobj.GetSource() +  " : " + printobj.Getx() + " : " + printobj.Gety());
		}
		Collections.sort(SourcePrint);
		System.out.println("After Sort");
		for(tableprint printobj : SourcePrint){
		  
			System.out.println(printobj.GetSource() +  " : " + printobj.Getx() + " : " + printobj.Gety());
		}
		
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

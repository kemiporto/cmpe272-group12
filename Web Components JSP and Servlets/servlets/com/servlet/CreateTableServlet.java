package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.util.Util;
import com.mongodb.BasicDBObject;
import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;

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
		request.setAttribute("tableNames", Util.getCollections());
		request.getRequestDispatcher("createTable.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String createTableName = request.getParameter("createTableName");
		String createTableX = request.getParameter("createTableX");
		try{
			boolean createTable = true;
			for(String name : Util.getMongoDb().getCollectionNames()){
				if(name.equals(createTableName)){
					createTable=false;
				}
			}
			if(createTable){
				System.out.println("creating table");
				DBObject options = BasicDBObjectBuilder.start().get();				
				DBCollection table = Util.getMongoDb().createCollection(createTableName, options); 
				BasicDBObject document = new BasicDBObject();
				if( createTableX.isEmpty() )
				{
					createTableX = "Date";
				}
				document.put("_id", createTableX);
				document.put("value", "Value");
				table.insert(document);                                                               
                                boolean createTableCollections = true;
                                for(String name : Util.getMongoDb().getCollectionNames()){
                                        if(name.equals("TableCollections")){
                                                createTableCollections=false;
                                        }
                                }
                                if( createTableCollections )
                                {                                
                                    DBObject options2 = BasicDBObjectBuilder.start().get();    
                                    DBCollection tableResourceCollection = Util.getMongoDb().createCollection("TableCollections", options2);  
                                    BasicDBObject documentResourceCollection = new BasicDBObject();
                                    documentResourceCollection.put("_id", createTableName);
                                    documentResourceCollection.put("value", createTableX);
                                    tableResourceCollection.insert(documentResourceCollection);
                                }
                                else
                                { 
                                    DBCollection tableResourceCollection = Util.getMongoDb().getCollection("TableCollections");
                                    BasicDBObject documentResourceCollection = new BasicDBObject();
                                    documentResourceCollection.put("_id", createTableName);
                                    documentResourceCollection.put("value", createTableX);
                                    tableResourceCollection.insert(documentResourceCollection);  
                                }
			}else{
				request.setAttribute("message", "Table Already Exists");
			}
		}catch(Exception e){
			request.setAttribute("message", e.getMessage());
		}
		request.setAttribute("tableNames", Util.getCollections());
		request.getRequestDispatcher("createTable.jsp").forward(request, response);
	}
}
package com.servlet;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;

@MultipartConfig
public class UploadFileServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3873731201036220126L;

	public UploadFileServlet() {
		// TODO Auto-generated constructor stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String selectedTable = request.getParameter("selectedTable");
		MongoClient mongo = new MongoClient("localhost", 27017);
		
		/**** Get database ****/
		// if database doesn't exists, MongoDB will create it for you
		DB db = mongo.getDB("espawsdb");
		
		/**** Get collection / table from 'testdb' ****/
		// if collection doesn't exists, MongoDB will create it for you
		DBCollection table = db.getCollection(selectedTable);
		 
		Part uploadedFile = request.getPart("file"); // Retrieves <input type="file" name="file">
		InputStream content = uploadedFile.getInputStream();
		BufferedReader br = new BufferedReader(new InputStreamReader(content));
		String line;
		Pattern patternLine = Pattern.compile(" ");
		while((line = br.readLine()) != null) {
			String[] singleData = new String[2];
			singleData = patternLine.split(line, 2);

			/**** Insert ****/
			// create a document to store key and value
			BasicDBObject document = new BasicDBObject();
			document.put("X", singleData[0]);
			document.put("Y", singleData[1]);
			table.insert(document);

		}
		br.close();
		
		request.setAttribute("Message", "Saved.");
		request.setAttribute("selectTableServlet", selectedTable);
		request.getRequestDispatcher("addNewDataPage.jsp").forward(request, response);

	}
}

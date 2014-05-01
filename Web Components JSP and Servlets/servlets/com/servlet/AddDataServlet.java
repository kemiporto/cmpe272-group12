package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.util.Util;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;

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
		
		DBCollection table = Util.getMongoDb().getCollection(selectedTable);
		BasicDBObject document = new BasicDBObject();
		document.put("X", xValue);
		document.put("Y", yValue);
		table.insert(document);
		
		request.setAttribute("Message", "Saved.");
		request.setAttribute("selectTableServlet", selectedTable);
		request.getRequestDispatcher("addNewDataPage.jsp").forward(request, response);	
	}	
}
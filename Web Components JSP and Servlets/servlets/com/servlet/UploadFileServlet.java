package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("selected table : " + selectedTable);
		response.sendError(HttpServletResponse.SC_NOT_IMPLEMENTED);
	}
}

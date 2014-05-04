package com.servlet;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.util.Util;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("tableNames", Util.getCollections());
		request.getRequestDispatcher("selectTable.jsp").forward(request,
				response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String Source1Table = request.getParameter("Source1");
		String Source2Table = request.getParameter("Source2");
		request.setAttribute("source1String", getTableData(Source1Table, Source1Table));
		request.setAttribute("source2String", getTableData(Source2Table, Source2Table));
		request.getRequestDispatcher("viewGraph.jsp")
				.forward(request, response);
	}

	private String getTableData(String tableName, String source) throws UnknownHostException {
		if (tableName != null && tableName.trim().length() > 0) {
			DBCollection tableS1 = Util.getMongoDb().getCollection(tableName);
			DBCursor cursorS1 = tableS1.find();
			StringBuffer source1String = new StringBuffer( "[" );
			if( cursorS1.hasNext() )
			{
				DBObject dbObject = cursorS1.next();
				source1String.append(" ['" + (String) dbObject.get("_id") + "','"
						+ (String) dbObject.get("value") + "']");
			}
			while (cursorS1.hasNext()) {
				DBObject dbObject = cursorS1.next();
				source1String.append(",['" + (String) dbObject.get("_id") + "',"
						+ (String) dbObject.get("value") + "]");
			}
			source1String.append("]");
			return source1String.toString();
		}
		return "";
	}
}
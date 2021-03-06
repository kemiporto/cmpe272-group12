package com.servlet;

import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

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
                String ViewGraphButtonClicked = request.getParameter("ViewGraph");
                String Source1Table = request.getParameter("Source1");
                if( ViewGraphButtonClicked != null && ViewGraphButtonClicked.equals("SelectedTable") &&
                    Source1Table != null && !Source1Table.isEmpty() )
                {
                    doPost( request, response );
                }
                else if( Source1Table != null && !Source1Table.isEmpty() )
                {                       
			DBCollection tableSource1 = Util.getMongoDb().getCollection(Source1Table);
			DBCursor cursorSource1 = tableSource1.find();
                        String StringX = new String();
                        String StringY = new String();
			if( cursorSource1.hasNext() )
			{
				DBObject dbObject = cursorSource1.next();
                                Set<String> stringSet = dbObject.keySet();
                                Iterator it = stringSet.iterator();
                                String StringKeyX = (String) it.next();
                                String StringKeyY = (String) it.next();
                                StringX = dbObject.get(StringKeyX).toString();
                                StringY = dbObject.get(StringKeyY).toString();
			}
                                               
			DBCollection tableS4 = Util.getMongoDb().getCollection("TableCollections");
			DBCursor cursorS4 = tableS4.find();
			while (cursorS4.hasNext()) {                            
                            System.out.println("Finding table");
                            DBObject dbObject = cursorS4.next();
                            Set<String> stringSet = dbObject.keySet();
                            Iterator it = stringSet.iterator();
                            String StringKeyX = (String) it.next();
                            String StringKeyY = (String) it.next();
                            String tableX = dbObject.get(StringKeyY).toString();
                            String tableNameFound = dbObject.get(StringKeyX).toString();
                            if( Source1Table.equals(tableNameFound) )
                            {
                                StringX = tableX;
                                break;
                            }
			}                                          
                        
			DBCollection tableS2 = Util.getMongoDb().getCollection("TableCollections");
			DBCursor cursorS2 = tableS2.find();
                        ArrayList tableNames = new ArrayList();
			while (cursorS2.hasNext()) {                            
                            System.out.println("Finding table");
                            DBObject dbObject = cursorS2.next();
                            Set<String> stringSet = dbObject.keySet();
                            Iterator it = stringSet.iterator();
                            String StringKeyX = (String) it.next();
                            String StringKeyY = (String) it.next();
                            String tableX = dbObject.get(StringKeyY).toString();
                            String tableName = dbObject.get(StringKeyX).toString();
                            DBCollection tableS3 = Util.getMongoDb().getCollection(tableName); 
                            if( !Source1Table.equals(tableName) && StringX.equals(tableX) && tableS3.count() > 1 )
                            {
                                tableNames.add(tableName);
                            }
			}                      
                        //request.setAttribute("source2String", tableNames );
                        request.setAttribute("tableNames1", Util.getCollectionsWithData());
                        request.setAttribute("tableNames2", tableNames);
                        request.setAttribute("source1Table", Source1Table);
                        request.getRequestDispatcher("selectTable.jsp").forward(request,
                                        response);
                }
                else
                {    
                    request.setAttribute("tableNames1", Util.getCollectionsWithData());
                    request.setAttribute("tableNames2", Util.getCollectionsWithData());
                    request.getRequestDispatcher("selectTable.jsp").forward(request,
                                    response);
                }
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
                        
                        String StringX = new String();                       
			DBCollection tableS2 = Util.getMongoDb().getCollection("TableCollections");
			DBCursor cursorS2 = tableS2.find();
			while (cursorS2.hasNext()) {                            
                            System.out.println("Finding table");
                            DBObject dbObject = cursorS2.next();
                            Set<String> stringSet = dbObject.keySet();
                            Iterator it = stringSet.iterator();
                            String StringKeyX = (String) it.next();
                            String StringKeyY = (String) it.next();
                            String tableX = dbObject.get(StringKeyY).toString();
                            String tableNameFound = dbObject.get(StringKeyX).toString();
                            DBCollection tableS3 = Util.getMongoDb().getCollection(tableName); 
                            if( tableName.equals(tableNameFound) )
                            {
                                StringX = tableX;
                                break;
                            }
			}       
                        
			if( cursorS1.hasNext() )
			{
                            DBObject dbObject = cursorS1.next();
                            if( !StringX.equals( dbObject.get("_id").toString() ) )
                            {
                                source1String.append(" ['" + StringX + "','Desc']");                                
                            }
                            else
                            {
                                source1String.append(" ['" + dbObject.get("_id").toString() + "','"
                                                + dbObject.get("value").toString() + "']");
                            }
			}
			while (cursorS1.hasNext()) {
				DBObject dbObject = cursorS1.next();
				source1String.append(",['" + dbObject.get("_id").toString() + "',"
						+ dbObject.get("value").toString() + "]");
			}
			source1String.append("]");
			return source1String.toString();
		}
		return "";
	}
}
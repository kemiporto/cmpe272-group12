<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="SelectTable" method="post"> 
<center>
<div style="overflow: hidden;text-align: center;">
<%
			ArrayList  tableNames = (ArrayList) request
					.getAttribute("tableNames");
			if (tableNames != null) {
				Iterator it = tableNames.iterator();
		%>
		<div style="font-weight: bold; text-align: center;float: left;">
		 Source1<br/>
			
				 <select name="Source1">
					<%
						while (it.hasNext()) {
								String tableName = (String) it.next();
					%>

					<option value="<%=tableName%>"><%=tableName%></option>

					<%
						}
					%>
				</select>  
		
		</div>
		<%
			} else {
		%>
		No Tables.Please Create one.
		<%
			}
		%>
		
		<%
			if (tableNames != null) {
				Iterator it = tableNames.iterator();
		%>
		<div style="font-weight: bold; text-align: center;float: left;">
		 Source2<br/>
			
				 <select name="Source2">
					<%
						while (it.hasNext()) {
								String tableName = (String) it.next();
					%>

					<option value="<%=tableName%>"><%=tableName%></option>

					<%
						}
					%>
				</select>  
		
		</div>
		<%
			} else {
		%>
		No Tables.Please Create one.
		<%
			}
		%>

</div>

</center>
<div style="font-weight: bold; text-align: center">
<input type="submit" value = "View" >
</div>
</form>
</body>

</html>
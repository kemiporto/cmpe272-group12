<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<title>Create Table</title>
</head>

<body>
	<div>
		<div style="font-weight: bold; text-align: center">Create Table</div>
		<div style="text-align: center">
			<form action="CreateTable" method="post">
				Table Name: <input name="createTableText" type="text" value="" /> <input
					type="submit" value="Create Table" /> Goto "Add New Data"
			</form>
		</div>
		<%
			ArrayList tableNames = (ArrayList) request
					.getAttribute("tableNames");
			if (tableNames != null) {
				Iterator it = tableNames.iterator();
		%>
		<div style="font-weight: bold; text-align: center">
			<form action="addNewDataPage.jsp" method="get">
				Append To Table <select name="selectTable">
					<%
						while (it.hasNext()) {
								String tableName = (String) it.next();
					%>

					<option value="<%=tableName%>"><%=tableName%></option>

					<%
						}
					%>
				</select> <input type="submit" value="Select Table" /> Goto "Add New Data"
			</form>
		</div>
		<%
			} else {
		%>
		No Tables.Please Create one.
		<%
			}
		%>
	</div>
</body>
</html>
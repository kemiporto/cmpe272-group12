<!DOCTYPE html>
<html>
<head>
<title>Add New Data Page</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
</head>

<body>
	<%
		String tableSelected = request.getParameter("selectTable");
		String selectTableServlet = (String)request.getAttribute("selectTableServlet");
		if(selectTableServlet !=null){
			tableSelected = selectTableServlet;
		}
		String message = (String)request.getAttribute("Message");
	%>
	<% if(message != null) {%>
	<%= message %>
	<%}%>
	<div>
		<form method="post" action="AddData">
			<div style="font-weight: bold; text-align: center">
				Table:
				<%=tableSelected%></div>
			<div style="text-align: center">Add Data Point</div>

			<div style="text-align: center">
				y:<input type="text" name="yValue">
			</div>
			
			<div style="text-align: center">
				x:(date)<input type="text" id="datepicker" name="xValue">
			</div>
			
			<input type="hidden" name="selectedTable" value="<%=tableSelected%>">
			
			<div style="text-align: center">
				<input type="submit" value="Add" />
			</div>
			
		</form>
		
        <form action="UploadFile" method="post" enctype="multipart/form-data">
			<div style="font-weight: bold; text-align: center">
				OR choose input file to table:
				<%=tableSelected%></div>
				
			<div style="text-align: center">
 				<input type="hidden" name="selectedTable" value="<%=tableSelected%>">
                <input type="file" name="file" />
                <input type="submit" value="Upload File" />
			</div>
    	</form>



	</div>
</body>
</html>
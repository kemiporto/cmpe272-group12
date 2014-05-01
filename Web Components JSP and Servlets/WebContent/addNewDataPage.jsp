<!DOCTYPE html>
<html>
<head>
<title>Add New Data Page</title>
<link href="./css/bootstrap.css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="jquery.inputfile.css" />
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="js/jquery.js"></script>
	<script type="text/javascript">
            function navigateBack()
	    {
                window.history.back();
	    }
	</script>
    <script type="text/javascript">
        function getTitleBarNavigation()
        {
            var navigation = [];
            navigation.push( ["<a class='navbar-brand' href='index.jsp' >Home</a>"] );
            navigation.push( ["<a class='navbar-brand' href='createTable.jsp' >Data Management</a>"] );
	    navigation.push( ["<a class='navbar-brand' href='addNewDataPage.jsp' >Add Data Point</a>"] );
            return navigation;
        }
    </script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});

	$(document).on(
			'change',
			'.btn-file :file',
			function() {
				var input = $(this), numFiles = input.get(0).files ? input
						.get(0).files.length : 1, label = input.val().replace(
						/\\/g, '/').replace(/.*\//, '');
				input.trigger('fileselect', [ numFiles, label ]);
			});

	$(document).ready(
			function() {
				$('.btn-file :file').on(
						'fileselect',
						function(event, numFiles, label) {

							var input = $(this).parents('.input-group').find(
									':text'), log = numFiles > 1 ? numFiles
									+ ' files selected' : label;

							if (input.length) {
								input.val(log);
							}

						});
			});
</script>


<style>
.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 999px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	background-color: white;
	background: white;
	cursor: inherit;
	display: block;
}
</style>

</head>
<body>
	<%@ include file="TitleBar.html"%>
	<div class="container" style="max-width: 300px">
		<div style="font-weight: bold; text-align: center">
			<h1>Add Data Point</h1>
		</div>
		<%
			String tableSelected = request.getParameter("listname");
			String selectTableServlet = (String) request
					.getAttribute("selectTableServlet");
			if (selectTableServlet != null) {
				tableSelected = selectTableServlet;
			}
			String message = (String) request.getAttribute("Message");
		%>
		<%
			if (message != null) {
		%>
		<%=message%>
		<%
			}
		%>
		<br /> <br /> You have Selected :
		<%=tableSelected%>
		<br /> <br />
		<div class="span12">
			<form method="post" action="AddData">
				<div style="text-align: center">
					<input type="text" id="datepicker" placeholder="x:(date)"
						name="xValue" style="text-align: center; min-width: 100%;" />
				</div>
				<input type="hidden" name="selectedTable" value="<%=tableSelected%>" />
				<div style="text-align: center">
					<input type="text" placeholder="y value" name="yValue"
						style="text-align: center; min-width: 100%;" />
				</div>
				<div class="list-group center-block" style="text-align: center">
					<button type="submit" value="Add" class="btn btn-success"
						style="width: 270px">
						<i class="icon-circle-arrow-right icon-large"></i> Add
					</button>
				</div>
			</form>
			<br/>
			<br/>
			<form method="post" action="SelectTable">
				<input type="hidden" name="Source1" value="<%=tableSelected%>" />
				<div class="list-group center-block" style="text-align: center">
					<button type="submit" value="Add" class="btn btn-success"
						style="width: 270px">
						<i class="icon-circle-arrow-right icon-large"></i> View Chart
					</button>
				</div>
			</form>
			<hr>
			<form action="UploadFile" method="post" enctype="multipart/form-data">
				<div class="list-group center-block" style="text-align: center">
					<div class="span12">
						<span class="file-input btn btn-block btn-primary btn-file">
							<input type="hidden" name="selectedTable"
							value="<%=tableSelected%>" /> Click here to choose file&hellip; <input
							type="file" name="file" />
						</span>
					</div>
					<button type="submit" value="Select Table" class="btn btn-success"
						style="width: 270px; margin-top: 30px;">
						<i class="icon-circle-arrow-right icon-large"></i> Upload File
					</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
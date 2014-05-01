<html>
<head>
<link href="./css/bootstrap.css" rel="stylesheet">
<script src="js/jquery.js"></script>
</head>
<body>
	<div style="font-weight: bold; text-align: center; color: Blue;">
		<h2>Fighting California Water Drought </h2>
	</div>
	
	<form action="CreateTable">
			<button type="submit" value="Add Data" class="btn btn-success" style="width: 270px">
				<i class="icon-circle-arrow-right icon-large"></i> Add Data
			</button>
		</form>
		<form action="SelectTable">
			<button type="submit" value="View Crowd Source Data" class="btn btn-success" style="width: 270px">
				<i class="icon-circle-arrow-right icon-large"></i> View Crowd Source Data
			</button>
		</form>

	<div style="overflow: hidden;">
		<div style="float:left;">
			<img src="<%=request.getContextPath()%>/images/images.jpg" style="max-width: 400px;" />
		</div>
	</div>
</body>
</html>
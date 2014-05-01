<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
</head>
<body>
	<div id="chart1_div" style="width: 900px; height: 500px;"></div>
	<div id="chart2_div" style="width: 900px; height: 500px;"></div>
	<%
		String source1String = (String) request
				.getAttribute("source1String");
		String source2String = (String) request
				.getAttribute("source2String");
	%>
	<input type="hidden" value="<%=source1String%>" id="source1String" />
	<input type="hidden" value="<%=source2String%>" id="source2String" />
	<script type="text/javascript">
		google.load("visualization", "1", {
			packages : [ "corechart" ]
		});
		google.setOnLoadCallback(drawChart1);
		google.setOnLoadCallback(drawChart2);

		function drawChart1() {
			var data1str = document.getElementById("source1String").value;
			if(data1str != ""){
				var data1 = eval("(" + data1str + ")");
				var data = google.visualization.arrayToDataTable(data1);
				var options = {
					title : 'Source1'
				};
				var chart = new google.visualization.LineChart(document
						.getElementById('chart1_div'));
				chart.draw(data, options);
			}else{
				document.getElementById('chart1_div').style.display='none';
			}
		}

		function drawChart2() {
			var data2str = document.getElementById("source2String").value;
			if(data2str != ""){
				var data2 = eval("(" + data2str + ")");
				var data = google.visualization.arrayToDataTable(data2);
				var options = {
					title : 'Source2'
				};
				var chart = new google.visualization.LineChart(document
						.getElementById('chart2_div'));
				chart.draw(data, options);
			}else{
				document.getElementById('chart2_div').style.display='none';
			}
		}
	</script>
</body>
</html>
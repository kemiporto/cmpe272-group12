<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <script src="js/jquery.js"></script>
    <script> $(function(){ $("#titleBar").load("TitleBar.html"); } ); </script>  
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
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
                navigation.push( ["<a class='navbar-brand' href='selectTable.jsp' >Select Table</a>"] );
                navigation.push( ["<a class='navbar-brand' href='ViewChart.jsp' >ViewChart</a>"] );
                return navigation;
            }
        </script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
</head>

<body>        
        <%@ include file="TitleBar.html"%>
	<div class="container" style="max-width: 1000px">
            <div style="font-weight: bold; text-align: center">
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

                        function drawChart1() {
                                var data1str = document.getElementById("source1String").value;
                                var data2str = document.getElementById("source2String").value;
                                var data1 = eval("(" + data1str + ")");
                                var data2 = eval("(" + data2str + ")");                                
				var dataTable1 = google.visualization.arrayToDataTable(data1);
                                var dataTable2 = google.visualization.arrayToDataTable(data2);
                                var dataJoin = google.visualization.data.join(dataTable1, dataTable2, 'full', [[0,0]], [1], [1]);
                                var options = {
                                        title : 'Source'
                                };
                                var chart = new google.visualization.LineChart(document
                                                .getElementById('chart1_div'));
                                chart.draw(dataJoin, options);
                        }
                </script>
            </div>
        </div>
                
</body>
</html>
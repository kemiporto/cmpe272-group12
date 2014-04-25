<html>
	
	<!-- Includes -->
    <head>
    <script src="js/jquery.js"></script>
    <script> $(function(){ $("#titleBar").load("TitleBar.html"); } ); </script>  
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <script type="text/javascript">
    	function navigateBack()
        {
        	window.location="SelectTablePage.php";
        }
     </script>
     
    <!--Loading Google Charts-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
       
	      // Load the Visualization API and the piechart package.
	      google.load('visualization', '1.0', {'packages':['corechart']});
	
	      // Set a callback to run when the Google Visualization API is loaded.
	      google.setOnLoadCallback(drawChart);
	      
	      // Callback that creates and populates a data table,
	      // instantiates the pie chart, passes in the data and
	      // draws it.
	      function drawChart() {
	
	        // Create the data table.
	        var data = new google.visualization.arrayToDataTable([
	          ['Month','before','now'],
	          ['2004',  1000,    400],
	          ['2005',  1170,    460],
	          ['2006',  660,    1120],
	          ['2007',  1030,    540]
	        ]);
	        
	
	        // Set chart options
	        var options = {'title':'Plot Chat',
	                       'width':900,
	                       'height':500};
	
	        // Instantiate and draw our chart, passing in some options.
	        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
	        chart.draw(data, options);
	      }     
    </script>    
    </head>

    <body> 
     <div id="titleBar"></div>
    </body>

	<body>
        <div>            
			<div class="container" style="max-width:300px">
			<h1> <div style="font-weight:bold; text-align:center">Data Viewer</div> </h1>		
			</div>
			<p></p>
		</div>
	</body>

    <body>
    <div class="container" style="max-width:900px">     
	    <div class="span12">      
			<div> 
        		<div id="chart_div" ></div>
        	</div>
        </div>
    </div>
    </body>
</html>

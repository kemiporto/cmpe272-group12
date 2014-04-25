 
    

	
<html>
	
    <head>
    	<script src="js/jquery.js"></script> 
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <script type="text/javascript">
            function navigateTo()
            {
                window.location="SelectTablePage.php";
            }
        </script>
        <script type="text/javascript">
            function navigateBack()
            {
                window.location="Homepage.php";
            }
        </script>      	
    	<script> $(function(){ $("#titleBar").load("TitleBar.html"); } ); </script> 
    </head>   

    <body> 
     <div id="titleBar"></div>
    </body>

    <body>
        <div>
			<h1> <div style="font-weight:bold; text-align:center">Menu</div> </h1>
			<hr attribute1=".." attribute2="..">
            
			<div class="col-md-2" >
				<!--the category section-->
				<div class="list-group center-block" style="text-align:center">
					<a href="SelectTablePage.php" data-toggle="modal" class="list-group-item">Add Data</a>
					<a href="SelectTablePage.php" class="list-group-item">View Crowd Source Data</a>					
				</div>
			</div>

        </div>
    </body>    

    <body>
    </body>
		
</html>
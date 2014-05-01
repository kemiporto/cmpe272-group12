 
    

	
<html>
	
    <head>
    	<script src="js/jquery.js"></script>
    	<script> $(function(){ $("#titleBar").load("TitleBar.html"); } ); </script>  
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <script type="text/javascript">
            function navigateBack()
            {
                window.location="Homepage.php";
            }
        </script>
        <script type="text/javascript">
            function getTitleBarNavigation()
            {
                var navigation = [];
                navigation.push( ["<a class='navbar-brand' href='HomePage.php' >Home</a>"] );
                return navigation;
            }
        </script>      	
    </head>

    <body> 
     <div id="titleBar"></div>
    </body>

	<body>
        <div>            
			<div class="container" style="max-width:300px">
			<h1> <div style="font-weight:bold; text-align:center">Home</div> </h1>		
			</div>
			<p></p>
		</div>
	</body>

    <body>
        <div>            
			<div class="container" style="max-width:300px">			     
	    		<div class="span12" >    
					<!--the category section-->
					<div class="list-group center-block" style="text-align:center">
						<a href="Create Table.php" class="list-group-item">Add Data</a>
						<a href="SelectTablePage.php" class="list-group-item">View Crowd Source Data</a>					
					</div>
				</div>
			</div>

        </div>
    </body>    

    <body>
    </body>
		
</html>
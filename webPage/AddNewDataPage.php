<html>
	
	<!-- Includes -->
    <head>
    <script src="js/jquery.js"></script>
    <script> $(function(){ $("#titleBar").load("TitleBar.html"); } ); </script>  
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <script type="text/javascript">
    	function navigateBack()
        {
        	window.location="HomePage.php";
        }
     </script>
	     <script type="text/javascript">
	     	function getTitleBarNavigation()
	        {
	        	var navigation = [];
	            navigation.push( ["<a class='navbar-brand' href='HomePage.php' >Home</a>"] );
	            navigation.push( ["<a class='navbar-brand' href='Create Table.php' >Data Management</a>"] );
	            navigation.push( ["<a class='navbar-brand' href='AddNewDataPage.php' >Add Data Point</a>"] );
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
			<h1> <div style="font-weight:bold; text-align:center">Add Data Point</div> </h1>		
			</div>
			<p></p>
		</div>
	</body>

	<body>
        <div>            
			<div class="container" style="max-width:300px">	     
	    		<div class="span12" >  
		
					<div style="text-align:center"><input type="text" placeholder="x:(date)" style="text-align:center; min-width: 100%;"/></div>
					<div style="text-align:center"><input type="text" placeholder="y value" style="text-align:center; min-width: 100%;"/></div>
					<div class="list-group center-block" style="text-align:center">
						<a href="AddNewDataPage.php" class="list-group-item">Add</a>				
					</div>
					<hr>	
					<div class="list-group center-block" style="text-align:center">
						<a href="AddNewDataPage.php" class="list-group-item">Upload File</a>				
					</div>
				</div>
			</div>
        </div>
    </body>
    
</html>
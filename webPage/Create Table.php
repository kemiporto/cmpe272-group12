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
			<h1> <div style="font-weight:bold; text-align:center">Data Management</div> </h1>		
			</div>
			<p></p>
		</div>
	</body>

	<body>
        <div>            
			<div class="container" style="max-width:300px">	     
	    		<div class="span12" >    
		
					<div style="text-align:center"><input type="text" placeholder="Type table name" style="text-align:center; min-width: 100%;"/></div>
					<div class="list-group center-block" style="text-align:center">
						<a href="AddNewDataPage.php" class="list-group-item">Create Table</a>				
					</div>
					<hr>	
  					<table class="table table-striped table-bordered table-condensed" style="float: center; ">				             
				     	<td>
				        	<select class="select" id="secondTable" name="listname" multiple="multiple" style="float:right; min-width: 100%; min-height: 300px;">
					    		<option>Table1</option>
					            <option>Table2</option>
					            <option>Table3</option>
					            <option>Table4</option>
					            <option>Table5</option>
					        </select>
					    </td> 
  					</table>
					<div class="list-group center-block" style="text-align:center">
						<a href="AddNewDataPage.php" class="list-group-item">Select Table</a>				
					</div>
				</div>
			</div>
        </div>
    </body>

</html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
	
	<!-- Includes -->
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
	            navigation.push( ["<a class='navbar-brand' href='SelectTablePage.php' >Select Table</a>"] );
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
			<h1> <div style="font-weight:bold; text-align:center">Select Table</div> </h1>		
			</div>
			<p></p>
		</div>
	</body>
    
    <div class="container" style="max-width:600px">     
	    <div class="span12">      
			<div>
				<div class="panel panel-default">
  					<!-- Default panel contents -->
  					<div class="panel-heading" style="text-align: center">Choose Sources</div>
						<!-- Table -->		
  						<table class="table table-striped table-bordered table-condensed" style="float: center; ">
					        <tr>
					            <td>
					                <select class="select"  id="firstTable" name="listname" multiple="multiple" style="float:left; margin-left: 10%; min-width: 220px; min-height: 300px;">
					                    <option>Table1</option>
					                    <option>Table2</option>
					                    <option>Table3</option>
					                    <option>Table4</option>
					                    <option>Table5</option>
					                </select>
					            </td>
					            <td>
					                <select class="select" id="secondTable" name="listname" multiple="multiple" style="float:right;margin-right: 10%; min-width: 220px; min-height: 300px;">
					                    <option>Table1</option>
					                    <option>Table2</option>
					                    <option>Table3</option>
					                    <option>Table4</option>
					                    <option>Table5</option>
					                </select>
					            </td>
					        </tr>    
  						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
            
    <div class="container" style="max-width:300px">     
	    <div class="span12">      
			<div>
				<!--the category section-->
				<div class="list-group center-block" style="text-align:center">
					<a href="ViewChat.php" class="list-group-item">View</a>			
				</div>
			</div>
	    </div> 
	</div>
</body>
</html>


<html>
    <link href="./css/bootstrap.css" rel="stylesheet">
    <head>
    	<script src="js/jquery.js"></script>
    	<script> $(function(){ $("#titleBar").load("TitleBar.html"); } ); </script>  
        <script type="text/javascript">
            function navigateBack()
            {
                window.location="index.jsp";
            }
        </script>
        <script type="text/javascript">
            function getTitleBarNavigation()
            {
                var navigation = [];
                navigation.push( ["<a class='navbar-brand' href='index.jsp' >Home</a>"] );
                return navigation;
            }
        </script>      	
    </head>

    <%@ include file="TitleBar.html" %>

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
                        <a href="createTable.jsp" class="list-group-item">Add Data</a>
			<a href="selectTable.jsp" class="list-group-item">View Crowd Source Data</a>					
                    </div>
		</div>
            </div>        
        </div>
    </body>    
	
</html>
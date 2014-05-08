<html>
    <link href="./css/bootstrap.css" rel="stylesheet">
    <head>
    	<script src="js/jquery.js"></script>
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
                navigation.push( ["<a class='navbar-brand' href='CrowdSourcingDataCollection.jsp' >CrowdSourcingDataCollection</a>"] );
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
                                <div style="float:left; margin-left:30px;">
                                        <img src="<%=request.getContextPath()%>/images/watersaving.jpg" style="max-width: 400px;" />
                                </div>	
                        </div>					
                    </div>
		</div>
            </div>        
        </div>
    </body>    
	
</html>
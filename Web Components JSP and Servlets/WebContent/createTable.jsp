
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>

<html>
<body>
    <link href="./css/bootstrap.css" rel="stylesheet">
    
    <head>
        <title>Create Table</title>
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
	        navigation.push( ["<a class='navbar-brand' href='createTable.jsp' >Data Management</a>"] );
                return navigation;
	    }
        </script>
    </head>
    
    <%@ include file="TitleBar.html" %>
        
	<body>
            <div>            
		<div class="container" style="max-width:300px">	     
                    <div class="span12" >                                          
                        <form action="CreateTable" method="post">          
                            <div style="text-align:center">
                                <input name="createTableText" type="text" placeholder="Type table name" style="text-align:center; min-width: 100%;"/>
                            </div>
                            <div class="list-group center-block" style="text-align:center">        
                                <button type="submit" value="Create Table" class="btn btn-success" style="width:270px"><i class="icon-circle-arrow-right icon-large"></i> Create Table </button>
                            </div>
                        </form>	
                        <hr>                           
                        <form action="addNewDataPage.jsp" method="get">                                
                            <td>                            
                            <table class="table table-striped table-bordered table-condensed" style="float: center; ">				             
                            <%
                            ArrayList tableNames = (ArrayList) request.getAttribute("tableNames");
                            if (tableNames != null)
                            {
                                Iterator it = tableNames.iterator();
                            %>
                                    <select class="select" id="secondTable" name="listname" multiple="multiple" style="float:right; min-width: 100%; min-height: 300px;">
                                        <%
                                        while (it.hasNext())
                                        {
                                            String tableName = (String) it.next();
                                        %>
                                        <option value="<%=tableName%>"><%=tableName%></option>
                                        <%
                                        }
                                        %>
                                    </select>
                            <%
                            } else {
                            %>
                            <%
                            }
                            %>
                            </table>
                            </td> 
                            <div class="list-group center-block" style="text-align:center">
                                <button type="submit" value="Select Table" class="btn btn-success" style="width:270px"><i class="icon-circle-arrow-right icon-large"></i> Select Table </button>				                            
                            </div>			
                        </form>
		    </div>
		</div>
            </div>
        </body>
</body>
</html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>

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
                return navigation;
            }
        </script>  
</head>

<body>
    <%@ include file="TitleBar.html"%>
    <form action="SelectTable" method="post">
        <div class="container" style="max-width: 600px">
            <div style="font-weight: bold; text-align: center">
            <h1>Select Table</h1>
            </div>
            <div class="span12">
                <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading" style="text-align: center">Choose Sources</div>
                    <!-- Table -->
                    <table class="table table-striped table-bordered table-condensed"
                        style="float: center;">
                        <tr>
                        <td>
                        <%
                        ArrayList tableNames = (ArrayList) request.getAttribute("tableNames");
                        if (tableNames != null) {
                            Iterator it = tableNames.iterator();
                            %> <select class="select" id="firstTable" name="Source1" multiple="multiple" style="float: left; margin-left: 10%; min-width: 220px; min-height: 300px;">
                            <%
                            while (it.hasNext()) {
                                String tableName = (String) it.next();
                                %>
                                <option value="<%=tableName%>"><%=tableName%></option>
                                <%
                            }
                            %>
                            </select> <%
                        } else {
                        %> No Tables. <%
                        }
                        %>
                        </td>
                        <td>
                        <%
                        if (tableNames != null) {
                            Iterator it = tableNames.iterator();
                            %> <select class="select" id="secondTable" name="Source2"
                            multiple="multiple"
                            style="float: left; margin-left: 10%; min-width: 220px; min-height: 300px;">
                            <%
                            while (it.hasNext()) {
                                String tableName = (String) it.next();
                                %>
                                <option value="<%=tableName%>"><%=tableName%></option>
                                <%
                            }
                            %>
                            </select> <%
                        } else {
                        %> No Tables. <%
                        }
                        %>
                        </td>
                        </tr>
                    </table>
                </div>
            </div>                        
            <div class="span12">
                <!--the category section-->
                <div class="list-group center-block" style="text-align: center">
                    <button type="submit" value="Select Table" class="btn btn-success"
                        style="width: 270px">
                        <i class="icon-circle-arrow-right icon-large"></i> View
                    </button>
                </div>
            </div>
        </div>
    </form>                                              
                                                            
</body>
</html>
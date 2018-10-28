<%-- 
    Document   : header
    Created on : Aug 8, 2018, 3:04:53 PM
    Author     : mamuns
    status : Running
--%>
<%@include file="properties.jsp" %>

<%
String uname = (String)session.getAttribute("userid");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery-3.1.0.min.js" type="text/javascript"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">SmokeDetection</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<%=baseUrl%>/index.jsp">Home</a></li>
                    <li><a href="<%=baseUrl%>/gas/viewByUname.jsp">View Data Grid</a></li>
                    
                    <li><a href="<%=baseUrl%>/gas/chart.jsp">View Data Chart</a></li>
                     <li><a href="<%=baseUrl%>/gas/weekly_report.jsp">DateWise query</a></li>
                    <li><a href="<%=baseUrl%>/registration/editregForm.jsp">Edit Registration</a></li>
                    
                </ul>
                <%
                    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                %>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<%=baseUrl%>/registration/reg.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="<%=baseUrl%>/home.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
                <% }else{%>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Welcome <%=uname %></a></li>
                    <li><a href="<%=baseUrl%>/logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                
                      </ul>
                <% }%>
            </div>
        </nav>


    </body>
</html>

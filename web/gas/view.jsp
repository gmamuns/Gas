<%-- 
    Document   : view
    Created on : Aug 8, 2018, 11:16:01 AM
    Author     : mamuns
    status : ok
--%>
<%@include file="../header.jsp" %>
<%@page import="model.SmokeModel"%>
<%@page import="dao.SmokeDao"%>
<%@page import="java.util.List"%>
<%
    

SmokeDao dao = new SmokeDao(driver, url, user, password);
List <SmokeModel> list = dao.getAllData();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="30" />
        <title>View Weather Report</title>
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            
            <h1>All Sensors Data List</h1>
            <table border='1' width='100%' class="table table-bordered">
                <tr><td>Sensor ID</td><td>UserName</td><td>Sensor Data</td><td>Data Entry time</td></tr>
                <%for (SmokeModel e : list) {%>
                <tr><td><%=e.getSensorID()%> </td><td><%= e.getUname()%></td><td><%= e.getData()%></td><td><%= e.getRegdate()%></td></tr>
                <%}%>
            </table>
        </div>
    </body>
</html>

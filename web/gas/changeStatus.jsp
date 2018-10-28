<%-- 
    Document   : changeStatus
    Created on : Aug 31, 2018, 10:04:02 AM
    Author     : mamuns
    Status : running
--%>

<%@page import="dao.RegistrationDao"%>
<%@page import="model.RegistrationModel"%>
<%@include file="../properties.jsp" %>
<%
    String uname = request.getParameter("uname");
    String stat = request.getParameter("status");

    // ?uname=gmamuns&status=1

    RegistrationDao dao = new RegistrationDao(driver, url, user, password);
    Boolean status = dao.editStatus(stat, uname);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (status == true) {%>
        <p>Status updated successfully!</p>
        <%// request.getRequestDispatcher("insert.jsp").include(request, response);%>
        <% } else {%>
        <p>Sorry! unable to save record</p>
        <%}%>
    </body>
</html>

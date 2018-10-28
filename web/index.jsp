<%-- 
    Document   : index
    Created on : Aug 8, 2018, 3:04:53 PM
    Author     : mamuns
    status : ok
--%>
<%@include file="header.jsp" %>
<%@page import="dao.RegistrationDao"%>
<%@page import="model.RegistrationModel"%>
<%@page import="java.util.List"%> 


<%  
    RegistrationDao dao = new RegistrationDao(driver, url, user, password);
    List<RegistrationModel> list = dao.getAllAfectedAreaData(); // This query will be change
%> 



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        
<div class="container">
    
            <h1>Fire effected Locations</h1>
            <% for (RegistrationModel src : list) { %>
            <iframe 
                src= <% out.print(src.getGeolocation()); %>
                
                width="49%" height="300" frameborder="0" style="border:0" allowfullscreen>

            </iframe>
            <%}%>
           
            </div> 

    </body>
</html>

<%@include file="footer.jsp" %>
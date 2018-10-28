<%-- 
    Document   : googleEmbeded
    Created on : Aug 9, 2018, 7:00:34 PM
    Author     : mamuns
    Source : google map>locations > share > get html> save to DB> retreive src value
    Status : ok
--%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%
    Map<String, String> locations = new HashMap<String, String>();
    locations.put("CVASU", "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.019932220228!2d91.80845236977538!3d22.353440699999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8fea4afd4b5%3A0x4738b140875faf2a!2sFoy&#39;s+Lake+Amusement+World!5e0!3m2!1sen!2sbd!4v1533819916363");
    locations.put("New Market", "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.595907443798!2d91.82081198891596!3d22.348002997117526!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8af5650a4c9%3A0x690d3d3c8713cb89!2sChittagong+Railway+Station+Old+Terminal!5e0!3m2!1sen!2sbd!4v1533820416005");
    locations.put("Custom", "https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.595907443798!2d91.82081198891596!3d22.348002997117526!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8f4a5d57599%3A0x4b7918e20cf3fd2f!2sPolytechnic+Institute+Halt!5e0!3m2!1sen!2sbd!4v1533821750026");

//src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14760.019932220228!2d91.80845236977538!3d22.353440699999997!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30acd8fea4afd4b5%3A0x4738b140875faf2a!2sFoy&#39;s+Lake+Amusement+World!5e0!3m2!1sen!2sbd!4v1533819916363"
%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="container">
            <h1>Fire effected Locations</h1>
            <% for (String src : locations.values()) { %>
            <iframe 
                src= <% out.print(src); %>
                
                width="49%" height="300" frameborder="0" style="border:0" allowfullscreen>

            </iframe>
            <%}%>
           
            </div> 
    </body>
</html>

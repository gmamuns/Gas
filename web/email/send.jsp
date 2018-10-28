<%-- 
    Document   : mail
    Created on : Sep 24, 2018, 9:29:40 AM
    Author     : mamuns
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            // /send.jsp?to="ymamuns@yahoo.com"&emailSubject="Danger"&emailBody="check your device"
        
        String toEmail = "ymamuns@yahoo.com";
        String emailSubject = "Danger";
        String emailBody = "Check your device";    
        
        /*
        String toEmail =request.getParameter("to");
        String emailSubject = request.getParameter("emailSubject");
        String emailBody = request.getParameter("emailBody");
       */
        //out.println(toEmail+emailSubject+emailBody);
        response.sendRedirect("http://163.47.39.66:8080/JavaEmail/EmailServlet?to="+toEmail+"&subject="+emailSubject+"&message="+emailBody); //http://101.2.160.162:8080/
        
        %>
    </body>
</html>

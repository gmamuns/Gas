<%-- 
    Document   : edit
    Created on : Aug 12, 2018, 9:25:05 PM
    Author     : mamuns
    Status  : not complete
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="dao.RegistrationDao"%>
<%@page import="model.RegistrationModel"%>
<%@include file="../properties.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../resources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../resources/js/jquery-3.1.0.min.js" type="text/javascript"></script>
    </head>
    <body>
        <%
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String uname = (String) session.getAttribute("userid");
    String pwd = request.getParameter("pass");
    String geolocation = request.getParameter("geolocation");
    int treshholdValue = Integer.parseInt(request.getParameter("treshholdValue")); // new

    RegistrationModel reg = new RegistrationModel();
    reg.setFname(fname);reg.setLname(lname);reg.setEmail(email);reg.setUname(uname);
    reg.setPass(pwd);reg.setGeolocation(geolocation);reg.setTreshholdValue(treshholdValue);
    
    //out.println("New threshhold : "+treshholdValue);
    RegistrationDao dao = new RegistrationDao(driver, url, user, password);
    
    /*
    Connection con = null;
    Class.forName(driver);
    con = DriverManager.getConnection(url, user, password);
    PreparedStatement preparedStatement = con.prepareStatement
        ("update users set first_name='"+fname+"',last_name='"+lname+"',email='"+email+"',pass='"+pwd+"',geolocation='"+geolocation+"',treshholdValue='"+treshholdValue+ "' where uname='"+uname+"'");
    preparedStatement.executeUpdate();
    con.close();
    */
        
    if (dao.editByUname(reg) == 1) {

        response.sendRedirect("regeditsuccess.jsp");  // if inserted 
    } else {
        response.sendRedirect("editregForm.jsp"); // If failed go back
    }
    
        %>

    </body>
</html>

<%-- 
    Document   : weekly_report
    Created on : Oct 2, 2018, 7:25:56 PM
    Author     : mamuns
--%>

<%@page import="model.RegistrationModel"%>
<%@page import="dao.RegistrationDao"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include file="../header.jsp" %>

<%@page import="java.util.List"%> 

<%
    String start_date = request.getParameter("start_date"); 
    String end_date = request.getParameter("end_date");

    //out.println(start_date + end_date);

    String username = "";
    if (request.getParameter("userid") != null || request.getParameter("userid") != null) {
        username = request.getParameter("userid"); // get username from parameter first
    } else {
        username = (String) session.getAttribute("userid"); // if parameter missing get it from session
    }
  // out.println(username);
   RegistrationDao regdao = new RegistrationDao(driver, url, user, password);
   RegistrationModel regmodel = regdao.getDataByUname(username);
   int treshholdValue = regmodel.getTreshholdValue(); //get treshholdValue from DB
   //out.println(treshholdValue);

    Connection con = null;
    int status = 0;

    
        Class.forName(driver);
        con = DriverManager.getConnection(url, user, password);
       
        PreparedStatement ps = con.prepareStatement("SELECT * FROM `smoke` WHERE regdate BETWEEN '" + start_date + "' AND '" + end_date + "' ORDER BY regdate DESC ");

        ResultSet rs = ps.executeQuery();
        

%>



<!DOCTYPE html>
<html>
    <head>
        <title> DateWise Gas Report </title>
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
         <div class="container ">

            <h1><center>DateWise Report</center></h1>
            <form method="post" action="#">

                <div class="form-group">
                    <label for="date">Start Date :</label>
                    <input  class="form-control" type="date" placeholder="Date" name="start_date">
                </div>


                <div class="form-group">
                    <label for="date">End Date :</label>
                    <input  class="form-control" type="date" placeholder="Date" name="end_date">
                </div>



                <button type="submit" class="btn btn-default">Submit</button>
                <button type="reset" class="btn btn-default">Reset</button>

            </form>
        </div>

        <% if (rs.next()){%>
        <div>
            <h1><center>Query Result ::</center> </h1>
            <table border='1' width='80%' class="table table-bordered">
                <tr><td>Sensor ID</td><td>UserName</td><td>Sensor Data</td><td>Data Entry time</td></tr>
            <%while (rs.next()) {%>
            <%if(Integer.parseInt(rs.getString(3))> treshholdValue && (rs.getString(2)).equalsIgnoreCase(username) ){%>
            <tr><td><%=rs.getString(1)%> </td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%= rs.getString(4)%></td></tr>
           <%}%>
        <% }con.close();} %>
         </table>
            
        </div>
       
            


    </section>


</div>

</div>
</body>
</html>
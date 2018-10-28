<%-- 
    Document   : insert
    Created on : Aug 8, 2018, 11:16:01 AM
    Author     : mamuns
    status : ok but send mail is not ok
--%>
<%@page import="model.RegistrationModel"%>
<%@page import="utils.Mail"%>
<%@page import="dao.RegistrationDao"%>
<%@page import="dao.SmokeDao"%>
<%@page import="model.SmokeModel"%>
<%@include file="../properties.jsp" %>
<%
    // http://localhost:8080/Smoke/smoke/insert.jsp?sid=sensor01&uname=gmamuns&data=233
    String sid = request.getParameter("sid");
    String uname = request.getParameter("uname");
    String data = request.getParameter("data");
   
    
   RegistrationDao regdao = new RegistrationDao(driver, url, user, password);
   RegistrationModel regmodel = regdao.getDataByUname(uname);
   int treshholdValue = regmodel.getTreshholdValue(); //get treshholdValue from DB
   
    SmokeModel e = new SmokeModel();
    e.setSensorID(sid);
    e.setUname(uname);
    e.setData(data);
    
    SmokeDao dao = new SmokeDao(driver, url, user, password);
    int status = dao.save(e); // get status if data inserted or not
    
    
    //Change FireStatus in users table
    int intData = Integer.parseInt(data); //parse data to int
    RegistrationDao regDao = new RegistrationDao(driver, url, user, password);
    if(intData > treshholdValue){
        //Status updated to : Dangerous
        regDao.editStatus("1", uname);
        //out.println("Status updated to : Dangerous");
        
        //ok send email by uname        
        response.sendRedirect("../email/send.jsp?to="+regmodel.getEmail()+"&emailSubject="+mailSubject+"&emailBody="+mailBody+""+data);
        }
    else{
    regDao.editStatus("0", uname);
    out.println("Status updated to : 0");}
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Data</title>
    </head>
    <body> <% out.println("ThreshHold value : "+treshholdValue);  %>
        <% if (status > 0) {%>
             <p>Record saved successfully!</p>
             <% // request.getRequestDispatcher("insert.jsp").include(request, response);%>
        <% } else {%>
             <p>Sorry! unable to save record</p>
        <%}%>
    </body>
</html>

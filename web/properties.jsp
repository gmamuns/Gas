<%-- 
    Document   : properties
    Created on : Jun 29, 2018, 10:49:29 AM
    Author     : mamuns
    Status : ok
--%>


<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/cvasu";
    String user = "root";
    String password = "";
    //int treshholdValue = 400;
    String baseUrl = request.getContextPath();;
    
    //Used for Email
    String mailSubject ="Coution : Danger";
    String  mailBody="Check your device, Sensor Value = ";
    
    

    request.setAttribute("driver", driver);
    request.setAttribute("url", url);
    request.setAttribute("user", user);
    request.setAttribute("password", password);
    //request.setAttribute("treshholdValue", treshholdValue);
  
   /* 
    session.setAttribute("driver", driver);
    session.setAttribute("url", url);
    session.setAttribute("user", user);
    session.setAttribute("password", password);
  */

%>


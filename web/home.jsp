<%-- 
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
)

Source : http://www.javaknowledge.info/login-and-registration-example-in-jsp-with-session/
status : ok
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
        %>
        <div class="container">
            <h1> Login Here</h1>
            <form method="post" action="login.jsp">
                <div class="form-group">
                    <label for="uname">User Name :</label>
                    <input  class="form-control" type="text" placeholder="User Name" name="uname">
                </div>
                <div class="form-group">
                    <label for="pass">Password :</label>
                    <input  class="form-control" type="password" placeholder="Password" name="pass">
                </div>
                <button type="submit" class="btn btn-success">Login</button>
                <button type="reset" class="btn btn-success">Reset</button>
                Yet Not Registered!! <a href="registration/reg.jsp">Register Here</a>

            </form>
        </div>
    </body>
</html>


<%} else {

        response.sendRedirect("index.jsp");

    }
%>

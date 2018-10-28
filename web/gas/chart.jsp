<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.io.*" %>  
<%@ page import="java.util.*" %>  
<%@include file="../header.jsp" %>

<%!
    // --- String Join Function converts from Java array to javascript string.  
    public String join(ArrayList<?> arr, String del) {

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < arr.size(); i++) {

            if (i > 0) {
                output.append(del);
            }

            // --- Quote strings, only, for JS syntax  
            if (arr.get(i) instanceof String) {
                output.append("\"");
            }
            output.append(arr.get(i));
            if (arr.get(i) instanceof String) {
                output.append("\"");
            }
        }

        return output.toString();
    }
%>  

<%                // --- Create two Java Arrays  
    String username = ""; 
    ArrayList<String> months = new ArrayList<String>();
    ArrayList<Integer> users = new ArrayList<Integer>();
    try {
        Class.forName(driver);
        Connection connection = DriverManager.getConnection(url, user, password);
        Statement statement = connection.createStatement();

        
        if (!(request.getParameter("userid") == null) || !(request.getParameter("userid") == null)) {
            username = request.getParameter("userid"); // get username from parameter first
        } 
        else
        {
            username = (String) session.getAttribute("userid"); // if parameter missing get it from session
        }

        ResultSet resultSet = statement.executeQuery("SELECT * FROM `smoke` where uname = '" + username + "'  ORDER BY regdate LIMIT 50");

        while (resultSet.next()) {

            months.add(resultSet.getString(1)); // uname
            users.add(Integer.parseInt(resultSet.getString(3))); //data
        }
        connection.close();

    } catch (SQLException e) {
        out.println("Problem to connect DB");
    }


%>

<!DOCTYPE html>  
<html>  
    <head>  
        <title>Data Chart Soke Statistics</title>  
        <script src="../resources/css/zingchart.min.js" type="text/javascript"></script>
        <link href="../resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>  
    <body>  
        <script>


            // --- add a comma after each value in the array and convert to javascript string representing an array  
            var monthData = [<%= join(months, ",")%>];
            var userData = [<%= join(users, ",")%>];


        </script>  
        <script>
            window.onload = function () {
                zingchart.render({
                    id: "myChart",
                    width: "100%",
                    height: 400,
                    data: {
                        "type": "bar",
                        "title": {
                            "text": "Bar Chart on Previous Data"
                        },
                        "scale-x": {
                            "labels": monthData
                        },
                        "plot": {
                            "line-width": 1
                        },
                        "series": [{
                                "values": userData
                            }]
                    }
                });
            };
        </script>

        <!--<h1>User : <%=username%></h1>-->  
        <div id="myChart"></div>  


    </body>  
</html> 

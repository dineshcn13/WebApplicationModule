<%-- 
    Document   : dealerinfo
    Created on : 23 Feb, 2018, 1:11:19 PM
    Author     : DINESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               <style>
            body{
                background-color:lavenderblush;
            }
            table, td, th {    
    border: 2px solid white;
    text-align: left;
    text-decoration: blueviolet;
}

#dlr {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 50%;
}

#dlr td, #items th {
    border: 1px solid #ffcc00;
    padding: 8px;
}

#dlr tr:nth-child(even){background-color: #ffcc00;}

#dlr tr:hover {background-color: #ffff00;}

#dlr th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #4CAF50;
    color: white;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
}
.submit {
            width: 10.5em; 
            height: 3em;
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 0px 0px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            margin: 4px 2px;
            cursor: pointer;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .button2:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
        }
        </style>
    </head>
    <body>
        <center><h1><b>VIEW DEALER'S INFO SECTION</b></h1></center><br><br><br>
    <form action="check1.jsp" target="_parent">
        <center>
         <table border="2" id="dlr">
            <tr>
                <th>DEALER NAME</th>
                <th>DEALER MOBILE</th>
            </tr>
        <%
                  
                    Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");
                    Statement statement = connection.createStatement();
                    ResultSet resultset = statement.executeQuery("select distinct dealer,dealer_mobile from item ") ; 
                    while(resultset.next())
                {
                    %>
                    
                <tr>
                    <td><center><%=resultset.getString(1)%></center></td>
                    <td><center><%=resultset.getString(2)%></center></td>
                </tr>
                <%
                    }
                    %>
         </table>
        </center>
    <br><br>
    <center><input type="submit" name="click" class="submit button2" value="BACK TO OPTIONS"/></center>
</form>
    </body>
</html>

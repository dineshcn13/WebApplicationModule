<%-- 
    Document   : updatestock
    Created on : 22 Feb, 2018, 9:51:35 PM
    Author     : DINESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
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
                background-color: orange;
            }
            .tb3 {
	width: 250px;
        height:50px;
	border: 2px solid greenyellow;
	border-left: 5px solid greenyellow;
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
        <center><h1><b>UPDATE PRODUCT STOCK SECTION</b></h1></center>
        <form action="check1.jsp">
    <center>
        <h3>SELECT ITEMS WHICH U WANT TO UPDATE:</h3><br>
        <select id="list" onchange="showState(this.value)" name="prod" class="tb3"><br>
            <% 

            Connection connection = null; 
            try { 
            connection = DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123"); 
            } 
            catch (SQLException e) { 
            e.printStackTrace(); 
            return; 
            } 
            PreparedStatement stmt=null; 
            stmt=connection.prepareStatement("select * from item"); 
            ResultSet rs=null; 
            rs= stmt.executeQuery(); 
            while(rs.next()){ 
            %> 
            <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option> 
            <% 
            } 
            %> 
            </select> <br><br><b>
    </center>
<center>
    <h3>ENTER STOCK QUANTITY TO UPDATE:</h3><br>
            <input type="text" name="stk" placeholder="ENTER STOCK TO UPDATE" class="tb3"/><br><br></center>
            <center><input type="submit" value="OK" class="submit button2" name="click"/>
            <input type="submit" name="click" class="submit button2" value="BACK"/></center>
        </form> 
    </body>
</html>

<%-- 
    Document   : addstock
    Created on : 22 Feb, 2018, 9:50:26 PM
    Author     : DINESH
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
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
                background-color:orange;
            }
            .tb3 {
	width: 230px;
        height:20px;
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
    <center><h1><b>ADD PRODUCT STOCK SECTION</b></h1></center>
    <form action="check1.jsp">
            <center>
                <b>PRODUCT NAME  :</b><br><input type="text" name="prname" class="tb3" placeholder="ENTER PRODUCT NAME"/><br><br>
                <b>DEALER NAME   :</b><br><input type="text" name="dealer" class="tb3" placeholder="ENTER DEALER NAME"/><br><br>
                <b>DEALER MOBILE   :</b><br><input type="text" name="dealermob" class="tb3" placeholder="ENTER DEALER MOBILE"/><br><br>
                <b>PRODUCT MRP   :</b><br><input type="text" name="pmrp" class="tb3" placeholder="ENTER PRODUCT MRP"/><br><br>
                <b>SELLING PRICE :</b><br><input type="text" name="psell" class="tb3" placeholder="ENTER PRODUCT SELL PRICE"/><br><br>
                <b>HSN CODE      :</b><br><input type="text" name="hcode" class="tb3" placeholder="ENTER PRODUCT HSN CODE"/><br><br>
                <b>FIXED GST %   :</b><br><input type="text" name="fgst" class="tb3" placeholder="ENTER GST"/><br><br>
                <b>QUANTITY      :</b><br><input type="text" name="quan" class="tb3" value="1" readonly/><br><br>
                <b>NO OF STOCKS  :</b><br><input type="text" name="nstock" class="tb3" placeholder="ENTER PRODUCT STOCKS"/><br><br>
        <input type="submit" name="click" class="submit button2" value="ADD STOCK"/>
        <input type="submit" name="click" class="submit button2" value="BACK"/>
            </center>
        </form>
    </body>
</html>

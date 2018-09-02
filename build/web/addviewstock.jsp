<%-- 
    Document   : addviewstock
    Created on : 22 Feb, 2018, 8:45:39 PM
    Author     : DINESH
--%>

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
            
        .submit {
            width: 20em; 
            height: 5em;
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
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
    <center><h1>ADD/VIEW/UPDATE PRODUCT STOCK SECTION</h1></center><br><br><br>
    <form action="check1.jsp" target="_self">
    <center>
    <input type="submit" name="click" value="ADD NEW STOCK" class="submit button2"/><br><br>
    <input type="submit" name="click"value="VIEW CURRENT STOCK"  class="submit button2"/><br><br>
    <input type="submit" name="click"value="UPDATE STOCK QUANTITY" class="submit button2"/><br><br>
    <input type="submit" name="click" class="submit button2" value="BACK TO OPTION" />
    </center>
    </form>
    </body>
</html>

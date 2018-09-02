<%-- 
    Document   : footer
    Created on : 12 Feb, 2018, 12:37:00 PM
    Author     : DINESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="15">
        <title>JSP Page</title>
        <style>
            body{
                background-color: darkorange;
            }
            #ip6 {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 100px;
            height: 12px; 
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
        img{
            float:right;
        }
        
        </style>
    </head>
    <body>
        <table>
            
            <form action="check1.jsp" target="_parent">
         
            <tr>
                
                <td><input type="submit" name="click" class="submit button2" value="BACK TO OPTIONS" ></td>
                <td><input type="submit" name="click" class="submit button2" value="LOG OUT" /></td>
                <td><input type="submit" name="click" class="submit button2" value="PRINT BILL"/></td>
                
                <img src="din2.png" width="500" height="50" >
            </tr>
            
            </form>
        </table>
    </body>
</html>

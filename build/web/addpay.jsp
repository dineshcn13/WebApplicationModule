<%-- 
    Document   : addpay
    Created on : 25 Feb, 2018, 10:51:24 PM
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
    <center><h1><b>NOTE DEALER's PAYMENT BALANCE SECTION</b></h1></center>
    <form action="check1.jsp">
            <center>
                <b>DEALER NAME  :</b><br><input type="text" name="dname" class="tb3" placeholder="ENTER DEALER NAME" /><br><br>
                <b>BALANCE DUE  :</b><br><input type="text" name="baldue" class="tb3" placeholder="ENTER DUE BALANCE" /><br><br>
        <input type="submit" name="click" class="submit button2" value="NOTE"/>
        <input type="submit" name="click" class="submit button2" value="[BACK]"/>
            </center>
        </form>
    </body>
</html>

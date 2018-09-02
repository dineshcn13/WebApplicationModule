<%-- 
    Document   : item
    Created on : 12 Feb, 2018, 6:18:39 PM
    Author     : DINESH
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <Title>Just A Test</Title>
        <script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript">
        var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('itemsec.jsp').fadeIn("slow");
        }, 10000); // autorefresh the content of the div after
                   //every 10000 milliseconds(10sec)
        </script>
    </head>
    
    <body>
    
    </body>
</html>
   

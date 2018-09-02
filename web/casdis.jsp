<%-- 
    Document   : casdis
    Created on : 8 Mar, 2018, 11:13:32 AM
    Author     : DINESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.5);
    transition: 0.3s;
    width: 100%
    
}

.card:hover {
    box-shadow: 0 20px 30px 0 rgba(0,0,0,0.8);
}

.container {
    padding: 15px 30px;
}

body{
                background-color: #ccff66;
            }
            h2 {
                text-shadow: 0 0 5px yellow;
               }
            p {
                text-shadow: 0 0 5px yellow;
               }
            #ip4 {
            border-radius: 15px 50px 30px;
            border: 2px solid orange;
            padding: 0px; 
            width: 200px;
            height: 30px;
            text-align: center;
            font-weight: bold;
            font-size: 1em;
            }
</style>
    </head>
    <body>
        
        <div class="card">
  <img src="img_avatar.png" alt="Avatar" style="width:100%;height: 100%">
  <div class="container">
    
      <b>CASHIER ID:</b><br><input type="text" id="ip4" value="D<%=session.getAttribute("crid")%>" readonly/><br><br>
               
      <b>CASHIER NAME:</b><br><input type="text" id="ip4" value="<%=session.getAttribute("crun")%>" readonly/><br><br>
                
        <b>CASHIER MOB:</b><br><input type="text" id="ip4" value="<%=session.getAttribute("crmob")%>" readonly/>
                
   
  </div>
</div>
    </body>
</html>

<%-- 
    Document   : itemtable
    Created on : 8 Feb, 2018, 3:37:46 PM
    Author     : DINESH
--%>



<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           
            
            
            
            /* Center the loader */
#loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 3s linear infinite;
  animation: spin 3s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
}
            
            
            
            
            
            
            body{
                background-color:#ffff99;
                
            }
            table, td, th {    
    border: 2px solid grey;
    text-align: left;
    text-decoration: blueviolet;
}

#items {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#items td, #items th {
    border: 1px solid #ddd;
    padding: 8px;
}

#items tr:nth-child(even){background-color: #ffffff;}

#items tr:hover {background-color: #ddd;}

#items th {
    padding-top: 0px;
    padding-bottom: 0px;
    text-align: left;
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



        </style>
   <script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 1000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>

    </head>
    
     <% 
        
         try{
             
         Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");

            Statement statement = connection.createStatement();

            String id = request.getParameter("value");  
    
            ResultSet resultset =  statement.executeQuery("select * from item where item_name = '"+ id +"'") ; 

        %>
    <body onload="myFunction()" style="margin:0;">
        
        
        <div id="loader"></div>
        <div style="display:none;" id="myDiv" class="animate-bottom">
        <table id="items">
            <tr>
            <center><b>[CART SUMMARY]</b></center>
            </tr>
            <tr>
                <th>HSN CODE</th>
                <th>ITEM NAME</th>
                <th>MRP</th>
                <th>QTY</th>
                <th>S.PRICE</th>
                <th>DIS.COST</th>
                <th>GST%[GST.AMOUNT]</th>
                <th>CGST %</th>
                <th>SGST %</th>
                <th>TOTAL VALUE</th>
                <th><a href="deleteall"><center><img src="del2.png" width="30" height="30"></center></a></th>
            </tr>
            
            <% 
                String q = request.getParameter("qty");
                
                int qt = Integer.parseInt(q);
                
                double r = 0;
                
                double f = 0;
                
                String dea;
              
                
                %>
            
            <%
                while(resultset.next())
                {
                    if(resultset.getInt(4)>0)
                    {
                    r=(resultset.getDouble(5)*qt)+((resultset.getDouble(5)*resultset.getDouble(6)*qt)/100);
                    r=Math.round(r*100.0)/100.0;
                    f=(resultset.getDouble(5)*qt);
                    f=Math.round(f*100.0)/100.0;
                    dea=resultset.getString(8);
                    HttpSession r1=request.getSession();
                    r1.setAttribute("deal1",dea);
                    
               PreparedStatement ps=connection.prepareStatement("insert into cart_one values(?,?,?,?,?,?,?,?,?,?,?)");         
               ps.setInt(1,resultset.getInt(2));
               ps.setString(2,resultset.getString(1));
               ps.setInt(3,resultset.getInt(3));
               ps.setInt(4,(resultset.getInt(7)*qt));
               ps.setDouble(5,resultset.getDouble(5));
               ps.setDouble(6,f);
               ps.setDouble(7,resultset.getFloat(6));
               ps.setDouble(8,(resultset.getFloat(6)/2));
               ps.setDouble(9,(resultset.getFloat(6)/2));
               ps.setDouble(10,r);
               ps.setInt(11,resultset.getInt(4));
               ps.executeUpdate();
                
     
                %>
                <%
                    }
                    else{
                    out.println("THIS ITEM YOU ARE TRYING TO ADD ARE NOT AVAILABLE IN STOCK!!!");
                    request.getRequestDispatcher("itemtable.jsp").include(request, response);
                    
                     }   
                    } 
                    connection.close();
                    }
                    catch(Exception e){
                       
                    }    
                %>
            
                <%
                try{
                %>
                
                <%
                  
                    Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");
                    Statement statement = connection.createStatement();
                    ResultSet resultset = statement.executeQuery("select * from cart_one ") ; 
                    
                    %>
                    <%
                int count=0;
                double grand=0;
                double subt=0;
                double tgst=0;
                double dis=0;
                double gst=0;
                double kk=0;
                int p;
                
                
                
                while(resultset.next())
                {
                        
                    kk= ((resultset.getDouble(6)*resultset.getDouble(7))/100);
                    kk=Math.round(kk*100.0)/100.0;
                    
                    
                    %>
                    
                <tr>
                    <td><%=resultset.getInt(1)%></td>
                    <td><%=resultset.getString(2)%></td>
                    <td>Rs.<%=resultset.getDouble(3)%></td>
                    <td><%=resultset.getInt(4)%></td>
                    <td>Rs.<%=resultset.getDouble(5)%></td>
                    <td>Rs.<%=resultset.getDouble(6)%></td>
                    <td><%=(resultset.getDouble(7))%> % [Rs.<%=kk%>]</td>
                    <td><%=resultset.getDouble(8)%></td>
                    <td><%=resultset.getDouble(9)%></td>
                    <td>Rs.<%=resultset.getDouble(10)%></td>
                    <td><a href="delete?id=<%=resultset.getInt(1)%>"><center><img src="del2.png" width="30" height="30"></center></a></td>
                
                </tr>
                <%
                    count=count+1;
                    grand=grand+Math.round(resultset.getDouble(10));
                    subt=subt+resultset.getDouble(10);
                    tgst=tgst+((resultset.getDouble(7)*resultset.getDouble(6))/100);
                    dis=dis+((resultset.getDouble(3)*resultset.getDouble(4)*5)/100);
                    gst=gst+((resultset.getDouble(7)*resultset.getDouble(6))/200);
                    }
                    HttpSession r1=request.getSession();
                    r1.setAttribute("get6",count);
                    r1.setAttribute("get5",grand);
                    r1.setAttribute("get1",gst);
                    r1.setAttribute("get2",dis);
                    r1.setAttribute("get3",tgst);
                    r1.setAttribute("get4",subt);
                    %>
                <%
                    
                    
                }
                catch(Exception w){
                out.println("<center><b>ITEM'S YOU TRYING TO ADD IS ALREADY ADDED!!</b></center>");
                request.getRequestDispatcher("itemtable.jsp").include(request, response);
                }
                %>
                
        </table>
        </div>
    </body>
</html>

<%-- 
    Document   : check
    Created on : 11 Feb, 2018, 5:28:01 PM
    Author     : DINESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <% 
            Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");

            Statement statement = connection.createStatement();
            
            String id = request.getParameter("value");  
            
            String q = request.getParameter("qty");
            
            int qt = Integer.parseInt(q);
            
            statement.executeUpdate("update item set stock_left=stock_left-"+qt+" where item_name='"+id+"' and stock_left>0");
            
            ResultSet res = 
                statement.executeQuery("select * from item where item_name = '"+ id +"'") ;
            
        %>
        <%
            while(res.next())
            {
                
                int a5=res.getInt(2);
                double a1=res.getDouble(3);
                double a2=res.getDouble(5);
                int a3=res.getInt(4);
                double a4=(res.getDouble(3)*qt*5)/100;
                double a6=((res.getDouble(3)*qt)-a4);
                HttpSession m5=request.getSession();
                m5.setAttribute("set1",a1);
                m5.setAttribute("set2",a2);
                m5.setAttribute("set3",a3);
                m5.setAttribute("set4",a6);
                m5.setAttribute("set5",a5);
                
            }
            %>
        <%
        String s=request.getParameter("click");
        
        if(s.equals("ADD"))
           {
               request.getRequestDispatcher("itemtable.jsp").forward(request, response);
           }
        else if(s.equals("CALCULATE"))
            {
                request.getRequestDispatcher("itemtable.jsp").forward(request, response);
            }
        else if(s.equals("+"))
            {
                request.getRequestDispatcher("itemtable.jsp").forward(request, response);
            }
        else if(s.equals("NEXT BILL"))
            {
        
               request.getRequestDispatcher("deleteall").forward(request, response);
            }
          %>
    </body>
</html>

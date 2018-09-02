<%-- 
    Document   : check1
    Created on : 22 Feb, 2018, 11:09:11 PM
    Author     : DINESH
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
            String s=request.getParameter("click");
            
            
        if(s.equals("ADD NEW STOCK"))
            {
                
                request.getRequestDispatcher("addstock.jsp").forward(request, response);
            }
        else if(s.equals("VIEW CURRENT STOCK"))
            {
                request.getRequestDispatcher("viewstock.jsp").forward(request, response);
            }
        
        else if(s.equals("UPDATE STOCK QUANTITY"))
            {
                request.getRequestDispatcher("updatestock.jsp").forward(request, response);
            }
        else if(s.equals("BACK"))
            {
                request.getRequestDispatcher("addviewstock.jsp").forward(request, response);
            }
        else if(s.equals("GO BACK"))
            {
                request.getRequestDispatcher("viewcashier.jsp").forward(request, response);
            }
        else if(s.equals("[BACK]"))
            {
                request.getRequestDispatcher("paymentdetails.jsp").forward(request, response);
            }
        else if(s.equals("ADD STOCK"))
            {
        
                request.getRequestDispatcher("addstock").forward(request, response);
            }
         else if(s.equals("BACK TO OPTIONS"))
            {
                HttpSession cas=request.getSession(false);
                if(cas!=null)
                {
                  request.getRequestDispatcher("loginmain.html").forward(request, response);  
                }
                else
                {
                    out.println("Login First!!");
                    request.getRequestDispatcher("index.html").include(request, response);
                }
            }
         else if(s.equals("BACK TO OPTION"))
            {
        
                request.getRequestDispatcher("afterlogin.html").forward(request, response);
            }
        else if(s.equals("OK"))
            {
        
                request.getRequestDispatcher("updatestock").forward(request, response);
            }
        else if(s.equals("VIEW PAYMENTS"))
            {
        
                request.getRequestDispatcher("viewpay.jsp").forward(request, response);
            }
        else if(s.equals("ADD PAYMENTS"))
            {
        
                request.getRequestDispatcher("addpay.jsp").forward(request, response);
            }
        else if(s.equals("NOTE"))
            {
        
                request.getRequestDispatcher("addpay").forward(request, response);
            }
        else if(s.equals("UPDATE PASSWORD"))
            {
        
                request.getRequestDispatcher("updatecashier").forward(request, response);
            }
        else if(s.equals("VIEW CASHIER DETAILS"))
            {
        
                request.getRequestDispatcher("viewcashierdet.jsp").forward(request, response);
            }
        else if(s.equals("UPDATE CASHIER LOGIN PASSWORD"))
            {
        
                request.getRequestDispatcher("updatecashier.jsp").forward(request, response);
            }
        else if(s.equals("+CUS"))
            {
        
                request.getRequestDispatcher("addcus").forward(request, response);
            }
        
        
        else if(s.equals("LOG OUT"))
            {
                request.getRequestDispatcher("logout").forward(request,response);
            }
        else if(s.equals("LAST LOGIN DETAILS"))
            {
        
                request.getRequestDispatcher("lastlogindet").forward(request, response);
            }
        
        
        %>
    </body>
</html>

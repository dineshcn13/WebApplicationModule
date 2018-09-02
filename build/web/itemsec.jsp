<%-- 
    Document   : itemsec
    Created on : 8 Feb, 2018, 9:27:51 AM
    Author     : DINESH
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
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
    width: 102.1%
    
}

.card:hover {
    box-shadow: 10px 30px 50px 0 rgba(0,0.6,0.6,0.6);
}

.container {
    padding: 2px 0px;
}
            
        input[type=button], input[type=submit], input[type=reset] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 15px;
    text-decoration: none;
    margin: 1px 2px;
    cursor: pointer;
}

            #ip5 {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 100px;
            height: 16px; 
            }

            #ip6 {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 100px;
            height: 16px; 
            }
            
            #ip7 {
            border-radius: 15px 50px 30px;
            border: 2px solid #609;
            padding: 10px; 
            width: 100px;
            height: 16px; 
            }
            
            #list {
            border-radius: 60px 70px 60px;
            border: 2px solid #609;
            padding: 0px; 
            width: 140px;
            height: 40px; 
            }
            body{
                background-color:#ccff66;
            }
            .submit {
            width: 10.5em; 
            height: 3.5em;
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
        
        .submit2 {
            width: 3.5em; 
            height: 3.5em;
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 0px 0px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 13px;
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
        <div class="card"> 
               <div class="container">
        <script type="text/javascript">
        $(function() {
            $('input#txtNum').blur(function() {
                var amt = parseFloat(this.value);
                $(this).val('$' + amt.toFixed(2));
            });

        });
        
        
    </script>
    
        <table>
           
            <tr>
                <td>
                    
                    <FORM ACTION="check.jsp" method="get" onsubmit="window.location.reload();" target="frame5">
            <label for="itemselect" ><b>ITEMS</b></label><BR>
            <select id="list" onchange="showState(this.value)" name="value">
                <option value="">SELECT ITEMS</option>    
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
            </select> 
            </td>
            <td>
            <label for="mrp" ><b>MRP</b></label><BR>
            <input type="text" id="ip6" name="mrp" value="RS.<%= session.getAttribute("set1")%>" readonly /></td>
            </tr>
            <tr>
                <td>
            <label for="sprice" ><b>SELLING.PRICE</b></label><BR>
            <input type="text" id="ip6" name="sprice" value="<%= session.getAttribute("set2")%>" readonly /></td>
                </td>
                <td>
            <label for="qty" ><b>QUANTITY</b></label><BR>
            <input type="text" id="ip7" name="qty" value="0" /></td>
                
            </tr>
            <tr>
                <td>
            <label for="uqty" ><b>DEALER</b></label><BR>
            <input type="text" id="ip6" name="deal" value="<%= session.getAttribute("deal1")%>"/></marquee></td>
                </td>
                <td>
            <label for="tot" ><b>TOT DIS.COST</b></label><BR>
            <input type="text" id="ip6" name="tot" value="RS.<%= session.getAttribute("set4")%>" readonly /></td>
                </td>
            </tr>
             <tr>
                 <td><input type="submit" name="click" class="submit button2" value="ADD"></td>
                 <td><input type="submit" name="click" class="submit button2" value="CALCULATE"></td>
             </tr>
      
            <tr>
                <td>
            <label for="cgst" ><b>CGST AMOUNT</b></label><BR>
            <input type="text" id="ip6" name="cgst" value="<%= session.getAttribute("get1")%>" readonly/></td>
                </td>
                <td>
            <label for="dis" ><b>DIS AMOUNT</b></label><BR>
            <input type="text" id="ip6" name="dis" value="<%= session.getAttribute("get2")%>" readonly/></td>
                </td>
            </tr>
                <tr>
                <td>
            <label for="sgst" ><b>SGST AMOUNT</b></label><BR>
            <input type="text" id="ip6" name="sgst" value="<%= session.getAttribute("get1")%>" readonly/></td>
                </td>
                <td>
            <label for="subtot" ><b>SUB TOTAL</b></label><BR>
            <input type="text" id="ip6" name="stot" value="<%= session.getAttribute("get4")%>" readonly/></td>
                </td>
            </tr>
            <tr>
                <td>
            <label for="tgst" ><b>TOTAL GST</b></label><BR>
            <input type="text" id="ip6" name="tgst" value="<%= session.getAttribute("get3")%>" readonly/></td>
                </td>
                <td>
            <label for="gratot" ><b>GRAND TOTAL</b></label><BR>
            <input type="text" id="ip6" name="gratot" value="RS.<%= (session.getAttribute("get5"))%>" readonly/></td>
                </td>
            </tr>
            
            <tr>
                <td>
                    <input type="reset" name="click" class="submit button2" value="RESET"/></td>
                <td>
                    <input type="submit" name="click" class="submit button2" value="NEXT BILL"/>
                    
                </td>
                
            </tr>
            
           
        </form>
            
        </table>
                   
    </body>
</html>

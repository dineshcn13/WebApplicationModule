<%@ page import="java.sql.*" %>
<%
 try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/test","abc","123");
 Statement stmt=con.createStatement();
 String id = request.getParameter("items"); 
 ResultSet rs=stmt.executeQuery("select * from items where item = '"+ id +"'");
 
 
%>
<html>
<head>
 <title>ONLINE BOOK STORE - LOGIN PAGE</title>
</head>
<body>
 <table align=center>
  <tr>
   <td align=center><img src="logo.jpg"></img>
  <tr>
   <td align=right><a href="http://master-gtu.blogspot.com">www.master-gtu.blogspot.com</a>
 </table> 
 <table border=0 width=100% height=60% >
  <tr>
   <td colspan=5 align=center><h2>WELCOME TO ONLINE BOOK SHOPPING</h2>
  <tr>
   <td width=70% >
   <marquee>
    <table cellpadding=2 cellspacing=8>
    <tr>
    <%
     while(rs.next())
     {
      
    %>
      <td>
      <img src="<%="images/"+rs.getString("img") %>" width=100 height=150>
    <%
     }
    %>
    
    <tr>
    <%
     rs=stmt.executeQuery("select img,name from books");
     while(rs.next())
     {
      
    %>
      <td><%=rs.getString("name")%>
    <%
     }
    %>
    
    </table>
   </marquee>
   <td align=center valign=top>
    <i><h2>LOGIN</h2></i>
    <form action="pro37logincheck" method="post">
     <table>
      <tr>
       <td>USERNAME
       <td><input type="text" name="username">
      <tr>
       <td>PASSWORD
       <td><input type="text" name="password">
      <tr>
       <td colspan=2>
       <%
        String msg=request.getParameter("msg");
        if(msg!=null)
         out.println("<font color=red>"+msg+"</font>");
       %>
      <tr>
       <td><input type="submit" name="LOGIN">
       <td><input type="submit" name="CLEAR">
     </table>
    </form>
 </table>
</body>
</html>
<%
rs.close();
stmt.close();
con.close();
}catch(Exception e){}
%>
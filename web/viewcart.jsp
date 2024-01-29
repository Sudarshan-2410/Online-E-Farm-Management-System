<%-- 
    Document   : viewcart
    Created on : 2 Jul, 2021, 3:27:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 
        <%
   try
     {
         String z=request.getParameter("a");
         out.print(z);
         int id;
         int cnt=0;
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from cart where uname="+"'"+z+"'");
       out.print("select * from cart where uname="+"'"+z+"'");
       while(rs.next())
       {
        out.print(rs.getString(1)+rs.getInt(2)+rs.getString(3)+rs.getInt(4));
       }
     }catch(Exception e){}
   %>
  
    </body>
</html>

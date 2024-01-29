<%-- 
    Document   : viewp
    Created on : 2 Jul, 2021, 1:15:32 PM
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
        <table border="1"  class="">
            <tr>
            <th>Product Id</th>
             <th>Product Name</th>
              <th>price</th>
               <th>QTY</th>
                <th>Category</th>
                 <th>Description</th>
            </tr><%
       try
     {
         int id;
         int cnt=0;
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from product");
       while(rs.next())
       {
           out.print("<tr>");
            out.print("<th>"+rs.getInt(1)+"</th>");
            out.print("<th>"+rs.getString(2)+"</th>");
            out.print("<th>"+rs.getInt(3)+"</th>");
            out.print("<th>"+rs.getInt(4)+"</th>");
            out.print("<th>"+rs.getString(5)+"</th>");
            out.print("<th>"+rs.getString(6)+"</th>");
           
            out.print("</tr>");
       }
     }
       catch(Exception e)
       {}
   %>
        </table>
    </body>
</html>

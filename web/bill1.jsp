<%-- 
    Document   : bill1
    Created on : 30 Jun, 2021, 12:43:03 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>bill-1 page</title>
    </head>
    
  <body >
        <font face="arial" color="blue">
        <br><br>
        <br>
    <center>
        <table border="8" >
        <%
           int tot=0;
       String a=request.getParameter("txt1");
       String b=request.getParameter("txt2");
       String c=request.getParameter("txt3");
       int d=Integer.parseInt(request.getParameter("txt4"));
       int f=Integer.parseInt(request.getParameter("txt5"));
       tot=d*f;
             out.print("<tr><td>User  Name</td><td>"+a+"</td></tr>");
//              out.print("<tr><td>Email Id</td><td>"+b+"</td></tr>");
             out.print("<tr><td>Product Name</td><td>"+c+"</td></tr>");
              out.print("<tr><td>Price </td><td>"+d+"</td></tr>");
              out.print("<tr><td>quantity</td><td>"+f+"</td></tr>");
              out.print("<tr><td>Total amount </td><td>"+tot+"</td></tr>");
       %>
        </table>
    </body>
</html>


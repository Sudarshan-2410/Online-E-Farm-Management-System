<%-- 
    Document   : addp1
    Created on : 30 Jun, 2021, 12:58:10 PM
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
           String a1=request.getParameter("pid");
                    int a=Integer.parseInt(a1);
            String b=request.getParameter("pname");
            String c=request.getParameter("pdes");
            int d=Integer.parseInt(request.getParameter("pr"));
            int e=Integer.parseInt(request.getParameter("qty"));
            String f=request.getParameter("ca");
            String g=request.getParameter("fname");
     try
     {
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
       PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?)");
       ps.setInt(1, a);
       ps.setString(2, b);
       ps.setInt(3,d);
       ps.setInt(4, e);
       ps.setString(5, f);
       ps.setString(6, c);
       ps.setString(7, g);
       ps.executeUpdate();
       con.close();
       response.sendRedirect("AddP.jsp");
     }
     catch(Exception e1){out.print(e1);
     }
     
       %>
    </body>
</html>

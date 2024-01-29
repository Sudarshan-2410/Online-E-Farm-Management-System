<%-- 
    Document   : addcontact
    Created on : 2 Jul, 2021, 2:34:43 PM
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
            String fn=request.getParameter("fn");
            String eid=request.getParameter("eid");
             String ymsg=request.getParameter("ymsg");
        try{
         
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
            PreparedStatement ps=con.prepareStatement("insert into msg values(?,?,?)");
            ps.setString(1,fn);
             ps.setString(2,eid);
              ps.setString(3,ymsg);
              ps.executeUpdate();
              con.close();
              response.sendRedirect("startingp.jsp");
        }
        catch(Exception e)
        {
        out.print(e);
        }
        
        %>
    </body>
</html>

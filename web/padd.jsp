<%-- 
    Document   : padd
    Created on : 30 Jun, 2021, 12:50:20 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
     int f=0;
     String a=request.getParameter("email");
     String b=request.getParameter("pswd");
     out.print(a+b);
     session.setAttribute("uname", a);
     try
     {
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from reg1");
       while(rs.next())
       {
       if(a.equals(rs.getString(2)) && b.equals(rs.getString(5)))
           f=1;
       }
       if(f==1)
      response.sendRedirect("Home1.jsp");
       
     
    
     
     
     }catch(Exception e){}
     
     
     %>

    </body>
</html>

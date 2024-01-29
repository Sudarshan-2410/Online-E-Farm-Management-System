<%-- 
    Document   : addadmin
    Created on : 21 May, 2021, 7:28:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String username=request.getParameter("txt1");
         String password=request.getParameter("txt2");
         if(username.equals("admin") && password.equals("admin"))
         {
         response.sendRedirect("AdminH.jsp");
         }
         else{
//         response.sendRedirect("AdminLogin.jsp");
         out.print("<script>alert('Enter Valid Username or Password');window.location='AdminLogin.jsp';</script>");
         }
         %>
    </body>
</html>

<%-- 
    Document   : addlogin
    Created on : 2 Apr, 2021, 3:44:09 PM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add login</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            String Password=request.getParameter("pswd");
            int f=0;
            
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("Select * from reg1");
            while(rs.next())
            {
                if(rs.getString(2).equals(email) && rs.getString(5).equals(Password))
                {
                     f=1;
                }
            }
        }
        catch(Exception e){
            out.print(e);
        }
        if(f==1)
                {
                response.sendRedirect("Home1.jsp");
                }
   else{
               out.print("<script>alert('Enter Valid Username or Password');window.location='login.jsp';</script>");
              }          
 %>
    </body>
</html>

<%-- 
    Document   : bill
    Created on : 30 Jun, 2021, 12:41:43 AM
    Author     : Admin
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Billing Page</title>
    </head>
  <body>
        <form action="bill1.jsp">
    <%
           String un=(String)session.getAttribute("uname");
       int id=Integer.parseInt(request.getParameter("a"));
       out.print(id);
       out.print(" UserName:<input type=text name=txt1 value="+un+">");
     try
     {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from reg1 where email="+" ' "+un+" ' ");
       while(rs.next())
       {
       out.print("<br>Email Id<input type=text name=txt2 value="+rs.getString(2)+"><br>");
              }
       Statement st1=con.createStatement();
       ResultSet rs1=st1.executeQuery("select * from product where pid="+id);
       while(rs1.next())
       {
       out.print("<br>Product name:<input type=text name=txt3 value="+rs1.getString(2)+">");
              out.print("<br>Price:<input type=text name=txt4 value="+rs1.getInt(3)+">");
           out.print("<br>Enter Quantity<input name=txt5>");
           out.print("<br><input type=submit value=GO>");
       }
     }catch(Exception e){}
            %>
            
    </form>
    </body>
</html>


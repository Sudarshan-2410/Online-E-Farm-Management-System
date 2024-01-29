<%-- 
    Document   : cart1
    Created on : 2 Jul, 2021, 3:05:57 PM
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
            String fname="";
            String pname="";String des="";
            int pr=0;
                   String un=(String)session.getAttribute("uname");

        String a=request.getParameter("a");
        int e=Integer.parseInt(a);
        out.print(a);
        out.print(un);
        try
     {
         int id;
         int cnt=0;
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("select * from reg1 where email= "+"'"+un+"'");
       while(rs.next())
       {
       
       fname=rs.getString(1);
       }
       
       Statement st1=con.createStatement();
       ResultSet rs1=st1.executeQuery("select * from product where pid= "+e);
       while(rs1.next())
       {
       
       pname=rs1.getString(2);
       pr=rs1.getInt(3);
       des=rs1.getString("6");
       }
       out.print(fname+pname+pr);
       PreparedStatement ps=con.prepareStatement("insert into cart values(?,?,?,?)");
       ps.setString(1, fname);
              ps.setInt(2,e);
              ps.setString(3, des);
              ps.setInt(4, pr);
              ps.executeUpdate();
              
              con.close();
     }catch(Exception e1){}
        out.print("<a href='viewcart.jsp?a="+un+"'>VIEW CART</a>");

        %>
    </body>
</html>

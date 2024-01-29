<%-- 
    Document   : Home1
    Created on : 30 Jun, 2021, 12:53:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .box{
                background: red;
                border: 1px solid black;
            }
            
        </style>
    </head>
    <body>
            <table>
        <%
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
         cnt++;
         id=rs.getInt(1);    
      out.print("<div class=box");
out.print("<tc><td>"+ "<br>"+rs.getString(2)+"<br>"+rs.getInt(3)+"<br>"+rs.getString(5)+"<br><a href=bill.jsp?a="+               id+"><img height=300 width=300  src=' "+rs.getString(7)+" ' /></a>"+"</td></tc>");    
out.print("<a href=cart1.jsp?a="+               id+">Add to cart</a>");
out.print("</div>");         
if(cnt%5==0)
             out.print("<tr>");
       }
            //   Statement st1=con.createStatement();

             // ResultSet rs1=st1.executeQuery("select * from reg1 where email= "+);
     //  while(rs.next())

     }catch(Exception e){}
       %>
        </table> 

    </body>
</html>

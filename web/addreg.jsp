<%-- 
    Document   : addreg
    Created on : 2 Apr, 2021, 4:48:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addreg</title>
    </head>
    <body>
        <%
            int f=0;
            String fullname=request.getParameter("fullname");
            String email=request.getParameter("email");
            String contact=request.getParameter("contact");
            String address=request.getParameter("address");
            String password=request.getParameter("pswd");
            String confirmpassword=request.getParameter("cpswd");
            String secq=request.getParameter("secq");
            String secans=request.getParameter("secans");
//            int f=0;
           if(password.equals(confirmpassword))
           {
               f=1;
               
           }
        try{
            if(f==1)
            {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/SR","SR","SR");
            PreparedStatement ps=con.prepareStatement("insert into reg1 values(?,?,?,?,?,?,?,?)");
            ps.setString(1,fullname);
            ps.setString(2,email);
            ps.setString(3,contact);
            ps.setString(4,address);
            ps.setString(5,password);
            ps.setString(6,confirmpassword);
            ps.setString(7,secq);
            ps.setString(8,secans);
            ps.executeUpdate();
            con.close();
            out.print("Data Inserted....!!!");
//            out.print("<a href='LogReg.jsp'>GO to Login OR</a>");
                response.sendRedirect("login.jsp");
            }
            else
//                out.print("Password and Conform Password are not matching");
//            
//            out.print("<a href='LogReg.jsp'>GO TO REGISTRATION PAGE...</a>");
                 response.sendRedirect("PassNotMatch.jsp");
        }
//            Statement st=Con.createStatement();
//            ResultSet rs=st.executeQuery("Select * from reg1");
//             while(rs.next())
//            {
//                if(rs.getString(5).equals(password) && rs.getString(6).equals(conformpassword))
//                {                   
//                    f=1;
//                }
//                
//            }
//        }
        catch(ClassNotFoundException cx){
            out.print(cx);
        }
//    if(f==1)
 
                
               
//        else{
//                  out.print("<script>alert('Password and ConformPassword does not Match');window.location='LogReg.jsp';</script>");
//                }       
        %>
    </body>
</html>

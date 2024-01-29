<%-- 
    Document   : header
    Created on : 30 Jun, 2021, 1:51:44 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                text-decoration: none;
                list-style: none;
                box-sizing: border-box;
            }
            body{
                font-family: arial,sans-serif;
            }
            nav{
                background-color: black;
                width: 100%;
                height: 70px;
            }
            .company{
                color: white;
                font-size: 5px;
                margin: 0 50px;
                line-height: 80px;
                font-weight: bold;
                text-shadow:5px 5px 5px #03e9fa,
                            20px 0px 25px #03e9fa, 
                            40px 0px 40px #03e9fa, 
                            80px 75px 75px #03e9fa;
            }
            nav ul {
                float: right;
                margin-right: 5px;
            }
            nav ul li{
                display: inline-block;
                padding: 5px;
                line-height: 60px;
            }
            nav ul li a{
                color: #03e9fa;
                font-size: 14px;
                text-decoration: none;
                text-transform: uppercase;
                padding: 9px 16px;
                margin: 40px 0;
                letter-spacing: 1.5px;
                border-top: 1px solid #03e9fa;
                border-radius: 13px;
            }
            a:hover{
                background-color:#03e9fa;
                color: white;
                box-shadow: 0 0 5px #03e9fa,
                            0 0 25px #03e9fa,
                            0 0 50px #03e9fa,
                            0 0 100px #03e9fa;
            }
            .checkbtn{
                color: white;
                float: right;
                font-size: 30px;
                margin-right: 40px;
                cursor: pointer;
                line-height: 80px;
            }
            #check{
                display: none;
            }
            @media(max-width:952px){
                .company{
                    font-size: 30px;
                    padding-left: 40px;
                }
                nav ul li a{
                    font-size: 16px;
                }
            }
            @media(max-width:858px)
            {
                .checkbtn{
                    display: block;                    
                }
                ul{
                    position: fixed;
                    width: 100%;
                    height: 100vh;
                    background-color: #222;
                    top: 80px;
                    left: -100%;
                    text-align: center;
                    transition: all .5s;
                }
                nav ul li{
                    display: block;
                    line-height: 30px;
                    margin: 50px 0;
                }
                nav ul li a{
                    color: white;
                    font-size: 20px;
                    font-weight: bold;
                }
                a:hover{
                    background-color:#03e9fa;
                }
                #check:checked ~ ul{
                    left: 0;
                }
            }
            section{
                background: url(bg.jpg) no-repeat;
                background-size:cover;
                height: calc(100vh - 80px);
            }
/*            .sidebar .links_name{
            font-size: 15px;
            font-weight: 400;
            opacity: 0;
            pointer-events: none;
            transition: all 0.3s ease;
          }
          .sidebar.active .links_name{
            transition: 0s;
            opacity: 1;
            pointer-events: auto
          }*/
        </style>
    </head>
    <body>
        <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="fa fa-bars"></i>
            </label>
            <label><b>SB</b></label>
            <ul>
                <li><a href="Home1.jsp">Home</a></li>
                <li><a href="AddP.jsp">Add Product</a></li>
                <li><a href="cust.jsp">View Customers</a></li>
                <li><a href="viewp.jsp">Product Details</a></li>
                <li><a href=".jsp">View Feedback</a></li>
<!--                <span class="links_name" onclick="document.getElementById('login-form').style.display='block'"
                                    style="width:auto;">Login Here</span>-->
                
                <li><a href="startingp.jsp">Admin Logout</a></li>
            </ul>
        </nav>
        <section></section>
    </body>
</html>

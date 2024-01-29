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
        <title>Starting Page</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                text-decoration: none;
                list-style: none;
                /*box-sizing: border-box;*/
            }
            body{
                font-family: Verdana,sans-serif;
                overflow: hidden;
            }
            nav{
                background-color: black;
                width: 100%;
                height: 65px;
                z-index: 3;
                padding: 6px 5px;
                position: fixed;
                top: 0;
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
                     z-index: 3;
                }
                #check:checked ~ ul{
                    left: 0;
                }
            }

            .overlay{
                    width: 100%;
                    height: 100%;
                    position: absolute;
                    top: 0;
                    left: 0;
                    /*background-image: linear-gradient(45deg, rgba(0,0,0,.1) 50%,rgba(0,0,0,.9) 50%);*/
                    background-size: 2px 2px;
                    z-index: 3;
                     }
             video{
                     position: relative;
                     top: 0;
                     left: 0;
                     width: 100%;
                     height: 100%;
                     object-fit: cover;
                     object-position: center;
                     } 
            h1{
                    text-align: center;
                    color: white;
                    position: fixed;
                    top: 10;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    font-size: 70px;
                    margin-top:15;
                    margin-bottom: 10;
                    z-index: 3;
                    width: 100%;
                    height: 210px;
                    text-shadow: 2px 2px 4px red;
                }
                p{
                    text-align: center;
                    color: wheat;
                    position: fixed;
                    top: 10;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    font-size: 40px;
                    margin: auto;
                    z-index: 3;
                    width: 100%;
                    height: 100px;
                    text-shadow: 2px 2px 4px red;
                }
            
        </style>
    </head>
    <body>
         <video  autoplay muted loop="">
                        <source src="videos/Bvideo.mp4" type="video/mp4">                        
                    </video>            
                <div class="overlay"></div>
                <h1><b>UPJ Agrotech PVT.LTD</b></h1><br><br>
                <p><b>Online E-Farm and Machinories</b></p>
        <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="fa fa-bars"></i>
            </label>
            <label><b>SB</b></label>
            <ul>
                <!--<li><a href="Home1.jsp">Home</a></li>-->
                <li><a href="#">Your Orders</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Customer Service</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
                <li><a href="login.jsp">User Login</a></li>
                <li><a href="AdminLogin.jsp">Admin Login</a></li>
            </ul>
        </nav>
      
    </body>
</html>

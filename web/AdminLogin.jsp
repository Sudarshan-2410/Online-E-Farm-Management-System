<%-- 
    Document   : Login1
    Created on : 13 Apr, 2021, 12:07:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transparent Login Form</title>
        <style>
            body{
                margin:0;
                padding: 0;
                font-family: sans-serif;
                background: url(img/SR.jpg) no-repeat;
                background-size: cover;
                
            }
            .login-box{

                /*margin-bottom:  200px;*/
                margin-top: 400px;
                width: 280px;
                margin-left: 750px;
                top: 0;
                left: 0;
                transform: translate(-45%,-55%);
                color: hsl(128,100%,54%);
                text-align: center;
                height: 200px;
                
            }
            .textbox{
                width: 100%;
                height: 50px;
                overflow: hidden;
                font-size: 20px;
                padding: 8px 0;
                margin: 8px 0;
                margin-top: 50px;
                border-bottom: 1px solid #4caf50;
            }
            .textbox input{
                border: none;
                outline: none;
                background: none;
                color: white;
                font-size: 18px;
                width: 80%;
                float: left;
                margin-top: 20px; 
               
            }
            .textbox1{
                width: 100%;
                overflow: hidden;
                font-size: 20px;
                padding: 8px 0;
                margin: 8px 0;
                margin-top: 0px;
                border-bottom: 1px solid #4caf50;
            }
            .textbox1 input{
                border: none;
                outline: none;
                background: none;
                color: white;
                font-size: 18px;
                width: 80%;
                float: left;
                margin-top: 20px; 
               
            }
            .btn input{
                width: 100%;
                background: none;
                border: 2px solid #4caf50;
                color: white;
                padding: 5px;
                font-size: 18px;
                cursor: pointer;
                margin: 12px 0;
                margin-top: 50px;
            }
            h1{
                margin: 0;
                padding: 0;
                top: 100%; 
                height: 20%;
                margin-top: -110px;
                /*color: lawgreen;*/
                background-color:#000000;
                color: white;
                box-shadow: 0 0 5px #ffffcc,
                            0 0 25px #ffffcc,
                            0 0 50px #ffffcc,
                            0 0 100px #ffffcc;
            }
            a{
                color: lightgreen;
            }
                
             nav{
                background-color: black;
                width: 100%;
                height: 80px;
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


        </style>
    </head>
    <body>
        <form action="addadmin.jsp">
       <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="fa fa-bars"></i>
            </label>
            <label><b>SB</b></label>
            <ul>
                <!--<li><a href="Home1.jsp">Home</a></li>-->
                <!--<li><a href="#">Your Orders</a></li>-->
                <!--<li><a href="#">About Us</a></li>-->
                <!--<li><a href="#">Customer Service</a></li>-->
                <!--<li><a href="contactus.jsp">Contact Us</a></li>-->
                <li><a href="startingp.jsp">Back</a></li><br>
                <!--<li><a href="AdminLogin.jsp">Admin Login</a></li>-->
            </ul>
        </nav><br><br><br>
          
              
                <div class="login-box">
                    <h1><b>Admin Login</b></h1><br><br>
                    <div class="textbox">
                        <input type="text" placeholder="Username" name="txt1" value="" required="">
                    </div>
                    <div class="textbox1">
                        <input type="password" placeholder="Password" name="txt2" value="" required="">
                    </div>
                   
                    <div class="btn">
                    <input type="submit" value="Sign in">
                    </div>
                </div>
        </form>
          
    </body>
</html>

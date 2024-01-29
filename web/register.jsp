<%-- 
    Document   : register
    Created on : 1 Jul, 2021, 1:54:49 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800,900&display=swap" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/c26cd2166c.js"></script>
<style>
    body{
        margin: 0;
        padding: 0;
        font-family: poppins;
        background-image: url(reg3.jpg);
        -webkit-background-size: cover;
        background-size: cover;
        display: flex;
        justify-content: left;
    }
    .wrapper{
        background-color: rgba(255,255,255,0.5);
        width: 800px;
        height: 500px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
    }
    .wrapper:before{
        content: '';
        width: 350px;
        height: 500px;
        background-color: rgba(0,0,0,0.5);
        position: absolute;
    }
    .header-area h2{
        position: absolute;
        top: 20%;
        left: 20%;
        transform: translate(-50%,-50%);
        width: 25%;
        border: 1px inset #fff;
        text-align: center;
        color: black;
        font-size: 35px;
        transition: 0.8s;
         box-shadow: 0 0 5px #03e9fa,
                            0 0 25px #03e9fa,
                            0 0 50px #03e9fa,
                            0 0 100px #03e9fa;
    }
/*    .header-area p{
        position: absolute;
        top: 50%;
        left:20%;
        transform: translate(-50%,-50%);
        color: #fff;           
    }*/
    .social-area{
/*        position: absolute;
        top: 60%;
        left: 20%;
        transform: translate(-90%,-90%);       */
        width: 400px;
        height: 100px;
        display: flex;
        margin: 100px;
        background: transparent;
        padding: 130px 50px;
        text-align: center;
    }
    #icon{
        width: 80px;
        height: 10px;
    }
    .fab{
        color: rgb(83,67,67);
        font-size: 50px;
    }
    .fab:hover{
        transition: 0.8s;
        text-shadow:0 0 10px #00fff2,0 0 20px #00fff2,0 0 30px #00fff2,0 0 40px #00fff2,
            0 0 50px #00fff2,0 0 60px #00fff2,0 0 70px #00fff2,0 0 80px #00fff2,0 0 90px #00fff2;
    }

    .form-area{
        position: absolute;
        top: 50%;
        left: 70%;
        transform: translate(-50%,-50%); 
        width: 350px;
        overflow: hidden;
       
    }
    .form-area input{
        outline: none;
        padding: 0 0 0 35px;
        border: 1px solid rgba(0,0,0,0);
        border-bottom-color: #262626;
        background: transparent;
        width: 100%;
        height: 45px;
        margin-bottom: 10px;
        font-size: 15px;
       
    }
    .form-area i{
        width: 20px;
        position: absolute;
        margin-top: 15px;
    }
           
    input:checked[type=checkbox]{
        background-color: #262626;
        border: none;
    }
    .terms{
        float: right;
        margin-right: 75px;
        font-size: 15px;
    }
    .form-area input[type=submit]{
        width: 100%;
        border: none;
        background-color: black;
        color: white;
        cursor: pointer;
        padding: 0;       
    }
    .form-area button{
         width: 100%;
         line-height: 40px;
        border: none;
        background-color: black;
        color: #fff;
        cursor: pointer;
        padding: 0;      
    }
/*    .back:hover{
        transition: 0.8s;
        text-shadow:0 0 10px #00fff2,0 0 20px #00fff2,0 0 30px #00fff2,0 0 40px #00fff2,
            0 0 50px #00fff2,0 0 60px #00fff2,0 0 70px #00fff2,0 0 80px #00fff2,0 0 90px #00fff2;
    }*/
    .form-area input[type=submit]:hover{
        transition: 0.8s;
        box-shadow:0 0 10px #E41B17,0 0 20px #E41B17,0 0 30px #E41B17,0 0 40px #E41B17;
/*            0 0 50px #E41B17,0 0 60px #E41B17,0 0 70px #E41B17,0 0 80px #E41B17,0 0 90px #E41B17;*/
    }
     button:hover{
        transition: 0.8s;
        box-shadow:0 0 10px #E41B17,0 0 20px #E41B17,0 0 30px #E41B17,0 0 40px #E41B17;
/*            0 0 50px #E41B17,0 0 60px #E41B17,0 0 70px #E41B17,0 0 80px #E41B17,0 0 90px #E41B17;*/
    }
    .selCls{
        background-color:lightgoldenrodyellow;
    }
    
</style>
    </head>
    <body>
        <form action="addreg.jsp">
        <div class="header-area">
            <h2>Registration Page</h2>
            <!--<p>SB</p>-->
        </div>
        <div class="social-area">
            <div id="icon">
            <i class="fab fa-google"></i>
            </div>
            
            <div id="icon">
                <a href="https://www.facebook.com/sudarshant.bhosale"> <i class="fab fa-facebook"></i></a>
            </div>
            
            <div id="icon">
            <i class="fab fa-linkedin"></i>
            </div>
            
            <div id="icon">
            <i class="fab fa-instagram"></i>
            </div>
        </div>
        <div class="form-area">
            <i class="fa fa-user"></i>
            <input type="text" placeholder="Enter Full Name" name="fullname" required>
            <i class="fa fa-envelope"></i>
            <input type="email" placeholder="Enter Email Id" name="email" required>
            <i class="fa fa-mobile" aria-hidden="true"></i>
            <input type="text" placeholder="Enter Contact No" name="contact" required>
            <i class="fa fa-map-marker" aria-hidden="true"></i>
            <input type="text" placeholder="Enter Address" name="address" required>
            <i class="fa fa-key"></i>
            <input type="password" placeholder="Enter Password" name="pswd" required>
            <i class="fa fa-key"></i>
            <input type="password" placeholder="Confirm Password" name="cpswd" required>
            <!--<i class="fa fa-key"></i>-->
            <select class='selCls' name="secq" required>
            <option>Your first school's name</option>
            <option>Your Mobile Number</option>
            <option>Your favorite Subject name</option>
            <option>Your Nationality</option>
            </select><br>
            <i class="fa fa-key"></i>
            <input type="text" placeholder="Security Answer" name="secans" required><br><br>
            <input type="submit" value="Submit"><br><br><br>
            <a href="login.jsp"><button type="button">Back</button></a>
        </div>
        </form>
    </body>
</html>

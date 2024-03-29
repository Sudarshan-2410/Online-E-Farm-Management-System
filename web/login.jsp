<%-- 
    Document   : login
    Created on : 30 Jun, 2021, 12:50:00 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login form</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:600,700" rel="stylesheet">
    
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    height: 100vh;
    width: 100%;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(#2196f3, #e91e63);
}

.bubbles {
    position: absolute;
    bottom: -120px;
    display: flex;
    flex-wrap: wrap;
    margin-top: 70px;
    width: 100%;
    justify-content: space-around;
}

.bubbles span {
    height: 60px;
    width: 60px;
    background: rgba(255, 255, 255, 0.1);
    animation: move 10s linear infinite;
    position: relative;
    overflow: hidden;
}

@keyframes move {
    100% {
        transform: translateY(-100vh);
    }
}

.bubbles span.one {
    animation-delay: 2.2s;
    transform: scale(2.15)
}

.bubbles span.two {
    animation-delay: 3.5s;
    transform: scale(1.55)
}

.bubbles span.three {
    animation-delay: 0.2s;
    transform: scale(0.35)
}

.bubbles span.four {
    animation-delay: 6s;
    transform: scale(2.15)
}

.bubbles span.five {
    animation-delay: 7s;
    transform: scale(0.5)
}

.bubbles span.six {
    animation-delay: 4s;
    transform: scale(2.5)
}

.bubbles span.seven {
    animation-delay: 3 transform scale(1.5)
}

.bubbles span:before {
    content: '';
    position: absolute;
    left: 0;
    top: 0;
    height: 60px;
    width: 40%;
    transform: skew(45deg) translateX(150px);
    background: rgba(255, 255, 255, 0.15);
    animation: mirror 3s linear infinite;
}

@keyframes mirror {
    100% {
        transform: translateX(-450px);
    }
}

.bubbles span.one:before {
    animation-delay: 1.5s;
}

.bubbles span.two:before {
    animation-delay: 3.5s;
}

.bubbles span.three:before {
    animation-delay: 2.5s;
}

.bubbles span.four:before {
    animation-delay: 7.5s;
}

.bubbles span.five:before {
    animation-delay: 4.5s;
}

.bubbles span.six:before {
    animation-delay: 0.5s;
}

.bubbles span.seven:before {
    animation-delay: 6s;
}

.container {
    z-index: 12;
    width: 360px;
    padding: 15px;
    border-radius: 12px;
    background: rgba(255, 255, 255, 0.1);
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.15);
    border-top: 1px solid rgba(255, 255, 255, 0.5);
    border-left: 1px solid rgba(255, 255, 255, 0.5);
}

.container input[type="text"] {
    width: 100%;
    height: 100px;
    margin: 0 3px;
    outline: none;
    border: none;
    color: #fff;
    font-size: 20px;
    text-align: right;
    padding-right: 10px;
    pointer-events: none;
    background: transparent;
}

.container input[type="button"] {
    height: 65px;
    color: #fff;
    width: calc(100% / 4 - 5px);
    background: transparent;
    border-radius: 12px;
    margin-top: 15px;
    outline: none;
    border: none;
    font-size: 20px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.container input[type="button"]:hover {
    background: rgba(255, 255, 255, 0.1);
}

.container {
    z-index: 12;
    width: 360px;
    padding: 15px;
    border-radius: 12px;
    background: rgba(255, 255, 255, 0.1);
    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.15);
    border-top: 1px solid rgba(255, 255, 255, 0.5);
    border-left: 1px solid rgba(255, 255, 255, 0.5);
}

.container input[type="text"] {
    width: 100%;
    height: 100px;
    margin: 0 3px;
    outline: none;
    border: none;
    color: #fff;
    font-size: 20px;
    text-align: right;
    padding-right: 10px;
    background: transparent;
}

.container input[type="button"] {
    height: 65px;
    color: #fff;
    width: calc(100% / 4 - 5px);
    background: transparent;
    border-radius: 12px;
    margin-top: 15px;
    outline: none;
    border: none;
    font-size: 20px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.container input[type="button"]:hover {
    background: rgba(255, 255, 255, 0.1);
}

section {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.box {
    position: relative;
}

.box .square {
    position: absolute;
    backdrop-filter: blur(5px);
    box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.5);
    border-right: 1px solid rgba(255, 255, 255, 0.2);
    border-bottom: 1px solid rgba(255, 255, 255, 0.2);
    background: rgba(255, 255, 255, 0.1);
    animation: animate 10s linear infinite;
    animation-delay: calc(-1s*var(--i));
}

@keyframes animate {
    0%,
    100% {
        transform: translateY(-40px);
    }
    50% {
        transform: translateY(40px);
    }
}

.box .square:nth-child(1) {
    top: -50px;
    right: -60px;
    height: 100px;
    width: 100px;
}

.box .square:nth-child(2) {
    top: 150px;
    left: -100px;
    height: 120px;
    width: 120px;
    z-index: 2;
}

.box .square:nth-child(3) {
    bottom: 50px;
    right: -60px;
    height: 80px;
    width: 80px;
    z-index: 2;
}

.box .square:nth-child(4) {
    bottom: -80px;
    left: 100px;
    width: 50px;
    height: 50px;
}

.box .square:nth-child(5) {
    top: -80px;
    left: 140px;
    width: 60px;
    height: 60px;
}

.container {
    position: relative;
    width: 400px;
    min-height: 400px;
    background: rgba(255, 255, 255, 0.1);
    border-radius: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    backdrop-filter: blur(5px);
    box-shadow: 0 25px 45px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba(255, 255, 255, 0.5);
    border-right: 1px solid rgba(255, 255, 255, 0.2);
    border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}

.form {
    position: relative;
    width: 100%;
    height: 100%;
    padding: 45px;
}

.form h2 {
    position: relative;
    color: white;
    font-size: 24px;
    font-weight: 600;
    letter-spacing: 1px;
    margin-bottom: 40px;
}

.form h2::before {
    content: '';
    position: absolute;
    left: 0;
    bottom: -10px;
    width: 80px;
    height: 4px;
    background: white;
}

.form .inputbox {
    width: 100%;
    margin-top: 20px;
}

.form .inputbox input {
    width: 100%;
    background: rgba(255, 255, 255, 0.2);
    border: none;
    outline: none;
    padding: 10px 20px;
    border-radius: 35px;
    border: 1px solid rgba(255, 255, 255, 0.2);
    border-bottom: 1px solid rgba(255, 255, 255, 0.2);
    font-size: 16px;
    letter-spacing: 1px;
    color: white;
    box-shadow: 0 5px 15px rgba(255, 255, 255, 0.05);
}

.form .inputbox input::placeholder {
    color: white;
}

.form .inputbox input[type="submit"] {
    background: white;
    color: #666;
    max-width: 100px;
    cursor: pointer;
    margin-bottom: 30px;
    font-weight: 600;
}

.forget {
    margin-top: 5px;
    color: white;
}

.form a {
    color: white;
    font-weight: 600;
}
.back:hover{
    transition: 0.8s;
        text-shadow:0 0 10px #00fff2,0 0 20px #00fff2,0 0 30px #00fff2,0 0 40px #00fff2,
            0 0 50px #00fff2,0 0 60px #00fff2,0 0 70px #00fff2,0 0 80px #00fff2,0 0 90px #00fff2;
}
    </style>
</head>

<body>
 <form action="padd.jsp">
    <section>
       
        <div class="box">
            <div class="square" style="--i:0;"></div>
            <div class="square" style="--i:1;"></div>
            <div class="square" style="--i:2;"></div>
            <div class="square" style="--i:3;"></div>
            <div class="square" style="--i:4;"></div>
            <div class="container">
                <div class="form">
                    <h2>Login Form</h2>
                    
                        <div class="inputbox">
                            <input type="username" placeholder="username" name="email" required >
                        </div>
                        <div class="inputbox">
                            <input type="password" placeholder="Password" name="pswd" required >
                        </div>
                        <div class="inputbox">
                            <input type="submit" value="Login">
                        </div>
                        <p class="forget">Forget Password ? <a href="psdupdate.jsp">Click Here</a></p><br>
                        <p class="forget">Create an Account ? <a href="register.jsp">Register</a></p><br><br>
                        <a href="startingp.jsp" class="back">Back</a>
                 
                </div>
            </div>
        </div>
         
    </section>
 </form>
</body>
</html>
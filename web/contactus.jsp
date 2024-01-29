<%-- 
    Document   : contactus
    Created on : 28 Jun, 2021, 2:33:59 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
<link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800,900&display=swap" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">-->
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins',sans-serif;
            }
            .contact{
                position: relative;
                min-height: 100vh;
                padding: 50px 100px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                background: url(img/contact1.jpg);
                background-size: cover;               
            }
            .contact .content{
                max-width: 800px;
                text-align: center;
            }
            .contact .content h2{
                font-size: 40px;
                font-weight: 500;
                color: black;
            }
            .contact .content p{
                font-weight: 800;
                color:  #333;
                font-size: 30px;
            }
            .container
            {
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 30px;
            }
            .container .contactInfo{
                width: 50%;
                display: flex;
                flex-direction: column;
            }
            .container .contactInfo .box{
                position: relative;
                padding: 20px 0;
                display: flex;
            }
            .container .contactInfo .box .icon{
                min-width: 60px;
                height: 60px;
                background: wheat;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 50%;
                font-size: 22px;
            }
            .container .contactInfo .box .text{
                display: flex;
                margin-left:20px;
                font-size: 16px;
                color: black;
                flex-direction: column;
                font-weight: 300;
            }
            .container .contactInfo .box .text h3{
                font-weight: 500;
                color: #333;
            }
            .contactForm{
                width: 40%;
                padding: 40px;
                background: #fff;
            }
            .contactForm h2
            {
                font-size: 30px;
                color: #333;
                font-weight: 500;
            }
            .contactForm .inputBox
            {
                position: relative;
                width: 100%;
                margin-top: 10px;
            }
            .contactForm .inputBox input,
            .contactForm .inputBox textarea
            {
                width: 100%;
                padding: 5px 0;
                font-size: 16px;
                margin: 10px 0;
                border:none;
                border-bottom: 2px solid #333; 
                outline: none;
                resize: none;
            }
            .contactForm .inputBox span
            {
                position: absolute;
                left: 0;
                padding: 5px 0;
                font-size: 16px;
                margin: 10px 0;
                pointer-events: none;
                transition: 0.5s;
                color: #666;
            }
            .contactForm .inputBox input:focus ~ span,
            .contactForm .inputBox input:valid ~ span,
            .contactForm .inputBox textarea:focus ~ span,
            .contactForm .inputBox textarea:valid ~ span
            {
                color: #e91e63;
                font-size: 12px;
                transform: translateY(-20px);
            }
            .contactForm .inputBox input[type="submit"]
            {
                width: 100px;
                background: #00bcd4;
                color: #fff;
                border: none;
                cursor: pointer;
                padding: 10px;
                font-size: 18px;
            }
            @media (max-width:991px)
            {
                .contact
                {
                    padding: 50px;
                }
                .container
                {
                    flex-direction: column;
                }
                .container .contactInfo
                {
                    margin-bottom: 40px;
                }
                .container .contactInfo,
                .contactForm
                {
                    width: 100%;
                }
            }
            .back:hover{
                transition: 0.8s;
         text-shadow:0 0 10px #00fff2,0 0 20px #00fff2,0 0 30px #00fff2,0 0 40px #00fff2,
            0 0 50px #00fff2,0 0 60px #00fff2,0 0 70px #00fff2,0 0 80px #00fff2,0 0 90px #00fff2;
            }
            .contactForm .inputBox input[type="submit"]:hover{
                background: red;
            }
        </style>
    </head>
    <body>
        <section class="contact">
            <div class="content">
                <h2><b><u>Contact Us</u></b></h2><br>
                <p><b> UPJ For Better Life... </b></p>
            </div>
            <div class="container">
                <div class="contactInfo">
                <div class="box">
                    <div class="icon">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                    </div>
                    <div class="text">
                        <h3><b><u>Address</u></b></h3>
                        <p><b>UPJ Agro Irrigates<br>
                        Indira Gandhi shoping center 22,<br>
                        near Bus Stand Pandharpur-413304</b>
                        </p>
                    </div>
                </div>
                <div class="box">
                    <div class="icon">
                        <i class="fa fa-mobile" aria-hidden="true"></i>
                    </div>
                    <div class="text">
                        <h3><b><u>Mobile No</u></b></h3>
                        <p><b>7058415555</b></p>
                    </div>
                </div>
                <div class="box">
                    <div class="icon">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    </div>
                    <div class="text">
                        <h3><b><u>Email Id</u>></b></h3>
                        <p><b>ganeshjamadade@gmail.com</b></p>
                    </div>
                </div>
            </div>
            <div class="contactForm">
                <form action="addcontact.jsp">
                    <h2>Send Feedback...</h2>
                    <div class="inputBox">
                        <input type="text" name="fn" required="required">
                        <span>Full Name</span>
                    </div>
                    <div class="inputBox">
                        <input type="text" name="eid" required="required">
                        <span>Email Id</span>
                    </div>
                    <div class="inputBox">
                        <textarea name="ymsg" required="required"></textarea>
                        <span>Type Your Message...</span>
                    </div>
                    <div class="inputBox">
                        <input type="Submit" name="submit" value="Send"><br><br>
                    </div>
                </form>
                        
                        <a href="startingp.jsp" class="back">Back</a>
                    </div
                   
            </div>
            </div>
        </section>
    </body>
</html>

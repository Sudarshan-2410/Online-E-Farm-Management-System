<%-- 
    Document   : psdupdate
    Created on : 30 Jun, 2021, 1:17:31 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: wheat;
            }
            #sWrapper
            {
            width:300px;
            margin:80px auto 0px auto;
            padding:10px;
            border-radius:5px;
            -moz-border-radius:5px;
            -webkit-border-radius:5px;
            background-color:transparent;
            overflow:auto;
            }

            #sHeader
            {
            font-size:1.8em;
            color:black;
            text-align: center;
            }

            .sRows
            {
            margin:10px 0px;
            }

            .sLabel
            {
            color:#333333

            }

            .inputCls
            {
            width:100%;
            height:30px;
            padding-left:5px;
            border:1px solid #A1A1A1;
            color:#333333;
            }

            .selCls
            {
            width:100%;
            height:30px;
            padding-left:5px;
            border:1px solid #A1A1A1;
            color:#333333;
            }

            input[type="submit"]
            {
            width:100px;
            height:35px;
            background-color:#2492db;
            border: 1px solid #1f7ab8;
            color:#fff;
            font-size:1.2em;
            cursor:pointer;
            float:right;
            }

            #sNotice
            {
            clear:both;
            font-size:1em;
            color:#ff0000;
            padding-top:20px;
            }
    </style>
    </head>
    <body>

<div id="sWrapper">
    <div id="sHeader"><b>Change Password</b></div><br><br>
<form action="psdupcode.jsp">
<!-- wrapper for each label and field -->
<div class="sRows">
<div class="sLabel">Email id:</div>
<div class="sInput">
    <input type="email" class="inputCls" name="txt1" required>
</div>
</div>
<div class="sRows">
<div class="sLabel">Security question:</div>
<div class="sInput">
    <select class="selCls" name="txt2" required>
<option>Your first school's name</option>
<option>Your Mobile Number</option>
<option>Your favorite Subject name</option>
<option>Your Nationality</option>
</select>
</div>
</div>

<div class="sRows">
<div class="sLabel">Answer:</div>
<div class="sInput">
    <input type="text" class="inputCls" name="txt3" required>
</div>
</div>
<div class="sRows">
<div class="sLabel">New Password:</div>
<div class="sInput">
    <input type="password" class="inputCls" name="txt4" required>
</div>
</div>
<div class="sRows">
<div class="sLabel">Confirm Password:</div>
<div class="sInput">
    <input type="password" class="inputCls" name="txt5"  required><br><br>
</div>
</div>


<div class="sRows">
<input type="submit" value="Save" >
<a href="login.jsp"><b>Back</b></a>
</div>
</form>
<!-- div to show errors -->
<div id="sNotice"></div>
</div>
    </body>
</html>

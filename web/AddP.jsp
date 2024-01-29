<%-- 
    Document   : AddP
    Created on : 24 Jun, 2021, 4:02:10 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
         <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>-->
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>-->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.2/semantic.min.js"></script>-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.2/semantic.min.css">
        <style>
            img{
               
                
                max-width:400px;
                max-height:400px;
                
            }
            input[type=file]{
                padding:10px;
            }
             body {
                background-color: #99ffff;
                padding: 20px;
                font-family: Arial;
                position: relative;
                min-height: 100vh;
                width: 100%;
                overflow: hidden;
            }
            .vie{
       
      background: brown;
            }
            
            </style>
            <script>
                var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png",".webp"];
                function ValidateSingleInput(input) {
                    if (input.type == "file") {
                        var sFileName = input.value;
                        if (sFileName.length > 0) {
                            var blnValid = false;
                            for (var j = 0; j < _validFileExtensions.length; j++) {
                                var sCurExtension = _validFileExtensions[j];
                                if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                                    blnValid = true;
                                    var showimg = document.getElementById('img1');
                                    showimg.style.display = "";
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();

                                        reader.onload = function (e) {
                                            $('#img1').attr('src', e.target.result);
                                        };

                                        reader.readAsDataURL(input.files[0]);
                                    }
                                    break;
                                }
                            }

                            if (!blnValid) {
                                alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));

                                var textcontrol = document.getElementById("txtname");
                                textcontrol.value = "1";

                            }
                        }
                    }
                    return true;
                }
            </script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        </head>
        <body>
            <form action="addp1.jsp" method="post">
                <table border="0" cellspacing="5" cellpadding="20px" style="border-collapse: separate; border-spacing: 0 1em;">
                    <tr>
                        <td style="float: right">
                                <label>Product Id:</label></td>
                            <td>
                                <div class="ui left icon input">
                                    <input type="text" name="pid" placeholder="Product Id" required="*" maxlength="50">
                                    <i class="user outline icon"></i>
                                </div></td>
                    </tr>
                    <tr>
                        <td style="float: right">
                                <label>Product Name:</label></td>
                            <td>
                                <div class="ui left icon input">
                                    <input type="text" name="pname" placeholder="Product Name" required="*" maxlength="50">
                                    <i class="user outline icon"></i>
                                </div></td>
                            <td rowspan="7">
                                <img id="img1" src="http://placehold.it/180" alt="your image" style="display: none" /></td>
                        </tr>
                        <tr>
                            <td style="float: right">
                                <label>Product Description:</label></td>
                            <td>
                                <div class="ui left icon input">
                                    <input type="text" name="pdes" placeholder="Description" required="*" maxlength="50">
                                    <i class="user outline icon"></i>
                                </div></td>
                        </tr>
                        <tr>
                            <td style="float: right">
                                <label>Product Price:</label></td>
                            <td>
                                <div class="ui left icon input">
                                    <input type="text" name="pr" placeholder="Price" required="*" maxlength="50">
                                    <i class="user outline icon"></i>
                                </div></td>
                        </tr>
                        <tr>
                            <td style="float: right">
                                <label>Quantity:</label></td>
                            <td>
                                <div class="ui left icon input">
                                    <input type="text" name="qty" placeholder="Quantity" required="*" maxlength="50">
                                    <i class="user outline icon"></i>
                                </div></td>
                        </tr>
                        <tr>
                            <td style="float: right">
                                <label>Category:</label></td>
                            <td>
                                <select name="ca">
                                    <option value="Seeds">Seeds</option>
                                    <option value="Fertilizers">Fertilizers</option>
                                    <option value="Pipes">Pipes</option>
                                    <option value="Machionaries">Machionaries</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td style="float: right">
                                <label>Upload Image:</label></td>
                            <td><div class="ui left icon input">
                                    <input type='file' onchange="ValidateSingleInput(this);" name="fname"/>
                                    <i class="user outline icon"></i>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <!--button --></td>
                            <td>
                                <button class="ui red animated  button" style="height:40px; width:150px;" type="submit" name="Registartion">
                                <span class="visible content">Add Product</span>
                                <span class="hidden content"><i class="hand point right outline icon"></i></span>
                            </button>
                            </td>
<!--                            <td>  <button class="vie" style="height:40px; width:150px;"><a href="viewp.jsp">View Product</a></button>
                             
                            </td>
                            <td><button class="vie" style="height:40px; width:150px;"><a href="AdminLogin.jsp">Back</a></button></td>
                    </tr>
                    -->
                        
                           
                      
                        
                    
                </table>
                <input type="text" id="txtname" name="count" style="display: none" />

            </form>
            
        </body>
    </html>


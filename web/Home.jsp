<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home Page</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins" , sans-serif;
            }

            body {
                background-color: hsl(147,100%,55%);
                padding: 20px;
                font-family: Arial;
                position: relative;
                min-height: 100vh;
                width: 100%;
                height: 1000px;
                /*overflow: hidden;*/
            }

            /* Center website */
            .main {
                max-width: 1300px;
                margin: auto;
            }

            h1 {
                font-size: 50px;
                word-break: break-all;
            }

            .row {
                margin: 10px -16px;
            }

            /* Add padding BETWEEN each column */
            .row,
            .row > .column1 {
                padding: 8px;
            }

            /* Create three equal columns that floats next to each other */
            .column1 {
                float: left;
                width: 25%;
                display: none; /* Hide all elements by default */
            }

            /* Clear floats after rows */ 
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Content */
            .content1 {
                background-color: white;
                padding: 10px;
            }

            /* The "show" class is added to the filtered elements */
            .show {
                display: block;
            }

            /* Style the buttons */
            .btn1 {
                border: none;
                outline: none;
                padding: 12px 16px;
                background-color: #f1f1f1;
                cursor: pointer;
            }

            .btn1:hover {
                background-color: #ddd;
            }

            .btn1.active1 {
                background-color: #666;
                color: white;
            }
            .column1:hover
            {
                box-shadow:0 8px 16px 0 rgba (0,0,0,.1);
            }
            ::selection{
                color: #fff;
                background: #11101d;
            }
            .slideshow-container {
                  max-width: 1000px;
                  max-height: 200%;
                  position: relative;
                  margin: auto;
                }
            
                    /* Caption text */
                    .text {
                      color: #f2f2f2;
                      font-size: 15px;
                      padding: 8px 12px;
                      position: absolute;
                      bottom: 8px;
                      width: 100%;
                      text-align: center;
                    }

                    .dot {
                      height: 10px;
                      width: 10px;
                      margin: 0 2px;
                      background-color: #bbb;
                      border-radius: 50%;
                      display: inline-block;
                      transition: background-color 0.6s ease;
                    }

                    .active {
                      background-color: #717171;
                    }

                    /* Fading animation */
                    .fade {
                      -webkit-animation-name: fade;
                      -webkit-animation-duration: 1.5s;
                      animation-name: fade;
                      animation-duration: 1.5s;
                    }

                    @-webkit-keyframes fade {
                      from {opacity: .4} 
                      to {opacity: 1}
                    }

                    @keyframes fade {
                      from {opacity: .4} 
                      to {opacity: 1}
                    }

                    /* On smaller screens, decrease text size */
                    @media only screen and (max-width: 300px) {
                      .text {font-size: 11px}
                    }
                    
             nav{
                background-color: black;
                width: 100%;
                left: 0;
                height: 63px;
                z-index: 3;
                padding: 6px 5px;
                position: fixed;
                top: 0;
            }
            .company{
                color: white;
                font-size: 5px;
                margin: 0 50px;
                line-height: 80%;
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
         <div class="slideshow-container">

            <div class="mySlides fade">
                <img src="img/UPJ.jpg" style="width:100%; height:400px"> 
                <div class="text1"><b>Our Company Logo...</b></div>

            </div>

            <div class="mySlides fade">
               <img src="img/slide5.jpg" style="width:100%; height:400px">
              </div>

            <div class="mySlides fade">
                <img src="img/slide.jpeg" style="width:100%; height:400px">
            </div>

                <div class="mySlides fade">
              <img src="img/slide1.jpeg" style="width:100%; height:400px">
             </div>

                         <div class="mySlides fade">
              <img src="img/slide2.jpeg" style="width:100%; height:400px">
             </div>

                         <div class="mySlides fade">
              <img src="img/slide3.jpg" style="width:100%; height:400px">
             </div>

                         <div class="mySlides fade">
              <img src="img/slide4.png" style="width:100%; height:400px">
             </div>

                         <div class="mySlides fade">
              <img src="img/slide6.png" style="width:100%; height:400px">
             </div>

            </div>
            <br>
            <div style="text-align:center">
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span> 
              <span class="dot"></span>  
            </div>


        <!-- MAIN (Center website) -->
        <div class="main">
           <hr>
            <h2>E-Farm Products...</h2><br>

            <div id="myBtnContainer">
                <button class="btn1 active1" onclick="filterSelection('all')"> Show all</button>
                <button class="btn1" onclick="filterSelection('seeds')"> Seeds</button>
                <button class="btn1" onclick="filterSelection('feritilizers')"> Feritilizers</button>
                <button class="btn1" onclick="filterSelection('pipes')"> Pipes</button>
                <button class="btn1" onclick="filterSelection('machin')"> Machionaries</button>
            </div>

            <!-- Portfolio Gallery Grid -->
            <div class="row">
                <!--seeds-->
                <div class="column1 seeds">
                    <div class="content1">
                        <img src="img/s1.jpg" alt="Mountains" style="width:100%; height:200px">
                        <h4>Seeds</h4>
                        <p>$100</p>
                        <a class="add-cart cart1" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 seeds">
                    <div class="content1">
                        <img src="img/s2.jpg" alt="Lights" style="width:100%; height:200px">
                        <h4>Seeds</h4>
                        <p>$200</p>
                        <a class="add-cart cart2" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 seeds">
                    <div class="content1">
                        <img src="img/s3.jpg" alt="Nature" style="width:100%; height:200px">
                        <h4>Seeds</h4>
                        <p>$250</p>
                        <a class="add-cart cart3" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 seeds">
                    <div class="content1">
                        <img src="img/s4.webp" alt="Nature" style="width:100%; height:200px">
                        <h4>Seeds</h4>
                        <p>$150</p>
                        <a class="add-cart cart4" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 seeds">
                    <div class="content1">
                        <img src="img/s5.jpg" alt="Nature" style="width:100%; height:200px">
                        <h4>Seeds</h4>
                        <p>$180</p>
                        <a class="add-cart cart5" href="#">Add Cart</a>
                    </div>
                </div>

                <!--fertilizers-->
                <div class="column1 feritilizers">
                    <div class="content1">
                        <img src="img/f1.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Feritilizers</h4>
                        <p>$230</p>
                        <a class="add-cart cart6" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 feritilizers">
                    <div class="content1">
                        <img src="img/f2.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Feritilizers</h4>
                        <p>$300</p>
                        <a class="add-cart cart7" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 feritilizers">
                    <div class="content1">
                        <img src="img/f3.webp" alt="Car" style="width:100%; height:200px">
                        <h4>Feritilizers</h4>
                        <p>$350</p>
                        <a class="add-cart cart8" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 feritilizers">
                    <div class="content1">
                        <img src="img/f4.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Feritilizers</h4>
                        <p>$400</p>
                        <a class="add-cart cart9" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 feritilizers">
                    <div class="content1">
                        <img src="img/f5.jfif" alt="Car" style="width:100%; height:200px">
                        <h4>Feritilizers</h4>
                        <p>$450</p>
                        <a class="add-cart cart10" href="#">Add Cart</a>
                    </div>
                </div>

                <!--pipes-->
                <div class="column1 pipes">
                    <div class="content1">
                        <img src="img/p1.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Pipes</h4>
                        <p>$1000</p>
                        <a class="add-cart cart11" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 pipes">
                    <div class="content1">
                        <img src="img/p2.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Pipes</h4>
                        <p>$2000</p>
                        <a class="add-cart cart12" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 pipes">
                    <div class="content1">
                        <img src="img/p3.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Pipes</h4>
                        <p>$900</p>
                        <a class="add-cart cart13" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 pipes">
                    <div class="content1">
                        <img src="img/p4.webp" alt="Car" style="width:100%; height:200px">
                        <h4>Pipes</h4>
                        <p>$3000</p>
                        <a class="add-cart cart14" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 pipes">
                    <div class="content1">
                        <img src="img/p5.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Pipes</h4>
                        <p>$5000</p>
                        <a class="add-cart cart15" href="#">Add Cart</a>
                    </div>
                </div>

                <!--machionaries-->
                <div class="column1 machin">
                    <div class="content1">
                        <img src="img/m1.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Machin</h4>
                        <p>$6000</p>
                        <a class="add-cart cart16" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 machin">
                    <div class="content1">
                        <img src="img/m2.jfif" alt="Car" style="width:100%; height:200px">
                        <h4>Machin</h4>
                        <p>$10,000</p>
                        <a class="add-cart cart17" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 machin">
                    <div class="content1">
                        <img src="img/m3.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Machin</h4>
                        <p>$15,000</p>
                        <a class="add-cart cart18" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 machin">
                    <div class="content1">
                        <img src="img/m4.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Machin</h4>
                        <p>$8000</p>
                        <a class="add-cart cart19" href="#">Add Cart</a>
                    </div>
                </div>

                <div class="column1 machin">
                    <div class="content1">
                        <img src="img/m5.jpg" alt="Car" style="width:100%; height:200px">
                        <h4>Machin</h4>
                        <p>$20,000</p>
                        <a class="add-cart cart20" href="#">Add Cart</a>
                    </div>
                </div>

                <!-- END GRID -->
            </div>

            <!-- END MAIN -->
        </div>
        <!--<body bgcolor="whitesmoke">-->
        <form action="HomePage.jsp">

            <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="fa fa-bars"></i>
            </label>
            <label><b>SB</b></label>
            <ul>
                <li><a href="#">Your Orders</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Customer Service</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="AdminLogin.jsp">Admin Login</a></li>
            </ul>
        </nav>
        </form>

        <script>
            filterSelection("all")
            function filterSelection(c) {
                var x, i;
                x = document.getElementsByClassName("column1");
                if (c == "all")
                    c = "";
                for (i = 0; i < x.length; i++) {
                    w3RemoveClass(x[i], "show");
                    if (x[i].className.indexOf(c) > -1)
                        w3AddClass(x[i], "show");
                }
            }

            function w3AddClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    if (arr1.indexOf(arr2[i]) == -1) {
                        element.className += " " + arr2[i];
                    }
                }
            }

            function w3RemoveClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    while (arr1.indexOf(arr2[i]) > -1) {
                        arr1.splice(arr1.indexOf(arr2[i]), 1);
                    }
                }
                element.className = arr1.join(" ");
            }


        // Add active class to the current button (highlight it)
            var btnContainer = document.getElementById("myBtnContainer");
            var btns = btnContainer.getElementsByClassName("btn1");
            for (var i = 0; i < btns.length; i++) {
                btns[i].addEventListener("click", function () {
                    var current = document.getElementsByClassName("active1");
                    current[0].className = current[0].className.replace(" active1", "");
                    this.className += " active1";
                });
            }
        </script>
       
        <script>
                var slideIndex = 0;
                showSlides();

                function showSlides() {
                  var i;
                  var slides = document.getElementsByClassName("mySlides");
                  var dots = document.getElementsByClassName("dot");
                  for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";  
                  }
                  slideIndex++;
                  if (slideIndex > slides.length) {slideIndex = 1}    
                  for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                  }
                  slides[slideIndex-1].style.display = "block";  
                  dots[slideIndex-1].className += " active";
                  setTimeout(showSlides, 2000); // Change image every 2 seconds
                }
        </script>

    </body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="tstyle.css">

</head>
<body>

<!-- header section starts  -->

<header>

    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>T</span>ake A Trip</a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#p">packages</a>
        <a href="#services">services</a>
        <a href="#gallery">gallery</a>
        <a href="#contact">contact</a>
        <% 
    String email = (String)session.getAttribute("email");
    String name = (String)session.getAttribute("name");
    if(email != null){ %>

    <a href="#" class="action_btn"><%= name%></a>
     <a href="userlogout.jsp" class="action_btn">logout</a>   
<%
    }
    else{%>
        <a href="userlogin.html" class="action_btn">Login</a>
        <a href="AdminLogin.html" class="action_btn">Admin Login</a>

        <%
    }
  %>
    </nav>


</header>

<!-- header section ends -->


<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <h3>adventure is worthwhile</h3>
        <p>dicover new places with us, adventure awaits for you</p>
        <a href="#packages" class="btn">Explore Now</a>
    </div>


    <div class="video-container">
        
        <video src="5.mp4" id="video-slider" loop autoplay muted></video>
   </div>

</section>

<!-- home section ends -->



<!-- packages section starts  -->

<section class="packages" id="p">

    <h1 class="heading">
        <span>p</span>
        <span>a</span>
        <span>c</span>
        <span>k</span>
        <span>a</span>
        <span>g</span>
        <span>e</span>
        <span>s</span>
    </h1>
    <h1 class="heading1">
        <span>T</span>
        <span>E</span>
        <span>M</span>
        <span>P</span>
        <span>L</span>
        <span>E</span>
        <span>S</span>
    </h1>
    <div class="box-container">

        <div class="box">
            <img src="a.jpg" alt="">
            <div class="content">
                <h3 id="name1">Kedarnath</h3>
                <p>Kedarnath Temple is located in the town of Kedarnath in Rudraprayag District, Uttarakhand.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price1" value="5000" class="price"> Rs.5000 <span>7000</span> </div>
                <!-- <a href="Payment.html" class="btn">book now</a>-->
                <button onclick="loginChecker(1)" class="btn" >Book Now</button>
            </div>
        </div>

        <div class="box">
            <img src="t1.jpeg" alt="">
            <div class="content">
                <h3 id="name2"> Tirumala </h3>
                <p>Tirumala Tirupati Devasthanam,Chithoor,Andhra Pradesh,India</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price2" value="5000" class="price"> Rs.5000 <span>7000</span> </div>
                <button onclick="loginChecker(2)" class="btn" >Book Now</button>
            </div>
        </div>

        <div class="box">
            <img src="t2.jpg" alt="">
            <div class="content">
                <h3 id="name3"> </i> Shirdi</h3>
                <p>Shirdi,  Ahmednagar district, Maharashtra,India</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price3" value="4500" class="price"> Rs.4500<span>6000</span> </div>
                <button onclick="loginChecker(3)" class="btn" >Book Now</button>
            </div>
        </div>

        <div class="box">
            <img src="t4.jpg" alt="">
            <div class="content">
                <h3 id="name4"></i> Rameswaram</h3>
                <p>Rameswaram Temple | Ramanathapuram District | Tamil Nadu,India</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price4" value="5000" class="price">Rs.5000<span>6000</span> </div>
                <button onclick="loginChecker(4)" class="btn" >Book Now</button>
            </div>
        </div>

        <div class="box">
            <img src="t3.jpg" alt="">
            <div class="content">
                <h3 id="name5"> Golden Temple</h3>
                <p>The Golden Temple is a gurdwara located in the city of Amritsar, Punjab, India.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price5" value="5000" class="price">Rs.5000 <span>6500</span> </div>
                <button onclick="loginChecker(5)" class="btn" >Book Now</button>
            </div>
        </div>

        <div class="box">
            <img src="t5.jpg" alt="">
            <div class="content">
                <h3 id="name6"> Vaishnodevi</h3>
                <p>It is located in Katra, Reasi on the slopes of Trikuta Hills within the union territory of Jammu & Kashmir in India. </p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price6" value="7000" class="price"> Rs.7000<span>9000</span> </div>
                <button onclick="loginChecker(6)" class="btn" >Book Now</button>
            </div>
        </div>

    </div>

    <h1 class="heading1">
        <span>B</span>
        <span>E</span>
        <span>A </span>
        <span>C</span>
        <span>H</span>
        <span>E</span>
        <span>S</span>
    </h1>
    <div class="box-container">
    
        <div class="box">
            <img src="b1.jpg" alt="">
            <div class="content">
                <h3 id="name7"> Varkala </h3>
                <p>Varkala Beach,Thiruvananthapuram city,south Kerala,India</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price7" value="4000" class="price"> Rs.4000 <span>5000</span> </div>
                <button onclick="loginChecker(7)" class="btn" >Book Now</button>
            </div>
        </div>
    
        <div class="box">
            <img src="b3.jpg" alt="">
            <div class="content">
                <h3 id="name8">Gokarna </h3>
                <p>Gokarna,Uttara Kannada district of Karnataka, India,</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price8" value="4000" class="price"> Rs.4000 <span>5000</span> </div>
                <button onclick="loginChecker(8)" class="btn" >Book Now</button>
            </div>
        </div>
    
        <div class="box">
            <img src="b2.jpg" alt="">
            <div class="content">
                <h3 id="name9">Kovalam</h3>
                <p>Kovalam is a small coastal town, south of Thiruvananthapuram,Kerala, Indian</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <div id="price9" value="3500" class="price"> Rs.3500<span>4000</span> </div>
                <button onclick="loginChecker(9)" class="btn" >Book Now</button>
            </div>
        </div>
        </div>

        <h1 class="heading1">
            <span>I</span>
            <span>C</span>
            <span>O </span>
            <span>N</span>
            <span>I</span>
            <span>C</span>
        </h1>
        <div class="box-container">
        
            <div class="box">
                <img src="i1.jpg" alt="">
                <div class="content">
                    <h3 id="name10"> Taj Mahal </h3>
                    <p>The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India.</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div id="price10" value="3000" class="price"> Rs.3000 <span>000</span> </div>
                    <button onclick="loginChecker(10)" class="btn" >Book Now</button>
                </div>
            </div>
        
            <div class="box">
                <img src="i2.jpg" alt="">
                <div class="content">
                    <h3 id="name11">Red Fort </h3>
                    <p>The Red Fort or Lal Qila ,Old Delhi, India</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                <div id="price11" value="5000" class="price"> Rs.5000 <span>7000</span> </div>
                <button onclick="loginChecker(11)" class="btn" >Book Now</button>
                </div>
            </div>
        
            <div class="box">
                <img src="i3.jpg" alt="">
                <div class="content">
                    <h3 id="name12">India Gate</h3>
                    <p>The India Gate is a war memorial located near the Kartavya path, New Delhi,India</p>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>
                    <div id="price12" value="6500" class="price"> Rs.6500<span>7000</span> </div>
                    <button onclick="loginChecker(12)" class="btn" >Book Now</button>
                </div>
            </div>
            </div>
            <h1 class="heading1">
                <span>N</span>
                <span>A</span>
                <span>T</span>
                <span>U</span>
                <span>R</span>
                <span>E</span>
            </h1>
            <div class="box-container">
            
                <div class="box">
                    <img src="n1.jpg" alt="">
                    <div class="content">
                        <h3 id="name13">Ooty </h3>
                        <p>Ooty officially known as Udhagamandalam is a town and a municipality in the Nilgiris district of the South Indian state of Tamil Nadu,India</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                        <div id="price13" value="3000"  class="price"> Rs.3000 <span>5000</span> </div>
                        <button onclick="loginChecker(13)" class="btn" >Book Now</button>
                    </div>
                </div>
            
                <div class="box">
                    <img src="n2.jpg" alt="">
                    <div class="content">
                        <h3 id="name14"></i> Araku Valley</h3>
                        <p>Araku Valley is a hill station in Alluri Sitharama Raju district in the Indian state of Andhra Pradesh,India</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                    <div id="price14" value="5000" class="price"> Rs.5000 <span>7000</span> </div>
                    <button onclick="loginChecker(14)" class="btn" >Book Now</button>
                    </div>
                </div>
            
                <div class="box">
                    <img src="n3.jpg" alt="">
                    <div class="content">
                        <h3 id="name15"></i>Kulu Manali </h3>
                        <p>Kulu manali,Himachal Pradesh India</p>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>
                        <div id="price15" value="6500" class="price"> Rs.6500<span>7000</span> </div>
                        <button onclick="loginChecker(15)" class="btn" >Book Now</button>
                    </div>
                </div>
                </div>
                <h1 class="heading1">
                    <span>A</span>
                    <span>D</span>
                    <span>V</span>
                    <span>E</span>
                    <span>N</span>
                    <span>T</span>
                    <span>U</span>
                    <span>R</span>
                    <span>E</span>
                </h1>
                <div class="box-container">
                
                    <div class="box">
                        <img src="a1.jpg" alt="">
                        <div class="content">
                            <h3 id="name16"></i> Rafting,Rishikesh </h3>
                            <p>Rishikesh Ganga River Rafting,Dehradun, Uttarakhand, India</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <div id="price16" value="3000" class="price"> Rs.3000 <span>5000</span> </div>
                            <button onclick="loginChecker(16)" class="btn" >Book Now</button>
                        </div>
                    </div>
                
                    <div class="box">
                        <img src="a2.jpg" alt="">
                        <div class="content">
                            <h3 id="name17">Jim Corbett National Park</h3>
                            <p>The Jim Corbett National Park is a part of the largest Corbett Tiger Reserve; the Project Tiger lies in the Nainital district of Uttarakhand,India</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        <div id="price17" value="5000" class="price"> Rs.5000 <span>7000</span> </div>
                        <button onclick="loginChecker(17)" class="btn" >Book Now</button>
                        </div>
                    </div>
                
                    <div class="box">
                        <img src="a3.jpg" alt="">
                        <div class="content">
                            <h3 id="name18"> Scuba Diving,Andaman </h3>
                            <p>Anadaman And Nicobar Islands,India</p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <div id="price18" value="6500" class="price"> Rs.6500<span>7000</span> </div>
                            <button onclick="loginChecker(18)" class="btn" >Book Now</button>
                        </div>
                    </div>
                    </div>
        
        
</section>

<!-- packages section ends -->

<!-- services section starts  -->

<section class="services" id="services">

    <h1 class="heading">
        <span>s</span>
        <span>e</span>
        <span>r</span>
        <span>v</span>
        <span>i</span>
        <span>c</span>
        <span>e</span>
        <span>s</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <i class="fas fa-hotel"></i>
            <h3>affordable hotels</h3>
            <p>We Provide Best Hotels at Affordable price for all.with all comforts.</p>
        </div>
        <div class="box">
            <i class="fas fa-utensils"></i>
            <h3>food and drinks</h3>
            <p>We Own Some hotels where ever we provide our services so no worry about food.We provide all types of food at high quality.</p>
        </div>
        <div class="box">
            <i class="fas fa-bullhorn"></i>
            <h3>safty guide</h3>
            <p>Your Safety is our Responsibility. A Guide will be with you all the time ensuring your safety and privacy.</p>
        </div>
        <div class="box">
            <i class="fas fa-globe-asia"></i>
            <h3>around the world</h3>
            <p>We show you the world you have ever seen trust us you wont regret.</p>
        </div>
        <div class="box">
            <i class="fas fa-plane"></i>
            <h3>fastest travel</h3>
            <p>We provide every means of travel the fastest one.</p>
        </div>
        <div class="box">
            <i class="fas fa-hiking"></i>
            <h3>adventures</h3>
            <p>Let's have some fun do some spine chilling adventures make memories.</p>
        </div>

    </div>

</section>

<!-- services section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

    <h1 class="heading">
        <span>g</span>
        <span>a</span>
        <span>l</span>
        <span>l</span>
        <span>e</span>
        <span>r</span>
        <span>y</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="g1.jpg" alt="">
        </div>
        <div class="box">
            <img src="g2.jpg" alt="">
        </div>
        <div class="box">
            <img src="g3.jpg" alt="">
        </div>
        <div class="box">
            <img src="g4.jpg" alt="">
        </div>
        <div class="box">
            <img src="g5.jpg" alt="">
        </div>
        <div class="box">
            <img src="g6.jpg" alt="">
        </div>
        <div class="box">
            <img src="g7.jpg" alt="">
        </div>
        <div class="box">
            <img src="g8.jpg" alt="">
        </div>
        <div class="box">
            <img src="g9.jpg" alt="">
        </div>
        
    </div>

</section>

<!-- gallery section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">
    
    <h1 class="heading">
        <span>c</span>
        <span>o</span>
        <span>n</span>
        <span>t</span>
        <span>a</span>
        <span>c</span>
        <span>t</span>
    </h1>

    <div class="row">

        <form action="contactus.jsp" method="post">
            <div class="inputBox">
                <input type="text" placeholder="Name" name="name">
                <input type="email" readonly <%
                                            if (email!=null) {%>
                                                value=<%=email %>
                                                <%
                                            }
                                            else { %>
                                                value = " "
                                                <%
                                            }
                                             %> placeholder="Email">
            </div>

            <div class="inputBox">
                <input type="text" placeholder="Subject" name="subject">
            </div>
            <textarea placeholder="Message" name="message" id="" cols="30" rows="10"></textarea>
            <input type="submit" class="btn" value="send message">
        </form>

    </div>
    
</section>

<!-- contact section ends -->



<!-- footer section  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>about us</h3>
            <p>Take A Trip,<br>YSR,Complex<br>NTR District<br>Vijayawada<br>Andhra Pradesh<br>India.</p>
        </div>
        <div class="box">
            <h3>branch locations</h3>
            <a href="#">India</a>
            <a href="#">USA</a>
        </div>
        <div class="box">
            <h3>quick links</h3>
            <a href="#">home</a>
            <a href="#">packages</a>
            <a href="#">services</a>
            <a href="#">gallery</a>
            <a href="#">about</a>
            <a href="#">contact</a>
        </div>
        <div class="box">
            <h3>follow us</h3>
            <a href="#">facebook</a>
            <a href="#">instagram</a>
            <a href="#">twitter</a>
            <a href="#">linkedin</a>
        </div>

    </div>

    <h1 class="credit"> created by <span> Mr. B.Surendra Babu</span> | all rights reserved! </h1>

</section>

</body>
</html>

<script>
        function loginChecker(i){
            <%
                String email1 = (String)session.getAttribute("email");
                if(email1 != null){ %>
                    var place = document.getElementById("name"+i).innerHTML;
                    var price = document.getElementById("price"+i).getAttribute("value");
                    window.location.href = "http://localhost:8081/TakeaTrip/Money.jsp?name="+place+"&price="+price;
                <%
                }
                else{ %>
                    alert("Please login First");
                    window.location.href = "http://localhost:8081/TakeaTrip/userlogin.html";
                <%
                }
            %>
        }
</script>
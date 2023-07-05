
<%@ page import="java.io.*" %>

<%
    String Email = request.getParameter("uname");
    String Password = request.getParameter("pwd");

    if(Email.equals("surendra") && Password.equals("surendra")){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
    @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');

:root{
  --orange:#ffa500;
}

*{
  font-family: 'Nunito', sans-serif;
  margin:0; padding:0;
  box-sizing: border-box;
  text-transform: capitalize;
  outline: none; border:none;
  text-decoration: none;
  transition: all .2s linear;
}
.action_btn{
    background-color: orange;
    color: #fff;
    padding: 0.5rem 1rem;
    border: none;
    outline: none;
    border-radius: 20px;
    font-size: 1.2rem;
    font-weight: bold;
    cursor: pointer;
    transition: scale 0.2 ease;
 }
 
 .action_btn:hover{
    scale: 1.05;
    color: #fff;
 }
 .action_btn :active{
    scale: 0.95;
 }
 
*::selection{
  background:var(--orange);
  color:#fff;
}

html{
  font-size: 62.5%;
  overflow-x: hidden;
  scroll-padding-top: 6rem;
  scroll-behavior: smooth;
}

section{
  padding:2rem 9%;
}

.heading{
  text-align: center;
  padding:2.5rem 0
}

.heading span{
  font-size: 3.5rem;
  background:rgba(255, 165, 0,.2);
  color:var(--orange);
  border-radius: .5rem;
  padding:.2rem 1rem;
}

.heading span.space{
  background:none;
}
.heading1{
    text-align: center;
    padding:2.5rem 0
  }
  
  .heading1 span{
    font-size: 3.5rem;
    background:rgba(6, 237, 83, 0.66);
    color:var(--orange);
    border-radius: .5rem;
    padding:.2rem 1rem;
  }
  
  .heading1 span.space{
    background:none;
  }

.btn{
  display: inline-block;
  margin-top: 1rem;
  background:var(--orange);
  color:#fff;
  padding:.8rem 3rem;
  border:.2rem solid var(--orange);
  cursor: pointer;
  font-size: 1.7rem;
}

.btn:hover{
  background:rgba(255, 165, 0,.2);
  color:var(--orange);
}

header{
  position: fixed;
  top:0; left: 0; right:0;
  background:#333;
  z-index: 1000;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding:2rem 9%;
}

header .logo{
  font-size: 2.5rem;
  font-weight: bolder;
  color:#fff;
  text-transform: uppercase;
}

header .logo span{
  color:var(--orange);
}

header .navbar a{
  color:#fff;
  font-size: 2rem;
  margin:0 .8rem;
}

header .navbar a:hover{
  color:var(--orange);
}


#menu-bar{
  color:#fff;
  border:.1rem solid #fff;
  border-radius: .5rem;
  font-size: 3rem;
  padding:.5rem 1.2rem;
  cursor: pointer;
  display: none;
}
.details-box-1
            {
                background-color: white;
                color: orange;
                top: 35%;
                left: 12%;
                height: 280px;
                width: 300px;
                border-radius: 10px;
                cursor: pointer;
                box-shadow: 0 0 60px rgb(244, 168, 27);
                position: absolute;
            }
            .details-box-2  
            {
                background-color: white;
                top: 35%;
                left: 40%;
                height: 280px;
                width: 300px;
                border-radius: 10px;
                cursor: pointer;
                box-shadow: 0 0 60px rgb(244, 168, 27);
                position: absolute;
            }
            .details-box-3 
            {
                background-color: white;
                top: 35%;
                left: 68%;
                height: 280px;
                width: 300px;
                border-radius: 10px;
                cursor: pointer;
                box-shadow: 0 0 60px rgb(244, 168, 27);
                position: absolute;
            }
            .middle
            {
                position: absolute;
                padding: 5px;
                left: 12%;
                top: 4%;
                height: 250px;
                width: 210px;
                /* background-color: yellow; */
                color: orange;
            }
            .middle-1
            {
                position: absolute;
                padding: 5px;
                left: 12%;
                top: 4%;
                height: 250px;
                width: 210px;
                /* background-color: yellow; */
                color: orange;
            }
            .details-box-1:hover{
                transform: scale(1.1);
                box-shadow: 0 0 100px orange;
            }
            .details-box-2:hover{
                transform: scale(1.1);
                box-shadow: 0 0 100px orange;
            }
            .details-box-3:hover{
                transform: scale(1.1);
                box-shadow: 0 0 100px orange;
            }
</style>
<script>
    function openPage(pageUrl){
        window.open(pageUrl,"_self");
    }
</script>
</head>
<body>
    <header>

        <div id="menu-bar" class="fas fa-bars"></div>
    
        <a href="#" class="logo"><span>T</span>ake A Trip</a>
    
        <nav class="navbar">
            <a href="adminlogout.jsp" class="action_btn">Logout</a>
        </nav>
    
    </header>
    <section class="contact" id="contact">
    <br>
    <br>
    <br>
    <br>
        <h1 class="heading">
            <span>W</span>
            <span>e</span>
            <span>l</span>
            <span>c</span>
            <span>o</span>
            <span>m</span>
            <span>e</span>
            &ensp;&ensp;&ensp;
            <span>A</span>
            <span>d</span>
            <span>m</span>
            <span>i</span>
            <span>n</span>
        </h1>
    </section>
    <div class="details-box-1" id="d1" onclick="openPage('adminusers.jsp')">
        <div class="middle">
         <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX4Fx48oWJFcvyBU_0lfu0rdzLtNjpci5phQ&usqp=CAU" height="200" width="200" alt="Sorry">
            <h1 style="font-size: 30px;">&ensp;&ensp;&ensp;&nbsp;USERS</h1>
        </div>
    </div>
    <div class="details-box-2" id="d3" onclick="openPage('adminbookings.jsp')">
     <div class="middle-1">
         <img src="https://cdn-icons-png.flaticon.com/512/5776/5776740.png" height="200" width="200" alt="">
         <h1 style="font-size: 30px;">&ensp;&ensp;&nbsp;BOOKINGS</h1>
     </div>
    </div>
    <div class="details-box-3" id="d2" onclick="openPage('adminmsgs.jsp')">
     <div class="middle-1">
         <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_HgHeC7LzXwYN7F7Mpnrk3QMgAcgw5fAv0D0VabtFLKAtMCBMM9T40a1LoqUkLfiXLPs&usqp=CAU" height="200" width="210" alt="">
         <h1 style="font-size: 29px;">&nbsp;CONTACT US</h1>
     </div>
    </div>
</body>
</html>

<%        
    }
    else{
%>
        <script>alert("Invalid Username or Password. Please try again")</script>
        <jsp:include page="AdminLogin.html"/>
<%

}
%>
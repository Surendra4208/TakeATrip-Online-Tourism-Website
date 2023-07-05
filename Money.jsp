<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

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
                  color:#fff;
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
              .container span{
                font-size: 18px;
              }

.container{
  display: flex;
  justify-content: center;
  align-items: center;
  padding:45px;
  min-height: 100vh;
}

.container form{
  padding:20px;
  width:700px;
  background: #fff;
  box-shadow: 2px 3px 5px 10px orange;
}

.container form .row{
  display: flex;
  flex-wrap: wrap;
  gap:15px;
}

.container form .row .col{
  flex:1 1 250px;
}

.container form .row .col .title{
  font-size: 20px;
  color:#333;
  padding-bottom: 5px;
  text-transform: uppercase;
}

.container form .row .col .inputBox{
  margin:15px 0;
}

.container form .row .col .inputBox span{
  margin-bottom: 10px;
  display: block;
}

.container form .row .col .inputBox input{
  width: 100%;
  border:1px solid #ccc;
  padding:10px 15px;
  font-size: 15px;
  text-transform: none;
}

.container form .row .col .inputBox input:focus{
  border:1px solid #000;
}

.container form .row .col .flex{
  display: flex;
  gap:15px;
}

.container form .row .col .flex .inputBox{
  margin-top: 5px;
}

.container form .row .col .inputBox img{
  height: 34px;
  margin-top: 5px;
  filter: drop-shadow(0 0 1px #000);
}

.container form .submit-btn{
  width: 100%;
  padding:12px;
  font-size: 17px;
  background: orange;
  color:#fff;
  margin-top: 5px;
  cursor: pointer;
}

.container form .submit-btn:hover{
  background: #27ae60;
}
    </style>
</head>
<%

    String place = request.getParameter("name");
    String price = request.getParameter("price");

    %>
<body>
    <header>

        <div id="menu-bar" class="fas fa-bars"></div>
    
        <a href="#" class="logo"><span style="color: orange;">T</span>ake A Trip</a>
    
        <nav class="navbar">
            <a href="tout.jsp">home</a>
        </nav>
    </header>
<div class="container">

    <form action="transac.jsp" method="post">

        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>full name :</span>
                    <input type="text" placeholder="Enter Full Name" name="name">
                </div>
                <div class="inputBox">
                    <span>email :</span>
                    <input type="email" placeholder="example@gmail.com" name="email">
                </div>
                <div class="inputBox">
                    <span>Phone :</span>
                    <input type="text" name="phone" >
                </div>
                <div class="flex">
                  <div class="inputBox">
                      <span  for="place">Place:</span>
                      <input type="text" value="<%=place%>" name="place" readonly>
                  </div>
                  <div class="inputBox">
                      <span>Booking Date:</span>
                      <input type="date" id="demo" name="booked_date">
                  </div>
              </div>
        
              <div class="flex">
                <div class="inputBox">
                    <span for="price">Amount :</span>
                    <input type="number" value="<%=price%>" name="amount" readonly>
                </div>
                <div class="inputBox">
                    <span>City :</span>
                    <input type="text" >
                </div>
            </div>
                    
            </div>

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>cards accepted :</span>
                    <img src="card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>name on card :</span>
                    <input type="text" placeholder="Enter Card Holder Name" required>
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="number" placeholder="1111-2222-3333-4444" required>
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" placeholder="january" required>
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="number" placeholder="2022" required>
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="***" maxlength="3" required>
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" value="Complete Payment" class="submit-btn">

    </form>

</div>    
    
</body>
</html>
<script>
  $(function(){
    var dtToday = new Date();

    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();

    var minDate= year + '-' + month + '-' + day;

    $('#demo').attr('min', minDate);
});
</script>
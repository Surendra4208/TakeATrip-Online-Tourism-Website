<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
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
              .b1{
                border: 2px solid black;
                margin-left:41%;
                padding-left: 30px;
                padding-right: 80px;
                padding-bottom: 235px;
                padding-top: 15px;
               }
               .i{
                position: relative;
                right:440px;
                top:80px;
                padding-top: 10px;
                padding-bottom: 10px;
                padding-left: 60px;
                padding-right: 50px;
                border: 3px solid black;
                text-align: left;
               }
               .container {
                padding: 20px;
                border-radius: 5vh;
                background-color: orange;
                font-size: 20px;
              }
              .hi{
                background-color: black;
              }
              .btn-outline-dark {
                background-color: transparent;
                color: #343a40;
                border-color: #343a40;
                transition: all 0.3s ease;
              }
              
              .btn-outline-dark:hover {
                background-color: #343a40;
                color: #f7f7f7;
              }
              
              .border {
                border-radius: 10px;
              }
              
              .form-control {
                border-radius: 20px;
              }
              
              .btn-primary {
                background-color: #343a40;
                border-color: #343a40;
                border-radius: 20px;
              }
              
              .btn-primary:hover {
                background-color: #f7f7f7;
                color: #343a40;
              }
              
              .text-success {
                color: #28a745;
              }
              
              p {
                font-size: 14px;
              }
              .end{
                color: white;
                text-align: center;
                padding-top: 30px;
                
            }
            
            h1 {
              text-align: center;
              margin-top: 50px;
            }
            form {
              max-width: 500px;
              margin: 0 auto;
              background-color: #fff;
              padding: 20px;
              border-radius: 10px;
              box-shadow: 0 0 10px rgba(0,0,0,0.2);
            }
            label {
              display: block;
              margin-bottom: 10px;
            }
            input[type="text"],
            input[type="email"],
            input[type="tel"],
            input[type="date"],
            input[type="number"],
            input[type="month"] {
              width: 100%;
              padding: 10px;
              margin-bottom: 20px;
              border-radius: 5px;
              border: none;
              box-shadow: 0 0 5px rgba(0,0,0,0.1);
            }
            select {
              width: 100%;
              padding: 10px;
              margin-bottom: 20px;
              border-radius: 5px;
              border: none;
              box-shadow: 0 0 5px rgba(0,0,0,0.1);
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
        <br><br><br><br><br><br><br><br><br><br><br><br>
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-md-6">
                <!-- <button type="button" class="btn btn-outline-dark btn-lg" style="color: #f7f7f7;">BOOK YOUR STAY</button> -->
               <div class="hi">
                <div class="border border-dark p-4 mt-4 text-center">
                  <h4 style="color: rgb(245, 250, 248);">BOOK YOUR VACATION</h4>
                </div></div><br>
                <form>
                  <div class="mt-4">
                    <div class="form-group">
                      <label for="name">Name</label>
                      <input type="text" class="form-control" id="name" placeholder="Enter name">
                    </div>
                    <div class="form-group">
                      <label for="email">Email</label>
                      <input type="email" class="form-control" id="email" placeholder="Enter email">
                    </div>

                    <div class="form-group">
                      <label for="phone">Phone Number</label>
                      <input type="tel" class="form-control" id="phone" placeholder="Enter phone number">
                    </div>

                    <div class="form-group">
                      <label for="place">Place</label>
                      <input type="text" class="form-control" value="<%=place%>" readonly>
                    </div>

                    <div class="form-group">
                      <label for="price">Price</label>
                      <input type="text" class="form-control" value="<%=price%>" readonly>
                    </div>

                   
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Booking Date</span>
                      </div>
                      <input type="date" class="form-control" id="demo">
                    
                    </div>
                    <div class="form-group">
                      <label for="city">City</label>
                      <input type="text" class="form-control" id="city" placeholder="Enter City">
                    </div>
                    <div class="form-group">
                      <label for="state">State</label>
                      <input type="text" class="form-control" id="state" placeholder="Enter State">
                    </div>
                    <!--<div class="form-group">
                      <label for="guests">Number of Persons</label>
                      <input type="number" class="form-control" id="guests" min="1" max="10">
                    </div>-->
                    <br>
                   <center> <a href="tout.jsp" class="btn" > Continue To Payment</a></center>
                  </div>
                </form>
              </div>
            </div>
            </div>
            <br><br>
            
    </body>
</html>
<!-- <script>
  var date=new Date();
  var tdate=date.getDate();
  var month=date.getMonth()+1;
  if(tdate<10){
    tdate='0'+ tdate;
  if(month<10){
    month='0'+ month;
  }
  var year=date.getUTCFullYear();
  var mindate=year + "-" + month + "-" + tdate;
  document.getElementById("demo").setAttribute('min',mindate)
  }
</script>  -->
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
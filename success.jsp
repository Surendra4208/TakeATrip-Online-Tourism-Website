<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    String tid = (String) session.getAttribute("tid");

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "surendra", "surendra");

        String sql = "SELECT * FROM Bookings WHERE transaction_id=?";

        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, tid);

        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            // Access the retrieved data using rs.getXXX() methods
            String bookId = rs.getString("book_id");
            String bookedDate = rs.getString("booked_date");
            String name = rs.getString("name");
            String email = rs.getString("email");
            String phone = rs.getString("phone");
            String place = rs.getString("place");
            String amount = rs.getString("amount");

            // Do something with the retrieved data
            // e.g., display it on the page, store it in variables, etc.
        }

        // Close the ResultSet, PreparedStatement, and Connection
        rs.close();
        pstmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
      <!DOCTYPE html>
         <html lang="en">
        <head>
          <meta charset="UTF-8" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <meta http-equiv="X-UA-Compatible" content="ie=edge" />
          <title>Payment Successful UI</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-gWz5rG4H7oVf/3eymKf+mfUm3PFkIwlC/9douSbpljDzgqh0vvl1DPhgIwHI5/JoVGQGfj5ktK8YvA17NpF4lw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="sha384-+RK/bjfd5GAiIwGJCiz7H9LbKPyJhzLwr4Iu7FpNngwQCL6FjNIBzOfoB7uKF7a" crossorigin="anonymous">
          <style>         
              @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');
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
            
      body .container-fluid success-container{
          font-family: "Helvetica Neue", sans-serif;
          font-size: 16px;
          line-height: 1.5;
          color: #333;
          min-height: 150vh;
        }
        
        .success-heading {
          margin-top: 1rem;
          font-size: 5rem;
          font-weight: bold;
          text-align: center;
        }
        
        .success-icon {
          display: block;
          margin: 2rem auto;
          color: #3cba54;
          animation: zoom-in 0.5s ease-in-out;
        }
        
        .success-message {
          margin: 1rem auto 3rem auto;
          font-size: 2.2rem;
          text-align: center;
        }
        
        table {
          width: 100%;
          max-width: 100%;
          margin-bottom: 1rem;
          background-color: transparent;
          font-size: 1rem;
          border-collapse: collapse;
          position: relative;
        }
        
        th,
        td {
          padding: 0.75rem;
          vertical-align: top;
          border-top: 1px solid #dee2e6;
        }
        
        thead th {
          vertical-align: bottom;
          border-bottom: 2px solid #dee2e6;
        }
        
        /* Button */
        .success-btn {
          display: block;
          margin: 2rem auto 1rem auto;
          border-radius: 50px;
          font-weight: bold;
          text-transform: uppercase;
          background-color: orange;
          border-color: orange;
          animation: slide-up 0.5s ease-in-out;
        }
        
        .success-btn:hover {
          background-color: #2c8a3e;
          border-color: #2c8a3e;
        }
        
        @keyframes slide-up {
          0% {
            transform: translateY(100%);
            opacity: 0;
          }
          100% {
            transform: translateY(0);
            opacity: 1;
          }
        }
        
        @keyframes zoom-in {
          0% {
            transform: scale(0);
            opacity: 0;
          }
          100% {
            transform: scale(1);
            opacity: 1;
          }
        }
      .success-details table {
          border-collapse: separate;
          border-spacing: 0;
          width: 100%;
          max-width: 100%;
          background-color: #fff;
          border: 1px solid #ddd;
          border-radius: 5px;
          overflow: hidden;
        }
        
        .success-details th {
          padding: 12px 15px;
          text-align: left;
          background-color: #f5f5f5;
          border-bottom: 1px solid #ddd;
          font-size: 14px;
          font-weight: normal;
        }
        
        .success-details td {
          padding: 12px 15px;
          text-align: left;
          border-bottom: 1px solid #ddd;
          font-size: 14px;
        }
        
        .success-details tr:last-child td {
          border-bottom: none;
        }
        
        .success-details tr:hover {
          background-color: #f5f5f5;
        }
        
        button{
          size: 10px;
        }
          </style>
      </head>
      <body>
          <header>
      
              <div id="menu-bar" class="fas fa-bars"></div>
          
              <a href="#" class="logo"><span style="color: orange;">T</span>ake A Trip</a>
          
              <nav class="navbar">
                  <a href="tout.jsp">Home</a>
              </nav>
          
          
          </header>
          <br>
          <br>
          <br>
          <br>
                  <div class="container-fluid success-container">
                      <div class="row">
                      <div class="col-md-8 offset-md-2">
                          <div class="success-box">
                              <i class="fas fa-check fa-5x success-icon"></i>
                              <h1 class="success-heading" style="color: #2c8a3e;">Payment Successful!</h1>
                              <p class="success-message">Thank you for your booking.</p>
                              <div class="row">
                                  <div class="col-md-6">
                                      <div class="success-details">
                                          <h4 style="font-style: normal;"><b>Transaction Details</b>:</h4>
                                          <table class="table" style="font-weight: bold;border-radius 10px;border-collapse: collapse;"">
                                              <tbody>
                                                  <tr>
                                                      <td>Payment Type:</td>
                                                      <td>Card</td>
                                                  </tr>
                                                  <tr>
                                                      <td>Transaction Id:</td>
                                                      <td><%=rs.getString(2)%></td>
                                                  </tr>
                                                  <tr>
                                                    <td>Booking Id:</td>
                                                    <td><%=rs.getString(1)%></td>
                                                </tr>
                                                <tr>
                                                  <td>Name:</td>
                                                  <td><%=rs.getString(4)%></td>
                                              </tr>
              
                                                  <tr>
                                                      <td>Mobile:</td>
                                                      <td><%=rs.getString(6)%></td>
                                                  </tr>
                                                  <tr>
                                                      <td>Email:</td>
                                                      <td><%=rs.getString(5)%></td>
                                                  </tr>
                                                  <tr>
                                                    <td>Place:</td>
                                                    <td><%=rs.getString(7)%></td>
                                                </tr>
                                                <tr>
                                                  <td>Booking Date</td>
                                                  <td><%=rs.getString(3)%></td>
                                              </tr>
                                                  <tr>
                                                      <td>Total Amount:</td>
                                                      <td><%=rs.getString(8)%></td>
                                                  </tr>
                                              </tbody>
                                          </table>
                                      </div>
                                  </div>
                              </div>
                          <button onclick="printTable()" style="border-radius: 5px;border: 2px solid black font-size=20px;">print</button>
                          <a href="tout.jsp" class="btn btn-primary success-btn">Return to Home</a>
                      </div>
                  </div>
              </div>
          </div>
          
          <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
          <script>
              function printTable() {
            window.print();
          }
          </script>
      </body>
      </html>
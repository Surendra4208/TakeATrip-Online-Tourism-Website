<html>
    <head>
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
table, th, td {
  border: 3px solid black;
  border-radius: 20px;
}

th,td {
  background-color: orange;
}
        </style>        
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
        
        <%
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
                Statement stmt = conn.createStatement();
                String sql = "select * from Bookings";
                ResultSet rs = stmt.executeQuery(sql);
        %>
        <header>

            <a href="#" class="logo"><span>T</span>ake A Trip</a>
        </header>
        <section class="contact" id="contact">
        <br>
        <br>
        <br>
        <br>
            <h1 class="heading">
                <span>B</span>
                <span>O</span>
                <span>O</span>
                <span>K</span>
                <span>I</span>
                <span>N</span>
                <span>G</span>
                <span>S</span>
            </h1>
            
        </section>
        <center>
        <table style="width: 90%;">
            <tr style="height: 45px;">
                <th>Book_Id</th>
                <th>Transaction_Id</th>
                <th>Booked_Date</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Place</th>
                <th>Amount</th>
            </tr>
        <%
            while(rs.next()){
        %>
            <tr style="height: 40px;">
                <th><%= rs.getString(1) %></th>
                <th><%= rs.getString(2) %></th>
                <th><%= rs.getString(3) %></th>
                <th><%= rs.getString(4) %></th>
                <th><%= rs.getString(5) %></th>
                <th><%= rs.getString(6) %></th>
                <th><%= rs.getString(7) %></th>
                <th><%= rs.getString(8) %></th>
            </tr> 
        <%       
            }
            }
            catch(Exception e){
                out.println(e);
            }
        %>
        </table>
        </center>
            </body>
            </html>
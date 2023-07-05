<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.Random" %>

<%
    String email = (String) session.getAttribute("email");
    Random random = new Random();
    StringBuilder id = new StringBuilder();

    while(id.length() <= 22){
        id.append(random.nextInt(10));
    }

    String Tid = "T"+id.toString();


    StringBuilder bookid = new StringBuilder();

    while(bookid.length() <= 6){
        bookid.append(random.nextInt(10));
    }

    String bid = "B"+bookid.toString();

    if (email == null) {
%>
        <script>
            alert("Please login to book");
        </script>

        <jsp:include page="tout.jsp" />
<%
    } else {
        String Booked_date = request.getParameter("booked_date");
        String Name = request.getParameter("name");
        String Email = request.getParameter("email");
        String Phone = request.getParameter("phone");
        String Place = request.getParameter("place");
        String Amount = request.getParameter("amount");

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "surendra", "surendra");

            String sql = "INSERT INTO Bookings VALUES(?,?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,bid );
            pstmt.setString(2, Tid);
            pstmt.setString(3, Booked_date);
            pstmt.setString(4, Name);
            pstmt.setString(5, Email);
            pstmt.setString(6, Phone);
            pstmt.setString(7, Place);
            pstmt.setString(8, Amount);

            int result = pstmt.executeUpdate();

            if(result==1){ %>
                <script> alert("Payment Successfull.Thank you for booking.") ;
                window.location.href="http://localhost:8081/TakeaTrip/tout.jsp";</script>

            <%
            }
            else{ %>
                <script>alert("Some Error occured please try again");</script>
                <jsp:include page="tout.jsp"/>
            <%
            }
        }
        catch(Exception e){ %>
           
        <%
        out.print(e);
        }

        
    }

%>
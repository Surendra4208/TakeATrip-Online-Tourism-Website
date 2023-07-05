<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String city = request.getParameter("city");
    String password = request.getParameter("pwd");

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
        String sql = "insert into users values(?,?,?,?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,name);
        pstmt.setString(2,email);
        pstmt.setString(3,city);
        pstmt.setString(4,password);
        int r = pstmt.executeUpdate();

        if(r==1){ %>
            <script>alert("Your Signup is Successfull. You can Login now")</script>
            <jsp:include page="userlogin.html" />
        <%
        }
        else{ %>
            <script>alert("Something get Wrong. Please try again")</script>
            <jsp:include page="usersignup.html" />
<%
        }    
    }
    catch(Exception e){ %>
        <!-- <script>alert("Some Exception occured")</script>
        <jsp:include page="usersignup.html" /> -->
<%
            out.println(e);

    }
%>
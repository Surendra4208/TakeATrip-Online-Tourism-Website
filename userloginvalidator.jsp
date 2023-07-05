<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("pwd");

    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","surendra","surendra");
        String sql = "select * from users where email=? and password=?";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        pstmt.setString(1,email);
        pstmt.setString(2,password);
        ResultSet r = pstmt.executeQuery();
        if(r.next()){ 
            String name = r.getString(1);
            session.setAttribute("name",name);
            session.setAttribute("email",email);
            response.sendRedirect("tout.jsp");
        }
        else{ %>
            <script>alert("Something get Wrong. Please try again")</script>
            <jsp:include page="userlogin.html" />
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
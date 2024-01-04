<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
String userUID = (String) session.getAttribute("userUID");

%>

<%
String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";
%>

<%
String questionPw = request.getParameter("password");
String uid = request.getParameter("uid");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(url, user, password);

    String selectQuery = "SELECT * FROM contact_question WHERE uid = ? AND question_pw = ? AND contact_writer_id = ?";
    PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);

    preparedStatement.setString(1, uid);
    preparedStatement.setString(2, questionPw);
    preparedStatement.setString(3, userUID);

    ResultSet resultSet = preparedStatement.executeQuery();

    if (resultSet.next()) {
        response.sendRedirect("../html/board_view.jsp?uid=" + uid);
    } else {
        out.println("<script>alert('비밀번호를 확인하세요.');</script>");
        out.println("<script>window.history.back();</script>");
    }

    resultSet.close();
    preparedStatement.close();
    conn.close();
} catch (Exception e) {
    // For developers - error logging
    out.println("Error: " + e.getMessage());
    // Message for users
    out.println("<script>alert('오류가 발생했습니다.');</script>");
    out.println("<script>window.history.back();</script>");
}
%>

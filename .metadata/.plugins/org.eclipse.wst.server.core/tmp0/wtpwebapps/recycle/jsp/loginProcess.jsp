<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
    String userId = request.getParameter("userId");
    String userPassword = request.getParameter("userPassword");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.0.71:3306/recycle", "recycle", "1234");

        String selectQuery = "SELECT * FROM user_list WHERE user_id = ? AND user_pw = ?";
        PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
        preparedStatement.setString(1, userId);
        preparedStatement.setString(2, userPassword);

        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            // 로그인 성공
			int userAuth = resultSet.getInt("user_auth");
		    String userUID = resultSet.getString("user_uid");
		    String userName = resultSet.getString("user_name");

             HttpSession userSession = request.getSession();
             userSession.setAttribute("userAuth", userAuth); 
             userSession.setAttribute("userUID", userUID);
             userSession.setAttribute("userName", userName);

             System.out.println("세션에 저장된 userauth: " + userAuth);
             System.out.println("세션에 저장된 userUID: " + userUID);
             
            // 화면에 로그인 정보 표시
            out.println("로그인 성공!<br>");
            out.println("Welcome, " + userAuth + "!<br>");
            response.sendRedirect("../index.jsp");
        } else {
            // 로그인 실패
            out.println("<script>alert('로그인 실패, 이메일과 패스워드를 확인하세요.');</script>");
            out.println("<script>window.history.back();</script>");
            }

        resultSet.close();
        preparedStatement.close();
        conn.close();
    } catch (Exception e) {
        out.println("Login failed. Error: " + e.getMessage());
    }
%>

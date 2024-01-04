<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
		String userUID = (String) session.getAttribute("userUID");
        // 데이터베이스 연결을 위한 정보 설정
        String url = "jdbc:mysql://192.168.0.71:3306/recycle"; // 본인의 데이터베이스 정보로 변경
        String username = "recycle"; // 본인의 데이터베이스 사용자 이름으로 변경
        String password = "1234"; // 본인의 데이터베이스 비밀번호로 변경
        
        // 사용자가 입력한 비밀번호 및 유저 아이디 가져오기
        String enteredPassword = request.getParameter("password");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);
            
            // 비밀번호 일치 여부를 확인하는 쿼리를 작성합니다.
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM user_list WHERE user_uid = ? AND user_pw = ?");
            pstmt.setString(1, userUID);
            pstmt.setString(2, enteredPassword);
            
            ResultSet rs = pstmt.executeQuery();
            
            // 사용자가 입력한 비밀번호가 일치하는지 확인합니다.
            if (rs.next()) {
                // 비밀번호가 일치하는 경우 해당 사용자의 정보를 삭제합니다.
                PreparedStatement deleteStmt = conn.prepareStatement("DELETE FROM user_list WHERE user_uid = ?");
                deleteStmt.setString(1, userUID);
                deleteStmt.executeUpdate();
                
                out.println("<script>alert('지금까지 DASH를 이용해주셔서 감사합니다.');</script>");
                response.sendRedirect("../jsp/logout.jsp");
            } else {
                out.println("<script>alert('회원탈퇴 실패 패스워드를 확인하세요.');</script>");
                out.println("<script>window.history.back();</script>");
            }
            
            // 데이터베이스 연결 해제
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();

        }
    %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>


<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String user_name = request.getParameter("user_name");
String user_phone = request.getParameter("user_phone");
String user_email = request.getParameter("user_email");
String user_auth = request.getParameter("user_auth");

// MySQL 연결 정보
String url = "jdbc:mysql://192.168.0.71:3306/recycle?useUnicode=true&characterEncoding=UTF-8";
String username = "recycle";
String password = "1234";

Connection connection = null;
PreparedStatement preparedStatement = null;

try {
	// MySQL 드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");

	// 데이터베이스에 연결
	connection = DriverManager.getConnection(url, username, password);

	// 쿼리 작성
	String sql = "INSERT INTO user_list (user_id, user_pw, user_name, user_phone, user_email, user_auth, reg_date)" 
				+ "VALUE (?, ?, ?, ?, ?, ?, now())";
	preparedStatement = connection.prepareStatement(sql);

	// 파라미터 설정
	preparedStatement.setString(1, user_id);
	preparedStatement.setString(2, user_pw);
	preparedStatement.setString(3, user_name);
	preparedStatement.setString(4, user_phone);
	preparedStatement.setString(5, user_email);
	preparedStatement.setString(6, user_auth);

	// 쿼리 실행
	int rowsAffected = preparedStatement.executeUpdate();

	if (rowsAffected > 0) {
	%>

		<script>
			alert("등록에 성공하셨습니다.");
			window.history.back();
		</script>
	<%
} else {
// 로그인 실패
out.println("<script>alert('등록 실패, 빠진 정보가 없는지 확인하시오.');</script>");
out.println("<script>window.history.back();</script>");
}
} catch (Exception e) {
e.printStackTrace();
} finally {
// 리소스 해제
try {
if (preparedStatement != null) {
	preparedStatement.close();
}
if (connection != null) {
	connection.close();
}
} catch (SQLException e) {
e.printStackTrace();
}
}
%>

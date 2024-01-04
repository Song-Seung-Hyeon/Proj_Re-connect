<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>

<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String user_name = request.getParameter("user_name");
String user_gender = request.getParameter("user_gender");
String user_birth = request.getParameter("user_year") + request.getParameter("user_month")
		+ request.getParameter("user_day");
String user_phone = request.getParameter("user_phone") + "-" + request.getParameter("phone_last");
String user_email = request.getParameter("email") + "@" + request.getParameter("email_diract");
String user_country = request.getParameter("user_country");
String user_education = request.getParameter("user_education");

// MySQL 연결 정보
String url = "jdbc:mysql://192.168.0.71:3306/recycle?useUnicode=true&characterEncoding=UTF-8";
String username = "recycle";
String password = "1234";

Connection connection = null;
PreparedStatement userStatement = null;
PreparedStatement membershipStatement = null;

try {
	// MySQL 드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");

	// 데이터베이스에 연결
	connection = DriverManager.getConnection(url, username, password);

	// 쿼리 작성 - user_list 테이블에 사용자 정보 추가
	String userSql = "INSERT INTO user_list (user_id, user_pw, user_name, user_gender, user_birth, user_phone, user_email, user_country, user_education, reg_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, now())";
	userStatement = connection.prepareStatement(userSql, Statement.RETURN_GENERATED_KEYS);

	// 파라미터 설정
	userStatement.setString(1, user_id);
	userStatement.setString(2, user_pw);
	userStatement.setString(3, user_name);
	userStatement.setString(4, user_gender);
	userStatement.setString(5, user_birth);
	userStatement.setString(6, user_phone);
	userStatement.setString(7, user_email);
	userStatement.setString(8, user_country);
	userStatement.setString(9, user_education);

	// 쿼리 실행
	int rowsAffected = userStatement.executeUpdate();

	ResultSet generatedKeys = userStatement.getGeneratedKeys();
    int user_uid = -1;
    if (generatedKeys.next()) {
        user_uid = generatedKeys.getInt(1);
    }

    // 쿼리 작성 - membership_info 테이블에 사용자 정보 추가
    String membershipSql = "INSERT INTO membership_info (user_uid, membership_uid) VALUES (?, 1)";    
    membershipStatement = connection.prepareStatement(membershipSql);

    // 파라미터 설정
    membershipStatement.setInt(1, user_uid);
    // ... (다른 파라미터 설정)

    // membership_info 테이블에 새로운 사용자 정보 추가
    int membershipRowsAffected = membershipStatement.executeUpdate();

    if (rowsAffected  > 0 && membershipRowsAffected > 0) {
		// 회원가입 성공

 %>
<script>
	alert("회원가입에 성공하셨습니다.");
	location.href = "../index.jsp";
</script>
<%
} else {
// 로그인 실패
out.println("<script>alert('회원가입 실패, 빠진 정보가 없는지 확인하시오.');</script>");
out.println("<script>window.history.back();</script>");
}
} catch (Exception e) {
e.printStackTrace();
} finally {
	// 리소스 해제
	try {
		if (userStatement != null) {
			userStatement.close();
		}
		if (membershipStatement != null) {
			membershipStatement.close();
		}
		if (connection != null) {
			connection.close();
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
%>

<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%request.setCharacterEncoding("utf-8");%>


<%
// 사용자가 입력한 데이터 받아오기
String estimateDate = request.getParameter("consulting_date");
String estimateGender = request.getParameter("user_gender");
String estimateName = request.getParameter("name");
String estimateBirth = request.getParameter("year");
String estimateCareer = request.getParameter("career");
String estimateEducation = request.getParameter("education");
String estimateCountry = request.getParameter("country");
String estimatePhone = request.getParameter("user_phone") + "-" + request.getParameter("phone_last");
String estimateEmail = request.getParameter("email") + "@" + request.getParameter("email_diract");



// MySQL 연결 정보 설정
String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(url, user, password);

    // 쿼리 작성
    String insertQuery = "INSERT INTO estimate (estimate_date, estimate_gender, estimate_name, estimate_birth, estimate_education, estimate_country, estimate_job, estimate_phone, estimate_email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    PreparedStatement preparedStatement = conn.prepareStatement(insertQuery);
    preparedStatement.setString(1, estimateDate);
    preparedStatement.setString(2, estimateGender);
    preparedStatement.setString(3, estimateName);
    preparedStatement.setString(4, estimateBirth);
    preparedStatement.setString(5, estimateEducation);
    preparedStatement.setString(6, estimateCountry);
    preparedStatement.setString(7, estimateCareer);
    preparedStatement.setString(8, estimatePhone);
    preparedStatement.setString(9, estimateEmail);


    // 쿼리 실행
    int rowsAffected = preparedStatement.executeUpdate();

    if (rowsAffected > 0) {
    	
    	%>
    	<script>
			alert("정상적으로 접수되었습니다.");
			location.href = "../index.jsp";
		</script>
    	<%
    	
    } else {
        out.println("<script>alert('예약 실패, 빠진 정보가 없는지 확인하시오.');</script>");
        out.println("<script>window.history.back();</script>");
    }

    preparedStatement.close();
    conn.close();
} catch (Exception e) {
    out.println("Error: " + e.getMessage()); // 오류 메시지 출력
}
%>
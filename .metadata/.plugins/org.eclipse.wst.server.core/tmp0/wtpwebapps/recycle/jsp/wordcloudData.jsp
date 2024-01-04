<%@ page import="javax.servlet.http.*,java.io.*,java.sql.*"%>
<%@ page import="java.sql.*, java.io.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
request.setCharacterEncoding("utf-8");
%>

<%
String userUID = (String) session.getAttribute("userUID");

//JDBC 드라이버 로드
Class.forName("com.mysql.jdbc.Driver");

//MySQL 데이터베이스 연결 정보
String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String username = "recycle";
String password = "1234";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet resultSet = null;

try {
  conn = DriverManager.getConnection(url, username, password);
	String selectQuery = "SELECT ul.*, ud.*, " +
            "GROUP_CONCAT(DISTINCT h.hobby_name) AS hobbies, " +
            "GROUP_CONCAT(DISTINCT p.personality_name) AS personalities, " +
            "GROUP_CONCAT(DISTINCT mv.values_name) AS marriage_values " +
            "FROM user_list ul " +
            "LEFT JOIN user_detail ud ON ul.user_uid = ud.user_uid " +
            "LEFT JOIN user_hobbies uh ON ul.user_uid = uh.user_id " +
            "LEFT JOIN hobbies h ON uh.hobby_id = h.hobby_id " +
            "LEFT JOIN user_personality up ON ul.user_uid = up.user_id " +
            "LEFT JOIN personalities p ON up.personality_id = p.personality_id " +
            "LEFT JOIN user_marriage_values umv ON ul.user_uid = umv.user_id " +
            "LEFT JOIN marriage_values mv ON umv.values_id = mv.values_id " + // 수정된 부분
            "WHERE ul.user_uid = ? " +
            "GROUP BY ul.user_uid";

  pstmt = conn.prepareStatement(selectQuery);
  pstmt.setString(1, userUID);

  resultSet = pstmt.executeQuery();

  // JSON 문자열 생성을 위한 StringBuilder
  StringBuilder jsonData = new StringBuilder("[");
  while (resultSet.next()) {
     String userName = resultSet.getString("user_name");
     String userHobbies = resultSet.getString("hobbies");
     String[] splitUserHobbies = userHobbies.split(",");
     String userBlood = resultSet.getString("user_blood");
     String userMBTI = resultSet.getString("user_mbti");
     String userReligion = resultSet.getString("user_religion");
     int userAlcohol = resultSet.getInt("user_alcohol");
     int userSmoking = resultSet.getInt("user_smoking");
     String userPersonality = resultSet.getString("personalities");
     String[] splitUserPersonality = userPersonality.split(",");
     String userMarriageValues = resultSet.getString("marriage_values");
     String[] splitUserMarriageValues = userMarriageValues.split(",");


     String alcoholString = (userAlcohol == 0) ? "비음주" : "음주";
     String smokingString = (userSmoking == 0) ? "비흡연" : "흡연";


     // JSON 배열에 해당 값을 추가
     jsonData.append("{\"x\": \"").append(userName).append("\", \"value\": 5},");
     for (String hobby : splitUserHobbies) {
     jsonData.append("{\"x\": \"").append(hobby).append("\", \"value\": 1},");    	 
     }
     jsonData.append("{\"x\": \"").append(userBlood).append(" 형\", \"value\": 1},");
     jsonData.append("{\"x\": \"").append(userMBTI).append("\", \"value\": 1},");
     jsonData.append("{\"x\": \"").append(userReligion).append("\", \"value\": 1},");
     jsonData.append("{\"x\": \"").append(alcoholString).append("\", \"value\": 2},");
     jsonData.append("{\"x\": \"").append(smokingString).append("\", \"value\": 2},");
     for (String personality : splitUserPersonality) {
     jsonData.append("{\"x\": \"").append(personality).append("\", \"value\": 3},");
     }
     for (String values : splitUserMarriageValues) {
     jsonData.append("{\"x\": \"").append(values).append("\", \"value\": 3},");
     }
 }



 // 마지막 쉼표 제거 후 JSON 배열 닫기
 if (jsonData.charAt(jsonData.length() - 1) == ',') {
     jsonData.deleteCharAt(jsonData.length() - 1);
 }
 jsonData.append("]");

 // 클라이언트로 JSON 형식의 데이터 출력
 response.setContentType("application/json");
 response.setCharacterEncoding("UTF-8");
 response.getWriter().write(jsonData.toString());

} catch (SQLException e) {
 e.printStackTrace();
} finally {
 // 리소스 닫기
 try {
     if (resultSet != null) resultSet.close();
     if (pstmt != null) pstmt.close();
     if (conn != null) conn.close();
 } catch (SQLException e) {
     e.printStackTrace();
 }
}
%>
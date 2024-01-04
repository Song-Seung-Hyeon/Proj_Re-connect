<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>

<jsp:include page="../jsp/user_list_component.jsp" />
<%
String userUid = (String) request.getAttribute("userUid");
String userId = (String) request.getAttribute("userId");
String userPw = (String) request.getAttribute("userPw");
String userName = (String) request.getAttribute("userName");
String userGender = (String) request.getAttribute("userGender");
String userBirth = (String) request.getAttribute("userBirth");
String userPhone = (String) request.getAttribute("userPhone");
String userEmail = (String) request.getAttribute("userEmail");
String userCountry = (String) request.getAttribute("userCountry");
String userCareer = (String) request.getAttribute("userCareer");
String userEducation = (String) request.getAttribute("userEducation");
String userHeight = (String) request.getAttribute("userHeight");
String userBody = (String) request.getAttribute("userBody");
String userSalary = (String) request.getAttribute("userSalary");
String userMarital = (String) request.getAttribute("userMarital");
String userChildren = (String) request.getAttribute("userChildren");
String userChildrenCount = (String) request.getAttribute("userChildrenCount");
String userBlood = (String) request.getAttribute("userBlood");
String userMBTI = (String) request.getAttribute("userMBTI");
String userReligion = (String) request.getAttribute("userReligion");
String userAlcohol = (String) request.getAttribute("userAlcohol");
String userAlcoholCount = (String) request.getAttribute("userAlcoholCount");
String userSmoking = (String) request.getAttribute("userSmoking");
String userHobbies = (String) request.getAttribute("userHobbies");
String userPersonality = (String) request.getAttribute("userPersonality");
String userMarriageValues = (String) request.getAttribute("userMarriageValues");
String userIntroduce = (String) request.getAttribute("userIntroduce");
String userPhotoURL = (String) request.getAttribute("userPhotoURL");
String imageName = (String) request.getAttribute("imageName");

String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";
String maritalString = (userMarital != null && userMarital.equals("0")) ? "초혼" : "재혼";
String childrenString = (userChildren != null && userChildren.equals("0")) ? "자녀 무" : "자녀 유";
String alcoholString = (userAlcohol != null && userAlcohol.equals("0")) ? "비음주" : "음주";
String smokingString = (userSmoking != null && userSmoking.equals("0")) ? "비흡연" : "흡연";
%>

<%
String user_uid = request.getParameter("user_uid");
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String user_name = request.getParameter("user_name");
String user_phone = request.getParameter("user_phone");
String user_email = request.getParameter("user_email");
String user_auth = request.getParameter("user_auth");
String toUid = request.getParameter("toUid");

// MySQL 연결 정보
String url = "jdbc:mysql://192.168.0.71:3306/recycle?useUnicode=true&characterEncoding=UTF-8";
String username = "recycle";
String password = "1234";

Connection connection = null;
PreparedStatement checkStatement = null;
PreparedStatement insertStatement = null;

try {
    // MySQL 드라이버 로드
    Class.forName("com.mysql.cj.jdbc.Driver");

    // 데이터베이스에 연결
    connection = DriverManager.getConnection(url, username, password);

    // toUid가 null이면 "하트를 눌러주세요" 알림 창 띄우기
    if (toUid == null) {
%>
        <script>
            alert("하트를 눌러주세요");
            window.history.back();
        </script>
<%
    } else {
        // 중복 확인 쿼리 작성
        boolean alreadyLiked = false;
        String checkSql = "SELECT * FROM `like` WHERE from_user = ? AND to_user = ?";
        checkStatement = connection.prepareStatement(checkSql);

        // 파라미터 설정
        checkStatement.setString(1, userUid); // from
        checkStatement.setString(2, toUid); // to

        // 중복 확인 쿼리 실행
        ResultSet resultSet = checkStatement.executeQuery();

        if (resultSet.next()) {
            // 이미 좋아요를 눌렀을 경우
             alreadyLiked = true;
%>

            <script>
                alert("이미 좋아요를 누르셨습니다.");
                window.history.back();
            </script>
<%
        } else {
            // 중복이 아니라면 좋아요를 추가
            // 좋아요 추가 쿼리 작성
            String insertSql = "INSERT INTO `like` (from_user, to_user) VALUES (?, ?)";
            insertStatement = connection.prepareStatement(insertSql);

            // 파라미터 설정
            insertStatement.setString(1, userUid); // from
            insertStatement.setString(2, toUid); // to

            // 좋아요 추가 쿼리 실행
            int rowsAffected = insertStatement.executeUpdate();

            if (rowsAffected > 0) {
%>
                <script>
                    alert("좋아요를 보내셨습니다.");
                    window.history.back();
                </script>
<%
            } else {
                // 등록 실패
%>
                <script>
                    alert('등록 실패, 빠진 정보가 없는지 확인하시오.');
                    window.history.back();
                </script>
<%
            }
            // like 테이블에서 A가 B를, B가 A를 좋아요한 경우 찾기
            String likeQuery = "SELECT COUNT(*) AS count_likes FROM `like` WHERE (to_user = ? AND from_user = ?) OR (to_user = ? AND from_user = ?)";
            PreparedStatement likeStatement = connection.prepareStatement(likeQuery);
            likeStatement.setString(1, toUid);
            likeStatement.setString(2, userUid);
            likeStatement.setString(3, userUid);
            likeStatement.setString(4, toUid);
            ResultSet likeResult = likeStatement.executeQuery();
            
         // 2에서 5까지 랜덤한 double 값 생성
            double randomValue = 2 + Math.random() * 3;

            // double 값을 문자열로 변환
            String stringValue = Double.toString(randomValue);
            
            if (likeResult.next() && likeResult.getInt("count_likes") == 2) {
                // 두 사용자가 서로를 좋아요한 경우, matches 테이블에 새로운 매치 추가
                String insertMatchQuery = "INSERT INTO matches (user1_id, user2_id, matched_date, manager_id) VALUES (?, ?, NOW(), ?)";
                PreparedStatement insertMatchStatement = connection.prepareStatement(insertMatchQuery);
                insertMatchStatement.setString(1, toUid);
                insertMatchStatement.setString(2, userUid);
                insertMatchStatement.setString(3, stringValue);
                insertMatchStatement.executeUpdate();
                insertMatchStatement.close();
            }
        }
    }
} catch (Exception e) {
    e.printStackTrace();
} finally {
    // 리소스 해제
    try {
        if (checkStatement != null) {
            checkStatement.close();
        }
        if (insertStatement != null) {
            insertStatement.close();
        }
        if (connection != null) {
            connection.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%request.setCharacterEncoding("utf-8");%>

<%
String userUID = (String) session.getAttribute("userUID");

try {
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.0.71:3306/recycle", "recycle", "1234");

   String selectQuery = "SELECT ul.*, ud.*, " + "GROUP_CONCAT(DISTINCT h.hobby_name) AS hobbies, "
   + "GROUP_CONCAT(DISTINCT p.personality_name) AS personalities, "
   + "GROUP_CONCAT(DISTINCT mv.values_name) AS marriage_values " + "FROM user_list ul "
   + "LEFT JOIN user_detail ud ON ul.user_uid = ud.user_uid "
   + "LEFT JOIN user_hobbies uh ON ul.user_uid = uh.user_id "
   + "LEFT JOIN hobbies h ON uh.hobby_id = h.hobby_id "
   + "LEFT JOIN user_personality up ON ul.user_uid = up.user_id "
   + "LEFT JOIN personalities p ON up.personality_id = p.personality_id "
   + "LEFT JOIN user_marriage_values umv ON ul.user_uid = umv.user_id "
   + "LEFT JOIN marriage_values mv ON umv.values_id = mv.values_id " + // 수정된 부분
   "WHERE ul.user_uid = ? " + "GROUP BY ul.user_uid";

   PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
   preparedStatement.setString(1, userUID);

   ResultSet resultSet = preparedStatement.executeQuery();
	
   if (resultSet.next()) {
	   if(resultSet.getString("user_uid") != null) {
	         String userUid = resultSet.getString("user_uid");
	        request.setAttribute("userUid", userUid);
	      }
	   	if(resultSet.getString("user_id") != null) {
	      String userId = resultSet.getString("user_id");
		  request.setAttribute("userId", userId);
		}
		 if(resultSet.getString("user_pw") != null) {
	      String userPw = resultSet.getString("user_pw");
	      request.setAttribute("userPw", userPw);
		}
		 if(resultSet.getString("user_name") != null) {
	      String userName = resultSet.getString("user_name");
	      request.setAttribute("userName", userName);
		}
		 if(resultSet.getString("user_gender") != null) {
	      String userGender = resultSet.getString("user_gender");
	      request.setAttribute("userGender", userGender);
		}
		 if(resultSet.getString("user_birth") != null) {
		  String userBirth = resultSet.getString("user_birth");
		  request.setAttribute("userBirth", userBirth);
		}
		 if(resultSet.getString("user_phone") != null) {
	      String userPhone = resultSet.getString("user_phone");
	      request.setAttribute("userPhone", userPhone);
		}
		 if(resultSet.getString("user_email") != null) {
		  String userEmail = resultSet.getString("user_email");
	      request.setAttribute("userEmail", userEmail);
		}
		 if(resultSet.getString("user_country") != null) {
		  String userCountry = resultSet.getString("user_country");
	      request.setAttribute("userCountry", userCountry);
		}
		 if(resultSet.getString("user_career") != null) {
		  String userCareer = resultSet.getString("user_career");
	      request.setAttribute("userCareer", userCareer);
		}
		 if(resultSet.getString("user_education") != null) {
		  String userEducation = resultSet.getString("user_education");
	      request.setAttribute("userEducation", userEducation);
		}
		 if(resultSet.getString("user_height") != null) {
		  String userHeight = resultSet.getString("user_height");
	      request.setAttribute("userHeight", userHeight);
		}
		 if(resultSet.getString("user_body") != null) {
		  String userBody = resultSet.getString("user_body");
	      request.setAttribute("userBody", userBody);
		}
		 if(resultSet.getString("user_salary") != null) {
		  String userSalary = resultSet.getString("user_salary");
	      request.setAttribute("userSalary", userSalary);
		}
		 if(resultSet.getString("user_marital") != null) {
		  String userMarital = resultSet.getString("user_marital");
	      request.setAttribute("userMarital", userMarital);
		}
		 if(resultSet.getString("user_children") != null) {
			 String userChildren = resultSet.getString("user_children");
	      request.setAttribute("userChildren", userChildren);
		}
		 if(resultSet.getString("user_children_count") != null) {
			 String userChildrenCount = resultSet.getString("user_children_count");
	      request.setAttribute("userChildrenCount", userChildrenCount);
		}
		 if(resultSet.getString("user_blood") != null) {
		  String userBlood = resultSet.getString("user_blood");
	      request.setAttribute("userBlood", userBlood);
		}
		 if(resultSet.getString("user_mbti") != null) {
		  String userMBTI = resultSet.getString("user_mbti");
	      request.setAttribute("userMBTI", userMBTI);
		}
		 if(resultSet.getString("user_religion") != null) {
		  String userReligion = resultSet.getString("user_religion");
	      request.setAttribute("userReligion", userReligion);
		}
		 if(resultSet.getString("user_alcohol") != null) {
			 String userAlcohol = resultSet.getString("user_alcohol");
	      request.setAttribute("userAlcohol", userAlcohol);
		}
		 if(resultSet.getString("user_alcohol_count") != null) {
		  String userAlcoholCount = resultSet.getString("user_alcohol_count");
	      request.setAttribute("userAlcoholCount", userAlcoholCount);
		}
		 if(resultSet.getString("user_smoking") != null) {
		  String userSmoking = resultSet.getString("user_smoking");
	      request.setAttribute("userSmoking", userSmoking);
		}
		 if(resultSet.getString("hobbies") != null) {
		  String userHobbies = resultSet.getString("hobbies");
	      request.setAttribute("userHobbies", userHobbies);
		}
		 if(resultSet.getString("personalities") != null) {
		  String userPersonality = resultSet.getString("personalities");
	      request.setAttribute("userPersonality", userPersonality);
		}
		 if(resultSet.getString("marriage_values") != null) {
		  String userMarriageValues = resultSet.getString("marriage_values");
	      request.setAttribute("userMarriageValues", userMarriageValues);
		}
		 if(resultSet.getString("user_introduce") != null) {
		  String userIntroduce = resultSet.getString("user_introduce");
	      request.setAttribute("userIntroduce", userIntroduce);
		}
		 if(resultSet.getString("photo_url") != null) {
	      String userPhotoURL = resultSet.getString("photo_url");
	      request.setAttribute("userPhotoURL", userPhotoURL);
		}
	      String userPhotoURL = resultSet.getString("photo_url");
	      String imageName = new File(userPhotoURL).getName();
	      request.setAttribute("userPhotoURL", userPhotoURL);
	      request.setAttribute("imageName", imageName);

	      String realPath = request.getServletContext().getRealPath("/images/") + imageName;
%>
<%
}

resultSet.close();
preparedStatement.close();
conn.close();
} catch (Exception e) {
out.println("Failed to fetch user information: " + e.getMessage());
}
%>
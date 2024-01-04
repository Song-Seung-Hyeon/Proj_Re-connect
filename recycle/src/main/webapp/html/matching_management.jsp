<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
request.setCharacterEncoding("utf-8");
%>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.time.Period"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<jsp:include page="../jsp/user_list_component.jsp"/>
<%
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
String userUid = (String) request.getAttribute("userUid");

String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";
String maritalString = (userMarital != null && userMarital.equals("0")) ? "초혼" : "재혼";
String childrenString = (userChildren != null && userChildren.equals("0")) ? "자녀 무" : "자녀 유";
String alcoholString = (userAlcohol != null && userAlcohol.equals("0")) ? "비음주" : "음주";
String smokingString = (userSmoking != null && userSmoking.equals("0")) ? "비흡연" : "흡연";

%>
<%
String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";
%>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>manager DASH매칭 관리 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
	content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
	content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../favicon.png" />
<link rel="stylesheet" href="../CSS/matching_management.css" />
<link rel="stylesheet" href="../CSS/footer_style.css" />
<link rel="stylesheet" href="../CSS/reset.css" />
</head>

<body>
	<header class="account_header">
		<div class="header_btn">
			<div class="message_badge">
				<button type="button" class="btn_messenger" onclick="">메신저</button>
				<span class="push_num" style="display: none">0</span>
			</div>
			<div class="alarm_badge">
				<button type="button" class="btn_alarm" onclick="">알림</button>
				<span class="push_num" style="display: none">0</span>
			</div>
		</div>

		<div class="member">
			<button type="button" class="btn_member">
				<div class="user_photo">
					<figure class="user_img">
						<img src="<%= request.getContextPath() %>/images/<%= imageName %>" alt="user_img" />
					</figure>
				</div>
			</button>

			<div class="layer_member">
				<ul>
					<li><img src="<%= request.getContextPath() %>/images/<%= imageName %>" alt="user_img" /><span><%=userName %></span>
					</li>
					<li><a href="account.jsp"><span>개인정보 수정</span> <iconify-icon
								icon="la:edit-solid" width="30"></iconify-icon></a></li>
					<li><a href="../jsp/logout.jsp"><span>로그아웃</span> <iconify-icon
								icon="material-symbols:logout" width="25"></iconify-icon></a></li>
				</ul>
			</div>
		</div>
	</header>

	<div class="nav">
		<a href="../index.jsp" id="logo2"> <img src="../images/logo.svg"
			alt="logo" />
		</a>
		<ul class="gnb">
			<li class="gnb-menu"><a href="account_manager.jsp"
				class="menu-btn">마이페이지</a></li>
			<li class="gnb-menu"><a href="post_management.jsp"
				class="menu-btn">게시물 관리</a></li>
			<li class="gnb-menu"><a href="user_management.jsp"
				class="menu-btn">회원관리</a></li>
			<li class="gnb-menu"><a href="user_estimate_manager.jsp"
				class="menu-btn">상담예약 확인</a></li>
			<li class="gnb-menu"><a href="matching_management.jsp"
				class="menu-btn">DASH 매칭</a></li>
		</ul>
		<button type="button" class="nav-icon">
			<iconify-icon icon="ph:list-fill"></iconify-icon>
		</button>
	</div>

	<main>
		<div class="container">
			<div class="container_main">
				<div class="content">
					<h1>DASH매칭</h1>

					<div>
						<p>월별 매칭표</p>
						<canvas id="myChart"></canvas>
					</div>

					<div class="authority">
						<div class="search-box">

							<select name="user_search" class="user_search">
								<option value="성함">성함</option>
								<option value="ID">ID</option>
								<!-- <option value="사용권한">사용권한</option> -->
							</select> <input type="search">
							<button type="button" class="search-btn">조회</button>
							<button type="button" onclick="openModal('modal1')"
								class="add_btn">등록</button>
						</div>

						<div id="modal1" class="modal">
							<div class="modal-content">
								<h3 class="modal-heder">커플 등록</h3>
								<div class="modal-text">
									<form action="#" method="post" id="add_administrator"
										enctype="multipart/form-data">
										<div class="search-box">

											<select name="user_search" class="user_search">
												<option value="성함">성함</option>
												<option value="ID">ID</option>
											</select> <input type="search">
											<button type="button" class="search-btn">조회</button>
										</div>
										<div class="btn_box">
											<button type="submit" id="submit-authority"
												class="modal_btn active_btn">저장</button>
											<button type="button" onclick="closeModal('modal1')"
												class="modal_btn">닫기</button>
										</div>
									</form>
								</div>
								<button tpye="button" onclick="closeModal('modal1')"
									class="close_btn">
									<iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
								</button>
							</div>
						</div>
						<!-- user1 -->
						<%
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								Connection conn = DriverManager.getConnection(url, user, password);

								String likeFromQuery = "SELECT * FROM matches;";
								PreparedStatement preparedStatement = conn.prepareStatement(likeFromQuery);
								ResultSet resultSet = preparedStatement.executeQuery();

								SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

								while (resultSet.next()) {
									String user1_id = resultSet.getString("user1_id");
									String user2_id = resultSet.getString("user2_id");
									String matched_date = resultSet.getString("matched_date");
									String manager_id = resultSet.getString("manager_id");
									
									// user1
									String userDetails1Query = "SELECT ul.*, ud.*, " 
											+ "GROUP_CONCAT(DISTINCT h.hobby_name) AS hobbies, "
									        + "GROUP_CONCAT(DISTINCT p.personality_name) AS personalities, "
									        + "GROUP_CONCAT(DISTINCT mv.values_name) AS marriage_values, " 
									        + "GROUP_CONCAT(DISTINCT m.membership_name) AS membership "
									        + "FROM user_list ul "
									        + "LEFT JOIN user_detail ud ON ul.user_uid = ud.user_uid "
									        + "LEFT JOIN user_hobbies uh ON ul.user_uid = uh.user_id "
									        + "LEFT JOIN hobbies h ON uh.hobby_id = h.hobby_id "
									        + "LEFT JOIN user_personality up ON ul.user_uid = up.user_id "
									        + "LEFT JOIN personalities p ON up.personality_id = p.personality_id "
									        + "LEFT JOIN user_marriage_values umv ON ul.user_uid = umv.user_id "
									        + "LEFT JOIN marriage_values mv ON umv.values_id = mv.values_id "  
									        + "LEFT JOIN membership_info mi ON ul.user_uid = mi.user_uid "
									        + "LEFT JOIN membership m ON mi.membership_uid = m.membership_uid "
									        + "WHERE ul.user_uid = ? " 
									        + "GROUP BY ul.user_uid";
									PreparedStatement userDetails1Statement = conn.prepareStatement(userDetails1Query);
									userDetails1Statement.setString(1, user1_id);
									ResultSet userDetails1Result = userDetails1Statement.executeQuery();
									
									

									if (userDetails1Result.next()) {
										
								// user1의 정보
								String user_uid1 = userDetails1Result.getString("user_uid");
								String user_name1 = userDetails1Result.getString("user_name");
								String user_id1 = userDetails1Result.getString("user_id");
								String user_gender1 = userDetails1Result.getString("user_gender");
								if(user_gender1.equals("1")){user_gender1="여자";}else{user_gender1="남자";}
								String user_phone1 = userDetails1Result.getString("user_phone");
								String user_birth1 = userDetails1Result.getString("user_birth");
								String user_email1 = userDetails1Result.getString("user_email");
								String user_conutry1 = userDetails1Result.getString("user_country");
								String reg_date1 = userDetails1Result.getString("reg_date");
								String membership_uid1 = userDetails1Result.getString("membership");
								String user_introduce1 = userDetails1Result.getString("user_introduce");
								
								String user_height1 = userDetails1Result.getString("user_height");
								String user_career1 = userDetails1Result.getString("user_career");
								String user_education1 = userDetails1Result.getString("user_education");
								String user_body1 = userDetails1Result.getString("user_body");
								String user_salary1 = userDetails1Result.getString("user_salary");
								if (user_salary1.equals("-2000")) {
									user_salary1 = "2000만원 미만";
								} else if (user_salary1.equals("-3000")) {
									user_salary1 = "2천만원 이상 - 3천만원 미만";
								} else if (user_salary1.equals("-4000")) {
									user_salary1 = "3천만원 이상 - 4천만원 미만";
								} else if (user_salary1.equals("-5000")) {
									user_salary1 = "4천만원 이상 - 5천만원 미만";
								} else if (user_salary1.equals("-6000")) {
									user_salary1 = "5천만원 이상 - 6천만원 미만";
								} else if (user_salary1.equals("-7000")) {
									user_salary1 = "6천만원 이상 - 7천만원 미만";
								} else if (user_salary1.equals("-8000")) {
									user_salary1 = "7천만원 이상 - 8천만원 미만";
								} else if (user_salary1.equals("-9000")) {
									user_salary1 = "8천만원 이상 - 9천만원 미만";
								} else if (user_salary1.equals("-10000")) {
									user_salary1 = "9천만원 이상 - 1억 미만";
								} else if (user_salary1.equals("-10000-20000")) {
									user_salary1 = "1억 이상 - 2억 미만";
								} else if (user_salary1.equals("-20000-30000")) {
									user_salary1 = "2억 이상 - 3억 미만";
								} else if (user_salary1.equals("-30000-40000")) {
									user_salary1 = "3억 이상 - 4억 미만";
								} else if (user_salary1.equals("-40000-50000")) {
									user_salary1 = "4억 이상 - 5억 미만";
								} else if (user_salary1.equals("50000-")) {
									user_salary1 = "5억 이상";
								}
								String user_marital1 = userDetails1Result.getString("user_marital");
								if(user_marital1.equals("1")){user_marital1="Yes";}else{user_marital1="No";}
								String user_children1 = userDetails1Result.getString("user_children");
								if(user_children1.equals("1")){user_children1="Yes";}else{user_children1="No";}
								String user_children_count1 = userDetails1Result.getString("user_children_count");
								String user_hobbies1 = userDetails1Result.getString("hobbies");
								String user_persnality1 = userDetails1Result.getString("personalities");
								String user_alcohol1 = userDetails1Result.getString("user_alcohol");
								if(user_alcohol1.equals("1")){user_alcohol1="Yes";}else{user_alcohol1="No";}
								String user_smoking1 = userDetails1Result.getString("user_smoking");
								if(user_smoking1.equals("1")){user_smoking1="Yes";}else{user_smoking1="No";}
								String user_blood1 = userDetails1Result.getString("user_blood");
								String user_marriage_values1 = userDetails1Result.getString("marriage_values");
								
								String photo_url1 = userDetails1Result.getString("photo_url");
								String imageName1 = (photo_url1 != null) ? new File(photo_url1).getName() : "Default_image.JPG";

							%>
						<div id="modal<%=user_uid1%>" class="modal">
							<div class="modal-content">
								<h3 class="modal-heder">회원관리</h3>
								<div class="modal-text">
									<form action="#" method="post" id="add_administrator"
										enctype="multipart/form-data">
										<div class="add_info">
											<table class="info">
												<tr>
													<td>이름</td>
													<td><%=user_name1 %></td>
													<td>ID</td>
													<td><%=user_id1 %></td>
												</tr>
												<tr>
													<td>성별</td>
													<td><%=user_gender1 %></td>
													<td>연락처</td>
													<td><%=user_phone1 %></td>
												</tr>
												<tr>
													<td>생년월일</td>
													<td><%=user_birth1 %></td>
													<td>이메일</td>
													<td><%=user_email1 %></td>
												</tr>
												<tr>
													<td>지역</td>
													<td><%=user_conutry1 %></td>
													<td>가입일</td>
													<td><%=reg_date1 %></td>
												</tr>
												<tr>
													<td>등급</td>
													<td><%=membership_uid1 %></td>
												</tr>
												<tr>
													<td colspan="4">프로필</td>											
												</tr>
												<tr>
													<td>키</td>
													<td><%=user_height1 %></td>
													<td>직업</td>
													<td><%=user_career1 %></td>
												</tr>
												<tr>
													<td>학력</td>
													<td><%=user_education1 %></td>
													<td>체형</td>
													<td><%=user_body1 %></td>
												</tr>
												<tr>
													<td>연봉</td>
													<td><%=user_salary1 %></td>
													<td>결혼여부</td>
													<td><%=user_marital1 %></td>
												</tr>
												<tr>
													<td>자녀여부</td>
													<td><%=user_children1 %></td>
													<td>자녀 수</td>
													<td><%=user_children_count1 %></td>
												</tr>
												<tr>
													<td>관심사</td>
													<td><%=user_hobbies1 %></td>
													<td>성격</td>
													<td><%=user_persnality1 %></td>
												</tr>
												<tr>
													<td>음주</td>
													<td><%=user_alcohol1 %></td>
													<td>흡연</td>
													<td><%=user_smoking1 %></td>
												</tr>
												<tr>
													<td>결혼가치관</td>
													<td><%=user_marriage_values1 %></td>
													<td>혈액형</td>
													<td><%=user_blood1 %></td>
												</tr>
											</table>
										</div>
										<div class="btn_box">
											<button type="submit" id="submit-authority"
												class="modal_btn active_btn">수정</button>
											<button type="button" onclick="closeModal('modal<%=user_uid1%>')"
												class="modal_btn">닫기</button>
										</div>
									</form>
								</div>
								<button tpye="button" onclick="closeModal('modal<%=user_uid1%>')"
									class="close_btn">
									<iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
								</button>
							</div>
						</div>
							<%
							}
							// Close the result set and statement for user details query
							userDetails1Result.close();
							userDetails1Statement.close();
							}

							// Close resources for the main query
							resultSet.close();
							preparedStatement.close();
							conn.close();
							} catch (Exception e) {
							out.println("Error: " + e.getMessage());
							}
							%>
							
							<!-- user2 -->
							<%
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								Connection conn = DriverManager.getConnection(url, user, password);

								String likeFromQuery = "SELECT * FROM matches;";
								PreparedStatement preparedStatement = conn.prepareStatement(likeFromQuery);
								ResultSet resultSet = preparedStatement.executeQuery();

								SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

								while (resultSet.next()) {
									String user1_id = resultSet.getString("user1_id");
									String user2_id = resultSet.getString("user2_id");
									String matched_date = resultSet.getString("matched_date");
									String manager_id = resultSet.getString("manager_id");
									
									// user2
									String userDetails2Query = "SELECT ul.*, ud.*, " 
											+ "GROUP_CONCAT(DISTINCT h.hobby_name) AS hobbies, "
									        + "GROUP_CONCAT(DISTINCT p.personality_name) AS personalities, "
									        + "GROUP_CONCAT(DISTINCT mv.values_name) AS marriage_values, " 
									        + "GROUP_CONCAT(DISTINCT m.membership_name) AS membership "
									        + "FROM user_list ul "
									        + "LEFT JOIN user_detail ud ON ul.user_uid = ud.user_uid "
									        + "LEFT JOIN user_hobbies uh ON ul.user_uid = uh.user_id "
									        + "LEFT JOIN hobbies h ON uh.hobby_id = h.hobby_id "
									        + "LEFT JOIN user_personality up ON ul.user_uid = up.user_id "
									        + "LEFT JOIN personalities p ON up.personality_id = p.personality_id "
									        + "LEFT JOIN user_marriage_values umv ON ul.user_uid = umv.user_id "
									        + "LEFT JOIN marriage_values mv ON umv.values_id = mv.values_id "  
									        + "LEFT JOIN membership_info mi ON ul.user_uid = mi.user_uid "
									        + "LEFT JOIN membership m ON mi.membership_uid = m.membership_uid "
									        + "WHERE ul.user_uid = ? " 
									        + "GROUP BY ul.user_uid";
									PreparedStatement userDetails2Statement = conn.prepareStatement(userDetails2Query);
									userDetails2Statement.setString(1, user2_id);
									ResultSet userDetails2Result = userDetails2Statement.executeQuery();

									if (userDetails2Result.next()) {

								// user2의 정보
								String user_uid2 = userDetails2Result.getString("user_uid");
								String user_name2 = userDetails2Result.getString("user_name");
								String user_id2 = userDetails2Result.getString("user_id");
								String user_gender2 = userDetails2Result.getString("user_gender");
								if(user_gender2.equals("1")){user_gender2="여자";}else{user_gender2="남자";}
								String user_phone2 = userDetails2Result.getString("user_phone");
								String user_birth2 = userDetails2Result.getString("user_birth");
								String user_email2 = userDetails2Result.getString("user_email");
								String user_conutry2 = userDetails2Result.getString("user_country");
								String reg_date2 = userDetails2Result.getString("reg_date");
								String membership_uid2 = userDetails2Result.getString("membership");
								String user_introduce2 = userDetails2Result.getString("user_introduce");
								
								String user_height2 = userDetails2Result.getString("user_height");
								String user_career2 = userDetails2Result.getString("user_career");
								String user_education2 = userDetails2Result.getString("user_education");
								String user_body2 = userDetails2Result.getString("user_body");
								String user_salary2 = userDetails2Result.getString("user_salary");
								if (user_salary2.equals("-2000")) {
									user_salary2 = "2000만원 미만";
								} else if (user_salary2.equals("-3000")) {
									user_salary2 = "2천만원 이상 - 3천만원 미만";
								} else if (user_salary2.equals("-4000")) {
									user_salary2 = "3천만원 이상 - 4천만원 미만";
								} else if (user_salary2.equals("-5000")) {
									user_salary2 = "4천만원 이상 - 5천만원 미만";
								} else if (user_salary2.equals("-6000")) {
									user_salary2 = "5천만원 이상 - 6천만원 미만";
								} else if (user_salary2.equals("-7000")) {
									user_salary2 = "6천만원 이상 - 7천만원 미만";
								} else if (user_salary2.equals("-8000")) {
									user_salary2 = "7천만원 이상 - 8천만원 미만";
								} else if (user_salary2.equals("-9000")) {
									user_salary2 = "8천만원 이상 - 9천만원 미만";
								} else if (user_salary2.equals("-10000")) {
									user_salary2 = "9천만원 이상 - 1억 미만";
								} else if (user_salary2.equals("-10000-20000")) {
									user_salary2 = "1억 이상 - 2억 미만";
								} else if (user_salary2.equals("-20000-30000")) {
									user_salary2 = "2억 이상 - 3억 미만";
								} else if (user_salary2.equals("-30000-40000")) {
									user_salary2 = "3억 이상 - 4억 미만";
								} else if (user_salary2.equals("-40000-50000")) {
									user_salary2 = "4억 이상 - 5억 미만";
								} else if (user_salary2.equals("50000-")) {
									user_salary2 = "5억 이상";
								}
								String user_marital2 = userDetails2Result.getString("user_marital");
								if(user_marital2.equals("1")){user_marital2="Yes";}else{user_marital2="No";}
								String user_children2 = userDetails2Result.getString("user_children");
								if(user_children2.equals("1")){user_children2="Yes";}else{user_children2="No";}
								String user_children_count2 = userDetails2Result.getString("user_children_count");
								String user_hobbies2 = userDetails2Result.getString("hobbies");
								String user_persnality2 = userDetails2Result.getString("personalities");
								String user_alcohol2 = userDetails2Result.getString("user_alcohol");
								if(user_alcohol2.equals("1")){user_alcohol2="Yes";}else{user_alcohol2="No";}
								String user_smoking2 = userDetails2Result.getString("user_smoking");
								if(user_smoking2.equals("1")){user_smoking2="Yes";}else{user_smoking2="No";}
								String user_blood2 = userDetails2Result.getString("user_blood");
								String user_marriage_values2 = userDetails2Result.getString("marriage_values");
								
								String photo_url2 = userDetails2Result.getString("photo_url");
								String imageName2 = (photo_url2 != null) ? new File(photo_url2).getName() : "Default_image.JPG";
							%>
						<div id="modal<%=user_uid2%>" class="modal">
							<div class="modal-content">
								<h3 class="modal-heder">회원관리</h3>
								<div class="modal-text">
									<form action="#" method="post" id="add_administrator"
										enctype="multipart/form-data">
										<div class="add_info">
											<table class="info">
												<tr>
													<td>이름</td>
													<td><%=user_name2 %></td>
													<td>ID</td>
													<td><%=user_id2 %></td>
												</tr>
												<tr>
													<td>성별</td>
													<td><%=user_gender2 %></td>
													<td>연락처</td>
													<td><%=user_phone2 %></td>
												</tr>
												<tr>
													<td>생년월일</td>
													<td><%=user_birth2 %></td>
													<td>이메일</td>
													<td><%=user_email2 %></td>
												</tr>
												<tr>
													<td>지역</td>
													<td><%=user_conutry2 %></td>
													<td>가입일</td>
													<td><%=reg_date2 %></td>
												</tr>
												<tr>
													<td>등급</td>
													<td><%=membership_uid2 %></td>
												</tr>
												<tr>
													<td colspan="4">프로필</td>											
												</tr>
												<tr>
													<td>키</td>
													<td><%=user_height2 %></td>
													<td>직업</td>
													<td><%=user_career2 %></td>
												</tr>
												<tr>
													<td>학력</td>
													<td><%=user_education2 %></td>
													<td>체형</td>
													<td><%=user_body2 %></td>
												</tr>
												<tr>
													<td>연봉</td>
													<td><%=user_salary2 %></td>
													<td>결혼여부</td>
													<td><%=user_marital2 %></td>
												</tr>
												<tr>
													<td>자녀여부</td>
													<td><%=user_children2 %></td>
													<td>자녀 수</td>
													<td><%=user_children_count2 %></td>
												</tr>
												<tr>
													<td>관심사</td>
													<td><%=user_hobbies2 %></td>
													<td>성격</td>
													<td><%=user_persnality2 %></td>
												</tr>
												<tr>
													<td>음주</td>
													<td><%=user_alcohol2 %></td>
													<td>흡연</td>
													<td><%=user_smoking2 %></td>
												</tr>
												<tr>
													<td>결혼가치관</td>
													<td><%=user_marriage_values2 %></td>
													<td>혈액형</td>
													<td><%=user_blood2 %></td>
												</tr>
											</table>
										</div>
										<div class="btn_box">
											<button type="submit" id="submit-authority"
												class="modal_btn active_btn">수정</button>
											<button type="button" onclick="closeModal('modal<%=user_uid2%>')"
												class="modal_btn">닫기</button>
										</div>
									</form>
								</div>
								<button tpye="button" onclick="closeModal('modal<%=user_uid2%>')"
									class="close_btn">
									<iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
								</button>
							</div>
						</div>
							<%
							}
							// Close the result set and statement for user details query
							userDetails2Result.close();
							userDetails2Statement.close();
							}

							// Close resources for the main query
							resultSet.close();
							preparedStatement.close();
							conn.close();
							} catch (Exception e) {
							out.println("Error: " + e.getMessage());
							}
							%>
							
						<div class="manber_list">
							<%
							try {
								Class.forName("com.mysql.cj.jdbc.Driver");
								Connection conn = DriverManager.getConnection(url, user, password);

								String likeFromQuery = "SELECT * FROM matches;";
								PreparedStatement preparedStatement = conn.prepareStatement(likeFromQuery);
								ResultSet resultSet = preparedStatement.executeQuery();

								SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

								while (resultSet.next()) {
									String user1_id = resultSet.getString("user1_id");
									String user2_id = resultSet.getString("user2_id");
									String matched_date = resultSet.getString("matched_date");
									String manager_id = resultSet.getString("manager_id");

									String userDetails1Query = "SELECT * FROM user_list WHERE user_uid=?";
									PreparedStatement userDetails1Statement = conn.prepareStatement(userDetails1Query);
									userDetails1Statement.setString(1, user1_id);
									ResultSet userDetails1Result = userDetails1Statement.executeQuery();

									String userDetails2Query = "SELECT * FROM user_list WHERE user_uid=?";
									PreparedStatement userDetails2Statement = conn.prepareStatement(userDetails2Query);
									userDetails2Statement.setString(1, user2_id);
									ResultSet userDetails2Result = userDetails2Statement.executeQuery();

									if (userDetails1Result.next() && userDetails2Result.next()) {
								// user1의 정보
								String user_name1 = userDetails1Result.getString("user_name");
								String user_uid1 = userDetails1Result.getString("user_uid");
								String user_introduce1 = userDetails1Result.getString("user_introduce");
								String photo_url1 = userDetails1Result.getString("photo_url");
								String imageName1 = (photo_url1 != null) ? new File(photo_url1).getName() : "Default_image.JPG";

								// user2의 정보
								String user_name2 = userDetails2Result.getString("user_name");
								String user_uid2 = userDetails2Result.getString("user_uid");
								String user_introduce2 = userDetails2Result.getString("user_introduce");
								String photo_url2 = userDetails2Result.getString("photo_url");
								String imageName2 = (photo_url2 != null) ? new File(photo_url2).getName() : "Default_image.JPG";
							%>
							<div>
								<p>1</p>
								<button onclick="correctionModal('modal<%=user_uid1%>')">
									<img src="<%=request.getContextPath()%>/images/<%=imageName1%>"
										alt="<%=user_name1%>"><%=user_name1%></button>
								<div>
									<img src="../images/arrowheart.svg" alt="arrowheart">
								</div>
								<button onclick="correctionModal('modal<%=user_uid2%>')">
									<img src="<%=request.getContextPath()%>/images/<%=imageName2%>"
										alt="<%=user_name2%>"><%=user_name2%></button>
								<button onclick="deleteBtn()" style="color: red;">탈퇴</button>
							</div>
							<%
							}
							// Close the result set and statement for user details query
							userDetails1Result.close();
							userDetails2Result.close();
							userDetails1Statement.close();
							userDetails2Statement.close();
							}

							// Close resources for the main query
							resultSet.close();
							preparedStatement.close();
							conn.close();
							} catch (Exception e) {
							out.println("Error: " + e.getMessage());
							}
							%>
						</div>

					</div>

				</div>
			</div>
		</div>
	</main>
	<!-- 아래 footer 하단 고정 -->
	<footer class="footer">
		<div class="footer-content">
			<h3>(주)Re:connect</h3>
			<span>대표 : Recycle</span> <span>사업자등록번호 : 999-99-99999</span> <span>주소
				: (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span> <span>Tel.042-222-2402</span>
			<ul class="footer-socials">
				<li><a href="index_logout.jsp"><img
						src="../images/ico_image.svg" alt="ico_image" /></a> <!-- 임시로 로그아웃 넣어 놨음 -->
				</li>
				<li><a href="account_manager.jsp"><img
						src="../images/ico_instagram.svg" alt="ico_instagram" /></a> <!-- 임시로 커플매니저페이지 넣어 놨음 -->
				</li>
				<li><a href="admin_manager_management.jsp"><img
						src="../images/ico_youtube.svg" alt="ico_youtube" /></a> <!-- 임시로 관리자페이지 넣어 놨음 -->
				</li>
			</ul>
			<div class="footer-menu">
				<p>
					copyright &copy;2023 by <a href="../index.jsp">Re:connect.</a> All
					pictures cannot be copied without permission.
				</p>
				<ul class="f-menu">
					<li><a href="../index.jsp">Home</a></li>
					<li><a href="dash.jsp">About</a></li>
					<li><a href="estimate.jsp">Contact</a></li>
					<li><a href="FAQ.jsp">FAQ</a></li>
				</ul>
			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@4.3.3/dist/chart.umd.min.js"></script>
	<script src="../script/matching_chart.js"></script>
	<script src="../script/matching_management.js"></script>
	<script
		src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
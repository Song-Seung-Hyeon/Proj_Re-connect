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
//String userPhotoURL = (String) request.getAttribute("userPhotoURL");
//String imageName = (String) request.getAttribute("imageName");

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

<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(url, user, password);
	
	String userUID = (String) session.getAttribute("userUID");
	if (userUID == null) {
		out.println("<script>alert('로그인이 필요한 서비스입니다.');</script>");
		out.println("<script>location.href='../html/login.jsp';</script>");
	}
	
	String user_search = request.getParameter("user_search");
	String search = request.getParameter("search");

	List<String> userUidList = new ArrayList<>();

	String userGenderQuery = "SELECT * FROM user_list WHERE user_auth=1 AND user_gender=? ORDER BY RAND() LIMIT 7";
	try (PreparedStatement preparedStatement = conn.prepareStatement(userGenderQuery)) {
		preparedStatement.setString(1, userGender.equals("1") ? "0" : "1");
		try (ResultSet resultSet = preparedStatement.executeQuery()) {
	while (resultSet.next()) {
		String user_Uid = resultSet.getString("user_uid");
		//System.out.println(user_Uid);
		userUidList.add(user_Uid);
	}
		}
	}
	// List를 배열로 변환하는 경우
	String[] userUidArray = userUidList.toArray(new String[0]);
%>


<!DOCTYPE html>
<html lang="ko">

<head>
<title>Dash매칭 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
	content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
	content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../images/favicon.png" />


<script type="module" crossorigin src="../script/matching_script.js"></script>
<link rel="modulepreload" href="../script/matcing_script2.js">
<link rel="stylesheet" href="../CSS/matching_style.css">

<link rel="stylesheet" href="../CSS/reset.css">
<link rel="stylesheet" href="../CSS/header_footer.css">
<link rel="stylesheet" href="../CSS/sidebar_style.css">
</head>

<body>
	<!-- 헤더 -->
	<header>
		<div class="header">
			<div class="air"></div>
			<a href="../index.jsp" id="logo"> <img src="../images/logo.svg"
				alt="로고" />
			</a>
			<div class="login_menu">
				<div id="loginStatus"></div>

			</div>
		</div>
		<nav class="nav">
			<a href="../index.jsp" id="logo2"> <img src="../images/logo.svg"
				alt="로고" width="95" />
			</a>
			<ul class="gnb">
				<!-- <div id="test"></div> -->
				<li class="gnb-menu"><a href="#" class="menu-btn">회사소개</a>
					<ul class="sub-menu">
						<li><a href="dash.jsp">Dash란?</a></li>
						<li><a href="greeting.jsp">인사말</a></li>
						<li><a href="manager.jsp">커플 매니저 소개</a></li>
					</ul></li>

				<li class="gnb-menu"><a href="#" class="menu-btn">커뮤니티</a>
					<ul class="sub-menu">
						<li><a href="notice.jsp">공지사항</a></li>
						<li><a href="board_main.jsp">문의하기</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="FAQ.jsp">FAQ</a></li>
					</ul></li>

				<li class="gnb-menu"><a href="#" class="menu-btn">이용안내</a>
					<ul class="sub-menu">

						<li><a href="estimate.jsp">상담예약</a></li>
						<li><a href="price.jsp">이용요금</a></li>
					</ul></li>

				<li class="gnb-menu"><a href="#" class="menu-btn">후기정보</a>
					<ul class="sub-menu">
						<li><a href="mgr_reviews.jsp">매니저 후기</a></li>
						<li><a href="interview.jsp">인터뷰</a></li>
					</ul></li>

				<li class="gnb-menu"><a href="#" class="menu-btn">매칭하기</a>
					<ul class="sub-menu">
						<li><a href="matching.jsp">Dash매칭</a></li>
						<li><a href="bestmember.jsp">This Is Me</a></li>
					</ul></li>
			</ul>
			<button class="nav-icon">
				<iconify-icon icon="ph:list-fill"></iconify-icon>
			</button>

		</nav>
		<div class="dim-layer"></div>
	</header>

	<main>
		<nav class="side-bar">
			<h2>매칭</h2>
			<ul class="sb-list">
				<li><a href="matching.jsp">Dash 매칭</a></li>
				<li><a href="bestmember.jsp">This Is Me</a></li>
				<!-- <li><a href="#">이용요금</a></li> -->
			</ul>
		</nav>

		<div id="box"></div>

		<h2 id="title">Dash 매칭</h2>
		<p id="sub-title">가끔 만나요. 우리, 우연히</p>


		<div id="app">
			<!-- Carousel slider -->
			<div class="swiper">
				<div class="swiper-wrapper">
					<%
					for (int i = 0; i <= 6; i++) {
					    String userMetchingQuery = "SELECT ul.*, ud.*, " + "GROUP_CONCAT(DISTINCT h.hobby_name) AS hobbies, "
					            + "GROUP_CONCAT(DISTINCT p.personality_name) AS personalities, "
					            + "GROUP_CONCAT(DISTINCT mv.values_name) AS marriage_values " + "FROM user_list ul "
					            + "LEFT JOIN user_detail ud ON ul.user_uid = ud.user_uid "
					            + "LEFT JOIN user_hobbies uh ON ul.user_uid = uh.user_id "
					            + "LEFT JOIN hobbies h ON uh.hobby_id = h.hobby_id "
					            + "LEFT JOIN user_personality up ON ul.user_uid = up.user_id "
					            + "LEFT JOIN personalities p ON up.personality_id = p.personality_id "
					            + "LEFT JOIN user_marriage_values umv ON ul.user_uid = umv.user_id "
					            + "LEFT JOIN marriage_values mv ON umv.values_id = mv.values_id " + "WHERE ul.user_uid = ? " + "GROUP BY ul.user_uid";
					    try (PreparedStatement preparedStatement = conn.prepareStatement(userMetchingQuery)) {
					        preparedStatement.setString(1, userUidArray[i]);
					        try (ResultSet resultSet = preparedStatement.executeQuery()) {
					            if (resultSet.next()) {
							String photo_url = resultSet.getString("photo_url");
							String imageName = (photo_url != null) ? new File(photo_url).getName() : "Default_image.JPG";
							String user_Uid = resultSet.getString("user_uid");
							String user_name = resultSet.getString("user_name");
							String user_country = resultSet.getString("user_country");
							String user_hobbies = resultSet.getString("hobbies");
							String user_personality = resultSet.getString("personalities");
							String user_mbti = resultSet.getString("user_MBTI");
							String user_introduce = resultSet.getString("user_introduce");

							String user_birth = resultSet.getString("user_birth");
							String birthDateStr = user_birth;
							LocalDate birthDate = LocalDate.parse(birthDateStr, DateTimeFormatter.ISO_DATE);
							LocalDate currentDate = LocalDate.now();
							Period period = Period.between(birthDate, currentDate);
							int userAge = period.getYears();
							

							userUidList.add(user_Uid);


							 String fromUserUid = userUid; // 여기에 현재 로그인한 사용자의 UID를 설정해야 합니다.
				                String toUserUid = user_Uid; // 현재 순회 중인 사용자의 UID
				                String likeCheckQuery = "SELECT * FROM `like` WHERE from_user = ? AND to_user = ?";
				                try (PreparedStatement likeCheckStatement = conn.prepareStatement(likeCheckQuery)) {
				                    likeCheckStatement.setString(1, fromUserUid);
				                    likeCheckStatement.setString(2, toUserUid);
				                    try (ResultSet likeCheckResult = likeCheckStatement.executeQuery()) {
				                        boolean alreadyLiked = likeCheckResult.next();
				%>
				                        <div class="swiper-slide">
						<div class="flip-container">
							<div class="flipper">
								<div class="front">
									<!-- 앞면에 보이는 내용 -->
									<div class="swiper-carousel-animate-opacity">
										<img
											src="<%=request.getContextPath()%>/images/<%=imageName%>"
											alt="<%=user_name%>">
										<!-- <div class="slide-content">
                      <h2>전두엽</h2>
                      <p>20대</p>
                    </div> -->
									</div>
								</div>
								<div class="back">
									<!-- 뒷면에 보이는 내용 -->
									<h2><%=user_name%></h2>
									<p><%=userAge%>세
									</p>
									<p><%=user_country%></p>
									<p>
										관심사 :
										<%=user_hobbies%></p>
									<p>
										성격 :
										<%=user_personality%></p>
									<p><%=user_mbti%></p>
									<p class="introduce"><%=user_introduce%></p>
									<!-- 사용자가 입력한 정보를 보여줄 곳 -->
									<button onclick="openModal('modalId<%=user_Uid%>')"
										class="openModal">상세정보</button>
								</div>
							</div>
						</div>
						
						<form action="../jsp/likeSubmit.jsp" method="post">
							<div class="heart-container" title="Like">
								<input type="checkbox" class="checkbox" id="Give-It-An-Id" value="<%=user_Uid%>" name="toUid" <% if(alreadyLiked) out.print("checked"); %> >
								<div class="svg-container">
									<svg viewBox="0 0 24 24" class="svg-outline"
										xmlns="http://www.w3.org/2000/svg">
                  						<path
											d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
                  						</path>
               						 </svg>
									<svg viewBox="0 0 24 24" class="svg-filled"
										xmlns="http://www.w3.org/2000/svg">
                  						<path
											d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
                 						</path>
                					</svg>
									<svg class="svg-celebrate" width="100" height="100"
										xmlns="http://www.w3.org/2000/svg">
                  						<polygon points="10,10 20,20"></polygon>
                  						<polygon points="10,50 20,50"></polygon>
										<polygon points="20,80 30,70"></polygon>
                  						<polygon points="90,10 80,20"></polygon>
                	  					<polygon points="90,50 80,50"></polygon>
            	      					<polygon points="80,80 70,70"></polygon>
        	        				</svg>
								</div>
							</div>
							<button class="liekSubmit" type="submit">좋아요<br/> 보내기</button>
						</form>
						
					</div>
					
					<%
                    }
                }
					} else {
					// Handle the case where no user is found for the given user UID
					System.out.println("No user found for user UID: " + userUidArray[i]);
					}
					}
					}
					}
					%>







				</div>
			</div>
			<!-- 버튼 -->
			<div class="swiper-button">
				<div id="air2"></div>
				<div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				<button id="show">Reset</button>
			</div>
			<!-- 단추 -->
			<div class="swiper-pagination"></div>




			<%
			for (int i = 0; i <= 6; i++) {
				String userMetchingQuery = "SELECT ul.*, ud.*, " + "GROUP_CONCAT(DISTINCT h.hobby_name) AS hobbies, "
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
				try (PreparedStatement preparedStatement = conn.prepareStatement(userMetchingQuery)) {
					//preparedStatement.setString(1, userGender.equals("0") ? "1" : userGender);
					preparedStatement.setString(1, userUidArray[i]);
					try (ResultSet resultSet = preparedStatement.executeQuery()) {
				// Check if there is a result row
				if (resultSet.next()) {
					String photo_url = resultSet.getString("photo_url");

					String user_Uid = resultSet.getString("user_uid");
					String user_name = resultSet.getString("user_name");
					String user_country = resultSet.getString("user_country");
					String user_hobbies = resultSet.getString("hobbies");
					String user_personality = resultSet.getString("personalities");
					String user_mbti = resultSet.getString("user_MBTI");
					String user_introduce = resultSet.getString("user_introduce");
					String user_height = resultSet.getString("user_height");
					String user_education = resultSet.getString("user_education");
					String user_career = resultSet.getString("user_career");
					String user_body = resultSet.getString("user_body");
					String user_blood = resultSet.getString("user_blood");

					String user_marital = resultSet.getString("user_marital");
					if (user_marital.equals("1")) {
						user_marital = "Yes";
					} else {
						user_marital = "No";
					}

					String user_children = resultSet.getString("user_children");
					if (user_children.equals("1")) {
						user_children = "Yes";
					} else {
						user_children = "No";
					}

					String user_alcohol = resultSet.getString("user_alcohol");
					if (user_alcohol.equals("1")) {
						user_alcohol = "Yes";
					} else {
						user_alcohol = "No";
					}

					String user_smoking = resultSet.getString("user_smoking");
					if (user_smoking.equals("1")) {
						user_smoking = "Yes";
					} else {
						user_smoking = "No";
					}

					String marriage_values = resultSet.getString("marriage_values");

					String user_salary = resultSet.getString("user_salary");
					if (user_salary.equals("-2000")) {
						user_salary = "2000만원 미만";
					} else if (user_salary.equals("-3000")) {
						user_salary = "2천만원 이상 - 3천만원 미만";
					} else if (user_salary.equals("-4000")) {
						user_salary = "3천만원 이상 - 4천만원 미만";
					} else if (user_salary.equals("-5000")) {
						user_salary = "4천만원 이상 - 5천만원 미만";
					} else if (user_salary.equals("-6000")) {
						user_salary = "5천만원 이상 - 6천만원 미만";
					} else if (user_salary.equals("-7000")) {
						user_salary = "6천만원 이상 - 7천만원 미만";
					} else if (user_salary.equals("-8000")) {
						user_salary = "7천만원 이상 - 8천만원 미만";
					} else if (user_salary.equals("-9000")) {
						user_salary = "8천만원 이상 - 9천만원 미만";
					} else if (user_salary.equals("-10000")) {
						user_salary = "9천만원 이상 - 1억 미만";
					} else if (user_salary.equals("-10000-20000")) {
						user_salary = "1억 이상 - 2억 미만";
					} else if (user_salary.equals("-20000-30000")) {
						user_salary = "2억 이상 - 3억 미만";
					} else if (user_salary.equals("-30000-40000")) {
						user_salary = "3억 이상 - 4억 미만";
					} else if (user_salary.equals("-40000-50000")) {
						user_salary = "4억 이상 - 5억 미만";
					} else if (user_salary.equals("50000-")) {
						user_salary = "5억 이상";
					}

					String user_birth = resultSet.getString("user_birth");
					String birthDateStr = userBirth;
					LocalDate birthDate = LocalDate.parse(birthDateStr, DateTimeFormatter.ISO_DATE);
					LocalDate currentDate = LocalDate.now();
					Period period = Period.between(birthDate, currentDate);
					int userAge = period.getYears();
			%>
			<div class="modal" id="modalId<%=user_Uid%>">
				<div class="modal-content">

					<table class="info">
						<tr>
							<td>이름</td>
							<td><%=user_name%></td>
							<td>키</td>
							<td><%=user_height%></td>
						</tr>
						<tr>
							<td>나이</td>
							<td><%=userAge%></td>
							<td>학력</td>
							<td><%=user_education%></td>
						</tr>
						<tr>
							<td>직업</td>
							<td><%=user_career%></td>
							<td>연봉</td>
							<td><%=user_salary%></td>
						</tr>
						<tr>
							<td>체형</td>
							<td><%=user_body%></td>
							<td>혈액형</td>
							<td><%=user_blood%></td>
						</tr>
						<tr>
							<td>결혼여부</td>
							<td><%=user_marital%></td>
							<td>자녀여부</td>
							<td><%=user_children%></td>
						</tr>
						<tr>
							<td>관심사</td>
							<td><%=user_hobbies%></td>
							<td>성격</td>
							<td><%=user_personality%></td>
						</tr>
						<tr>
							<td>음주</td>
							<td><%=user_alcohol%></td>
							<td>흡연</td>
							<td><%=user_smoking%></td>
						</tr>
						<tr>
							<td>결혼가치관</td>
							<td><%=marriage_values%></td>
						</tr>


					</table>
					<span onclick="closeModal('modalId<%=user_Uid%>')" class="close">&times;</span>
				</div>
			</div>
			<%
			} else {
			// Handle the case where no user is found for the given user UID
			System.out.println("No user found for user UID: " + userUidArray[i]);
			}
			}
			}
			}
			%>

			<!-- 리셋 -->
			<div class="background">
				<div class="window">
					<div class="popup">
						<div class="reset-content">
							<p>G등급 및 D등급은 매일 한번 Reset입니다.</p>
							<p>내일 다시 이용 바랍니다.</p>
							<br>
							<p>무제한 Reset을 이용하시려면</p>
							<p>
								A등급, S등급, H등급을 구매하시기 <br>바랍니다.
							</p>
						</div>
						<button id="close">&times;</button>
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



	<!-- Cloudflare Pages Analytics -->
	<script>
		// ----------------userModal-------------------

		// 모달 열기 함수
		function openModal(modalId) {
			var modal = document.getElementById(modalId);
			modal.style.display = "block";
		}
		// 수정모달
		function correctionModal(modalId) {
			var modal = document.getElementById(modalId);
			modal.style.display = "block";
		}

		// 모달 닫기 함수
		function closeModal(modalId) {
			var modal = document.getElementById(modalId);
			modal.style.display = "none";
		}

		document.addEventListener('DOMContentLoaded', function() {
			var form = document.querySelector('form');
			var checkbox = document.querySelector('.checkbox');

			form.addEventListener('submit', function(event) {
				if (!checkbox.checked) {
					event.preventDefault(); // Prevent the form from submitting
					alert('하트를 눌러주세요');
				}
			});
		});
	</script>

	<script
		src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
	<script defer src='https://static.cloudflareinsights.com/beacon.min.js'
		data-cf-beacon='{"token": "07e9b2efafbd4b458690b79234a62148"}'></script>
	<!-- Cloudflare Pages Analytics -->
	<script src="../script/header_script.js"></script>
	<script src="../script/loginSession2.js"></script>
</body>

</html>
<%
} catch (Exception e) {
out.println("Error: " + e.getMessage());
}
%>

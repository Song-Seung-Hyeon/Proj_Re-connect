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
<title>마이페이지 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
	content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
	content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../images/favicon.png" />
<link rel="stylesheet" href="../CSS/Likestatus.css" />
<link rel="stylesheet" href="../CSS/footer_style.css" />
<link rel="stylesheet" href="../CSS/reset.css" />
</head>

<body>
	<!-- 마이페이지 헤더 -->
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
						<!-- 유저이미지, 이름 입력 --></li>
					<li><a href="account.jsp"><span>개인정보 수정</span>
						<iconify-icon icon="la:edit-solid" width="30"></iconify-icon></a></li>
					<li><a href="../jsp/logout.jsp"><span>로그아웃</span>
						<iconify-icon icon="material-symbols:logout" width="25"></iconify-icon></a>
					</li>
				</ul>
			</div>
		</div>
	</header>

	<!-- 마이페이지 사이드메뉴 -->
	<div class="nav">
		<a href="../index.jsp" id="logo2"> <img src="../images/logo.svg"
			alt="logo" />
		</a>
		<ul class="gnb">
			<li class="gnb-menu"><a href="profil.jsp" class="menu-btn">마이프로필</a>
			</li>
			<li class="gnb-menu"><a href="account.jsp" class="menu-btn">개인정보수정</a>
			</li>
			<li class="gnb-menu"><a href="authored_content.jsp"
				class="menu-btn">내가 작성한 글</a></li>
			<li class="gnb-menu"><a href="Likestatus.jsp" class="menu-btn">좋아요
					현황</a></li>
			<li class="gnb-menu"><a href="matching_current.jsp"
				class="menu-btn">매칭현황</a></li>
			<li class="gnb-menu"><a href="member_ship.jsp" class="menu-btn">멤버십</a>
			</li>
			<li class="gnb-menu"><a href="account_withdrawal.jsp"
				class="menu-btn secession">회원탈퇴</a></li>
		</ul>
		<button type="button" class="nav-icon">
			<iconify-icon icon="ph:list-fill"></iconify-icon>
		</button>
	</div>

	<main>
		<div class="container">
			<div class="content">
				<div>
					<h1 class="title">좋아요 리스트</h1>
					<h4 class="sub-title">내가 받은 좋아요 List</h4>
				</div>

				<%
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection conn = DriverManager.getConnection(url, user, password);

					String likeFromQuery = "SELECT * FROM `like` WHERE to_user=?;";
					PreparedStatement preparedStatement = conn.prepareStatement(likeFromQuery);
					preparedStatement.setString(1, userUid);
					ResultSet resultSet = preparedStatement.executeQuery();

					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

					while (resultSet.next()) {
						String fromUserUid = resultSet.getString("from_user");

						// Additional query to get the user details based on user_uid
						String userDetailsQuery = "SELECT * FROM user_list WHERE user_uid=?";
						PreparedStatement userDetailsStatement = conn.prepareStatement(userDetailsQuery);
						userDetailsStatement.setString(1, fromUserUid);
						ResultSet userDetailsResult = userDetailsStatement.executeQuery();

						if (userDetailsResult.next()) {
					String toUserName = userDetailsResult.getString("user_name");
					String toUserUid = userDetailsResult.getString("user_uid");
					String toUserIntroduce = userDetailsResult.getString("user_introduce");
					String photo_url = userDetailsResult.getString("photo_url");
					String imageName1 = (photo_url != null) ? new File(photo_url).getName() : "Default_image.JPG";
				%>
				<form action="../jsp/likeSubmit.jsp" method="post">
					<div class="like_member_list">
						<div class="heart-container" title="Like">
							<input type="checkbox" class="checkbox" id="Give-It-An-Id" name="toUid"
								value="<%=toUserUid%>" checked>
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
						<div class="ranking-list">
							<img class="like_member_img"
								src="<%=request.getContextPath()%>/images/<%=imageName1%>"
								alt="<%=toUserName%>" width="100px" height="100px">
							<div class="ranking">
								<p><%=toUserName%></p>
								<p><%=toUserIntroduce%></p>
							</div>
							<div class="buttonBox">
							<button class="likeSubmit" type="submit">
								좋아요<br /> 보내기
							</button>
							<button class="button" onclick="confirmBtn()">
								<svg viewBox="0 0 448 512" class="svgIcon">
									<path d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"></path>
								</svg>
							</button>
							</div>
						</div>
					</div>
				</form>
				<%
				}

				// Close the result set and statement for user details query
				userDetailsResult.close();
				userDetailsStatement.close();
				}

				// Close resources for the main query
				resultSet.close();
				preparedStatement.close();
				conn.close();
				} catch (Exception e) {
				out.println("Error: " + e.getMessage());
				}
				%>



				<div>
					<h4 class="sub-title fromLiek">내가 누른 좋아요 List</h4>
				</div>

				<%
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection conn = DriverManager.getConnection(url, user, password);

					String likeFromQuery = "SELECT * FROM `like` WHERE from_user=?;";
					PreparedStatement preparedStatement = conn.prepareStatement(likeFromQuery);
					preparedStatement.setString(1, userUid);
					ResultSet resultSet = preparedStatement.executeQuery();

					SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

					while (resultSet.next()) {
						String toUserUid = resultSet.getString("to_user");

						// Additional query to get the user details based on user_uid
						String userDetailsQuery = "SELECT * FROM user_list WHERE user_uid=?";
						PreparedStatement userDetailsStatement = conn.prepareStatement(userDetailsQuery);
						userDetailsStatement.setString(1, toUserUid);
						ResultSet userDetailsResult = userDetailsStatement.executeQuery();

						if (userDetailsResult.next()) {
					String toUserName = userDetailsResult.getString("user_name");
					String toUserIntroduce = userDetailsResult.getString("user_introduce");
					String photo_url = userDetailsResult.getString("photo_url");
					String imageName1 = (photo_url != null) ? new File(photo_url).getName() : "Default_image.JPG";
				%>
				<div class="like_member_list">
					<div class="heart-container" title="Like">
						<input type="checkbox" class="checkbox" id="Give-It-An-Id" checked
							disabled>
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
					<div class="ranking-list">
						<img class="like_member_img"
							src="<%=request.getContextPath()%>/images/<%=imageName1%>"
							alt="<%=toUserName%>" width="100px" height="100px">
						<div class="ranking">
							<p><%=toUserName%></p>
							<p><%=toUserIntroduce%></p>
						</div>
						<button class="button" onclick="confirmBtn()">
							<svg viewBox="0 0 448 512" class="svgIcon">
								<path
									d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"></path></svg>
						</button>
					</div>
				</div>
				<%
				}

				// Close the result set and statement for user details query
				userDetailsResult.close();
				userDetailsStatement.close();
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
	<script>
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
	<script src="../script/Likestatus.js"></script>
	<script
		src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>

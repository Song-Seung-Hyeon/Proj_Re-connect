<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%
request.setCharacterEncoding("utf-8");
%>
<jsp:include page="../jsp/user_list_component.jsp" />


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

String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";
String maritalString = (userMarital != null && userMarital.equals("0")) ? "초혼" : "재혼";
String childrenString = (userChildren != null && userChildren.equals("0")) ? "자녀 무" : "자녀 유";
String alcoholString = (userAlcohol != null && userAlcohol.equals("0")) ? "비음주" : "음주";
String smokingString = (userSmoking != null && userSmoking.equals("0")) ? "비흡연" : "흡연";
%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>채팅 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
	content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
	content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../images/favicon.png" />
<link rel="stylesheet" href="../CSS/chat.css" />
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
						<img src="<%=request.getContextPath()%>/images/<%=imageName%>"
							alt="user_img" />
					</figure>
				</div>
			</button>

			<div class="layer_member">
				<ul>
					<li><img
						src="<%=request.getContextPath()%>/images/<%=imageName%>"
						alt="user_img" /> <span><%=userName%></span> <!-- 유저이미지, 이름 입력 -->
					</li>
					<li><a href="account.jsp"> <span>개인정보 수정</span> <iconify-icon
								icon="la:edit-solid" width="30"></iconify-icon></a></li>
					<li><a href="../jsp/logout.jsp"> <span>로그아웃</span> <iconify-icon
								icon="material-symbols:logout" width="25"></iconify-icon></a></li>
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
			<div class="container_main">
				<div class="content">
					<h1>채팅</h1>
					<div class="message-container">
						<div class="nav-bar">
							<a class ="chat_header">채팅</a>
						</div>
						<div class="messages-area" id="chatBox"></div>
						<div class="sender-area">
							<div class="input-place">
								<input placeholder="Send a message." class="send-input"
									type="text" id="messageInput">
							</div>
							<div class="send" onclick="sendMessage()">
								<svg class="send-icon" version="1.1" id="Capa_1"
									xmlns="http://www.w3.org/2000/svg"
									xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
									viewBox="0 0 512 512"
									style="enable-background: new 0 0 512 512;"
									xml:space="preserve">
									<g>
									<g>
									<path fill="#FFFFFF"
										d="M481.508,210.336L68.414,38.926c-17.403-7.222-37.064-4.045-51.309,8.287C2.86,59.547-3.098,78.551,1.558,96.808 L38.327,241h180.026c8.284,0,15.001,6.716,15.001,15.001c0,8.284-6.716,15.001-15.001,15.001H38.327L1.558,415.193 c-4.656,18.258,1.301,37.262,15.547,49.595c14.274,12.357,33.937,15.495,51.31,8.287l413.094-171.409 C500.317,293.862,512,276.364,512,256.001C512,235.638,500.317,218.139,481.508,210.336z"></path></g></g></svg>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script src="../script/chat.js"></script>
</body>
</html>

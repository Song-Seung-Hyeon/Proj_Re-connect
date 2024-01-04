<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%request.setCharacterEncoding("utf-8");%>
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

%>



<!DOCTYPE html>
<html lang="ko">

<head>
	<title>마이페이지 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/account_manager.css" />
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
					<li>
						<img src="<%= request.getContextPath() %>/images/<%= imageName %>" alt="user_img" /><span><%=userName %></span>
					</li>
					<li>
						<a href="account_manager.jsp"><span>개인정보 수정</span><iconify-icon icon="la:edit-solid"
								width="30"></iconify-icon></a>
					</li>
					<li>
					<li><a href="../jsp/logout.jsp"><span>로그아웃</span>
							<iconify-icon icon="material-symbols:logout" width="25"></iconify-icon></a>
					</li>
				</ul>
			</div>
		</div>
	</header>
  <div class="nav">
    <a href="../index.jsp" id="logo2">
      <img src="../images/logo.svg" alt="logo" />
    </a>
    <ul class="gnb">
      <li class="gnb-menu">
        <a href="account_manager.jsp" class="menu-btn">마이페이지</a>
      </li>
      <li class="gnb-menu">
        <a href="post_management.jsp" class="menu-btn">게시물 관리</a>
      </li>
      <li class="gnb-menu">
        <a href="user_management.jsp" class="menu-btn">회원관리</a>
      </li>
      <li class="gnb-menu">
        <a href="user_estimate_manager.jsp" class="menu-btn">상담예약 확인</a>
      </li>
      <li class="gnb-menu">
        <a href="matching_management.jsp" class="menu-btn">DASH 매칭</a>
      </li>
    </ul>
    <button type="button" class="nav-icon">
      <iconify-icon icon="ph:list-fill"></iconify-icon>
    </button>
  </div>
	<main>
		<div class="container">
			<div class="container_main">
				<div class="content">
					<h1>개인정보 수정</h1>
					<div class="privacy_update">
						<form action="accountManagerUpload" method="post" id="privacy_form" enctype="multipart/form-data">
							<!-- 프로필 사진 업로드 섹션 -->
							<div class="photo_wrap">
								<span class="photo" id="myhome_profile_photo">
									<img src="<%= request.getContextPath() %>/images/<%= imageName %>" alt="user_img" />
								</span>
								<span class="photo_border"></span>
								<button type="button" class="btn_photo" aria-label="프로필 편집/삭제" aria-haspopup="menu"
									onclick="toggleEditMenu()">
									&#9776;
								</button>
								<div class="photo_edit_btn" id="edit_menu">
									<input type="file" id="profile_picture_input" accept="image/*"
										style="display: none" name="manager_image" />
									<label for="profile_picture_input"><span>프로필 사진 업로드</span></label>
									<button type="button" id="btnPhotoDelete" onclick="deleteProfilePhoto()">
										<span>프로필 삭제</span>
									</button>
								</div>
							</div>
							<!-- 기본 정보 섹션 -->
							<div class="privacy_info" id="basic_info">
								<!-- 내용을 여기에 추가하세요. -->
								<div class="info-id">
									<input type="text" name="user_id" value="<%=userId %>" maxlength="10" required
										disabled />
								</div>

								<div class="info-name">
									<input type="text" name="user_npassword" value="**********" placeholder="비밀번호"
										maxlength="10" required />
								</div>

								<div class="info-name">
									<input type="text" name="user_name" placeholder="이름" maxlength="10" required value="<%=userName %>" />
								</div>

								<div class="info-age">
									<input type="text" name="user_age" placeholder="생년월일" maxlength="8" required value="<%=userBirth %>"/>
								</div>

								<div class="info-mail">
									<input type="text" name="user_mail" placeholder="E-mail" required value="<%=userEmail %>"/>
								</div>

								<div class="info-phone">
									<input type="text" name="user_phone" id="user_phone" placeholder="연락처"
										maxlength="13" required oninput="autoHyphen2(this)" value="<%=userPhone %>"/>
								</div>
<!-- 
								<div class="info-emerPhone">
									<input type="text" name="user_emerPhone" id="user_emerPhone" placeholder="비상연락처"
										maxlength="13" oninput="autoHyphen2(this)" required />
								</div>
 -->
								<div class="about_me">
									<textarea name="about_me_text" id="about_me_text" placeholder="자기소개를 통해 자신을 표현해보세요."
										required ><%=userIntroduce %></textarea>
								</div>
								<!-- 
                <button type="button" id="next_page" onclick="showPage('detailed_info')">다음</button> -->
								<button type="submit" id="submit-privacy">저장하기</button>
							</div>

							<!-- 상세 정보 섹션 -->
							<div class="privacy_info" id="detailed_info" style="display: none;">
								<!-- 내용을 여기에 추가하세요. -->
								<h2 class="privacy_info_marriage privacy_info_header">자기소개</h2>
								<!-- <button type="button" id="prev_page3" onclick="showPage('additional_info2')">이전</button> -->
								<button type="button" id="prev_page" onclick="showPage('basic_info')">이전</button>
								<button type="submit" id="submit-privacy">저장하기</button>
								<!-- <button type="button" id="next_page2" onclick="showPage('additional_info1')">다음</button> -->
							</div>
							<!-- 추가 정보 페이지 1 -->

						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- 아래 footer 하단 고정 -->
	<footer class="footer">
		<div class="footer-content">
			<h3>(주)Re:connect</h3>
			<span>대표 : Recycle</span>
			<span>사업자등록번호 : 999-99-99999</span>
			<span>주소 : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span>
			<span>Tel.042-222-2402</span>
			<ul class="footer-socials">
				<li>
					<a href="index_logout.jsp"><img src="../images/ico_image.svg" alt="ico_image" /></a>
					<!-- 임시로 로그아웃 넣어 놨음 -->
				</li>
				<li>
					<a href="account_manager.jsp"><img src="../images/ico_instagram.svg" alt="ico_instagram" /></a>
					<!-- 임시로 커플매니저페이지 넣어 놨음 -->
				</li>
				<li>
					<a href="admin_manager_management.jsp"><img src="../images/ico_youtube.svg"
							alt="ico_youtube" /></a>
					<!-- 임시로 관리자페이지 넣어 놨음 -->
				</li>
			</ul>
			<div class="footer-menu">
				<p>
					copyright &copy;2023 by
					<a href="../index.jsp">Re:connect.</a>
					All pictures cannot be copied without permission.
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
	<script src="../script/account_manager.js"></script>
	<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
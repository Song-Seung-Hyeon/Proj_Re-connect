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

String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";
String maritalString = (userMarital != null && userMarital.equals("0")) ? "초혼" : "재혼";
String childrenString = (userChildren != null && userChildren.equals("0")) ? "자녀 무" : "자녀 유";
String alcoholString = (userAlcohol != null && userAlcohol.equals("0")) ? "비음주" : "음주";
String smokingString = (userSmoking != null && userSmoking.equals("0")) ? "비흡연" : "흡연";

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
		<link rel="stylesheet" href="../CSS/account.css" />
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
							<img src="<%=request.getContextPath()%>/images/<%=imageName%>" alt="user_img" />
						</figure>
					</div>
				</button>

				<div class="layer_member">
					<ul>
						<li><img src="<%=request.getContextPath()%>/images/<%=imageName%>" alt="user_img" />
							<span><%=userName %></span>
							<!-- 유저이미지, 이름 입력 -->
						</li>
						<li><a href="account.jsp">
								<span>개인정보 수정</span> <iconify-icon icon="la:edit-solid" width="30"></iconify-icon></a></li>
						<li><a href="../jsp/logout.jsp">
								<span>로그아웃</span> <iconify-icon icon="material-symbols:logout" width="25"></iconify-icon></a></li>
					</ul>
				</div>
			</div>
		</header>

		<!-- 마이페이지 사이드메뉴 -->
		<div class="nav">
			<a href="../index.jsp" id="logo2"> <img src="../images/logo.svg" alt="logo" />
			</a>
			<ul class="gnb">
				<li class="gnb-menu"><a href="profil.jsp" class="menu-btn">마이프로필</a> </li>
				<li class="gnb-menu"><a href="account.jsp" class="menu-btn">개인정보수정</a> </li>
				<li class="gnb-menu"><a href="authored_content.jsp" class="menu-btn">내가 작성한 글</a></li>
				<li class="gnb-menu"><a href="Likestatus.jsp" class="menu-btn">좋아요 현황</a></li>
				<li class="gnb-menu"><a href="matching_current.jsp" class="menu-btn">매칭현황</a></li>
				<li class="gnb-menu"><a href="member_ship.jsp" class="menu-btn">멤버십</a> </li>
				<li class="gnb-menu"><a href="account_withdrawal.jsp" class="menu-btn secession">회원탈퇴</a></li>
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
							<form action="accountUpload" method="post" id="privacy_form" enctype="multipart/form-data">
								<!-- 프로필 사진 업로드 섹션 -->
								<div class="photo_wrap">
									<span class="photo" id="myhome_profile_photo"> <img alt="" src="<%= request.getContextPath() %>/images/<%= imageName %>" />
									</span> <span class="photo_border"></span>
									<button type="button" class="btn_photo" aria-label="프로필 편집/삭제" aria-haspopup="menu"
										onclick="toggleEditMenu()">
										&#9776;</button>
									<div class="photo_edit_btn" id="edit_menu">

										<input type="file" id="profile_picture_input" accept="image/*" style="display: none" name="user_image"/>

										<label for="profile_picture_input">

											<span>프로필 사진 업로드</span>

										</label>
										<button type="button" id="btnPhotoDelete" onclick="deleteProfilePhoto()">

											<span>프로필 삭제</span>
										</button>
									</div>
								</div>
								<!-- 기본 정보 섹션 -->
								<div class="privacy_info" id="basic_info">
									<!-- 내용을 여기에 추가하세요. -->
									<div class="name-sex-box">
										<div class="info-name">

											<input type="text" name="user_name" placeholder="* 이름" maxlength="10" required value="<%=userName%>"/>
										</div>
										<div class="info-sex">
										<% 
										if(userGender.equals("1")){
											%>
											<input type="radio" id="male" name="user_gender" value="0" required/>
											<label for="male" >남자

											</label>
											<input type="radio" id="female" name="user_gender" value="1" required checked/>
											<label for="female">여자 </label>
											<%
										} else {
											%>
											<input type="radio" id="male" name="user_gender" value="0" required checked/>
											<label for="male">남자

											</label>
											<input type="radio" id="female" name="user_gender" value="1" required/>
											<label for="female">여자</label>
											<%
										}										
										%>
										
										

										</div>
									</div>
									<div class="info-age">

										<input type="text" name="user_birth" id="user_birth" placeholder="* 생년월일" maxlength="10" required
											oninput="autoHyphen_birth(this)" value="<%=userBirth %>"/>
									</div>
									<div class="info-phone">

										<input type="text" name="user_phone" id="user_phone" placeholder="* 연락처" maxlength="13" required
											oninput="autoHyphen2(this)" value="<%=userPhone %>"/>
									</div>
									<div class="country-education-box">
										<div class="info-country">

											<div class="info-education">
												<select class="education" name="user_education" onchange="changeSelectFontColor(this)" required>
													<option value="" disabled>* 학력</option>
													<option value="<%=userEducation %>" selected disabled><%=userEducation %></option>
													<option value="-----" disabled>
														--------------------------------------------</option>
													<option value="대학교 중퇴">대학교중퇴</option>
													<option value="대학교 재학">대학교재학</option>
													<option value="대학원 졸업">대학원졸업</option>
													<option value="대학(2,3년제)졸업">대학(2,3년제)졸업</option>
													<option value="대학(2,3년제)중퇴">대학(2,3년제)중퇴</option>
													<option value="고등학교 졸업">고등학교 졸업</option>
													<option value="기타">기타</option>
												</select>		
											</div>
											<div class="info-occupation">

												<input type="text" name="user_occupation" placeholder="*직업" required value="${userCareer != null ? userCareer : ''}"/>
											</div>

											<select class="country" name="user_country" onchange="changeSelectFontColor(this)" >
												<option value="" disabled >거주지역</option>
												<option id="checkd" value="<%=userCountry %>" selected disabled oninput="autoClick()" ><%=userCountry %></option>
												
												<option value="-----" disabled>
													--------------------------------------------</option>
												<option value="서울">서울</option>
												<option value="수원/화성">수원/화성</option>
												<option value="인천">인천</option>
												<option value="천안/당진">천안/당진</option>
												<option value="청주">청주</option>
												<option value="대전">대전</option>
												<option value="전주">전주</option>
												<option value="광주">광주</option>
												<option value="대구">대구</option>
												<option value="부산">부산</option>
												<option value="울산">울산</option>
												<option value="창원/마산">창원/마산</option>
												<option value="경기">경기</option>
												<option value="평택/오산">평택/오산</option>
												<option value="세종">세종</option>
												<option value="충북">충북</option>
												<option value="충남">충남</option>
												<option value="아산">아산</option>
												<option value="전북">전북</option>
												<option value="전남">전남</option>
												<option value="경북">경북</option>
												<option value="강원">강원</option>
												<option value="경남">경남</option>
												<option value="제주">제주</option>
											</select>
										</div>
									</div>

									<div class="info-hight">

										<input type="text" name="user_height" id="user_hight" placeholder="키" maxlength="5" value="${userHeight != null ? userHeight : ''}"/>
									</div>
									
									<div class="info-body">
										<select class="body_type" name="user_body" onchange="changeSelectFontColor(this)">
											<option value="" disabled selected>체형</option>
											<option value="${userBody != null ? userBody : ''}" selected disabled>${userBody != null ? userBody : '체형을 선택하세요.'}</option>
											<option value="-----" disabled>
												--------------------------------------------</option>
											<option value="매우 슬림한 체형">매우 슬림한 체형</option>
											<option value="얇고 긴 체형">얇고 긴 체형</option>
											<option value="가느다란 체형">가느다란 체형</option>
											<option value="부드러운 곡선적인 체형">부드러운 곡선적인 체형</option>
											<option value="보통 체형">보통 체형</option>
											<option value="평균적인 체형">평균적인 체형</option>
											<option value="중간 정도의 근육 발달">중간 정도의 근육 발달</option>
											<option value="탄탄하고 근육질인 체형">탄탄하고 근육질인 체형</option>
											<option value="근육 발달이 두드러진 체형">근육 발달이 두드러진 체형</option>
											<option value="통통한 체형">통통한 체형</option>
											<option value="살집이 있는 체형">살집이 있는 체형</option>
											<option value="귀여운 느낌을 주는 풍만한 체형">귀여운 느낌을 주는 풍만한 체형</option>
											<option value="부피감 있는 체형">부피감 있는 체형</option>
											<option value="몸의 여러 부위에 균형 있는 살">몸의 여러 부위에 균형 있는 살</option>
										</select>
									</div>
									
									<div class="info-annual-income">
										<select class="annual_income" name="user_annual_income" onchange="changeSelectFontColor(this)">
											<option value="" disabled>연봉</option>
											<option value="${userSalary != null ? userBody : ''}" disabled selected>
											<%
											if(userSalary != null){
												if(userSalary.equals("-2000")){%>2천만원 미만<%}
												else if(userSalary.equals("-3000")){%>2천만원 이상 - 3천만원 미만<%}
												else if(userSalary.equals("-4000")){%>3천만원 이상 - 4천만원 미만<%}
												else if(userSalary.equals("-5000")){%>4천만원 이상 - 5천만원 미만<%}
												else if(userSalary.equals("-6000")){%>5천만원 이상 - 6천만원 미만<%}
												else if(userSalary.equals("-7000")){%>6천만원 이상 - 7천만원 미만<%}
												else if(userSalary.equals("-8000")){%>7천만원 이상 - 8천만원 미만<%}
												else if(userSalary.equals("-9000")){%>8천만원 이상 - 9천만원 미만<%}
												else if(userSalary.equals("-10000")){%>9천만원 이상 - 1억 미만<%}
												else if(userSalary.equals("-10000-20000")){%>1억 이상 - 2억 미만<%}
												else if(userSalary.equals("-20000-30000")){%>2억 이상 - 3억 미만<%}
												else if(userSalary.equals("-30000-40000")){%>3억 이상 - 4억 미만<%}
												else if(userSalary.equals("-40000-50000")){%>4억 이상 - 5억 미만<%}
												else if(userSalary.equals("-50000")){%>5억 이상<%}
											} else {out.println("연봉을 입력하세요.");}
											%>
											</option>
											
											<option value="-----" disabled>
												--------------------------------------------</option>
											<option value="-2000">2천만원 미만</option>
											<option value="-3000">2천만원 이상 - 3천만원 미만</option>
											<option value="-4000">3천만원 이상 - 4천만원 미만</option>
											<option value="-5000">4천만원 이상 - 5천만원 미만</option>
											<option value="-6000">5천만원 이상 - 6천만원 미만</option>
											<option value="-7000">6천만원 이상 - 7천만원 미만</option>
											<option value="-8000">7천만원 이상 - 8천만원 미만</option>
											<option value="-9000">8천만원 이상 - 9천만원 미만</option>
											<option value="-10000">9천만원 이상 - 1억 미만</option>
											<option value="-10000-20000">1억 이상 - 2억 미만</option>
											<option value="-20000-30000">2억 이상 - 3억 미만</option>
											<option value="-30000-40000">3억 이상 - 4억 미만</option>
											<option value="-40000-50000">4억 이상 - 5억 미만</option>
											<option value="50000-">5억 이상</option>
										</select>
									</div>
									<div class="info-marital-status">

										<% 
										if(userMarital != null){
											if(userMarital.equals("1")){
											%>
											<input type="radio" id="first_marriage" name="marital_status" value="0" />
											<label for="first_marriage">초혼</label>	
		
											<input type="radio" id="remarriage" name="marital_status" value="1" checked />
											<label for="remarriage">재혼</label>
											<%
											} else {
											%>
											<input type="radio" id="first_marriage" name="marital_status" value="0" checked/>
											<label for="first_marriage">초혼</label>	
		
											<input type="radio" id="remarriage" name="marital_status" value="1" />
											<label for="remarriage">재혼</label>
											<%
											}										
										} else {
											%>
											<input type="radio" id="first_marriage" name="marital_status" value="0"/>
											<label for="first_marriage">초혼</label>	
		
											<input type="radio" id="remarriage" name="marital_status" value="1" />
											<label for="remarriage">재혼</label>
											<%
										}
										%>	

									</div>
									<div class="info-children">
									<% 
										if(userChildren != null){
											if(userChildren.equals("1")){
											%>
											<input type="radio" id="has_children" name="children" value="1" checked/>
											<label for="has_children">자녀있음</label>
											
											<input type="radio" id="no_children" name="children" value="0" />
											<label for="no_children">자녀없음</label>
											<%
											} else {
											%>
											<input type="radio" id="has_children" name="children" value="1"/>
											<label for="has_children">자녀있음</label>
											
											<input type="radio" id="no_children" name="children" value="0" checked/>
											<label for="no_children">자녀없음</label>
											<%
											}										
										} else {
											%>
											<input type="radio" id="has_children" name="children" value="1"/>
											<label for="has_children">자녀있음</label>
											
											<input type="radio" id="no_children" name="children" value="0" />
											<label for="no_children">자녀없음</label>
											<%
										}
										%>	
									
									</div>
									<div class="info-child-count" id="child_count_container" style="display: none">
										<select id="child_count" name="child_count">
										<%
										if(userChildrenCount != null){
											if(userChildrenCount.equals("0")){%>
											<option value="1">1명</option>
											<option value="2">2명</option>
											<option value="3">3명</option>
											<option value="4">4명 이상</option>
											<%}
											if(userChildrenCount.equals("1")){%>
											<option value="1" selected>1명</option>
											<option value="2">2명</option>
											<option value="3">3명</option>
											<option value="4">4명 이상</option>
											<%}
											else if(userChildrenCount.equals("2")){%>
											<option value="1">1명</option>
											<option value="2" selected>2명</option>
											<option value="3">3명</option>
											<option value="4">4명 이상</option>
											<%}
											else if(userChildrenCount.equals("3")){%>
											<option value="1">1명</option>
											<option value="2">2명</option>
											<option value="3" selected>3명</option>
											<option value="4">4명 이상</option>
											<%}
											else if(userChildrenCount.equals("4")){%>
											<option value="1">1명</option>
											<option value="2">2명</option>
											<option value="3">3명</option>
											<option value="4" selected>4명 이상</option>
											<%}
										}else{
										%>
											<option value="1">1명</option>
											<option value="2">2명</option>
											<option value="3">3명</option>
											<option value="4">4명 이상</option>
										<%}
										%>
										</select>
									</div>
									<button type="button" id="next_page" onclick="showPage('detailed_info')">다음</button>
								</div>

								<!-- 상세 정보 섹션 -->
								<div class="privacy_info" id="detailed_info" style="display: none;">
									<!-- 내용을 여기에 추가하세요. -->
									<h2 class="privacy_info_header">관심사</h2>
									<span id="selectionLimit">최대 3개 선택가능 (3/3)</span>
									<div class="info-hobby">

										<label>
											<input type="checkbox" name="hobby" value="1" <% if(userHobbies != null && userHobbies.contains("음악")) { %>checked<% } %> >
											<span>음악</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="2" <% if(userHobbies != null && userHobbies.contains("영화")) { %>checked<% } %> >
											<span>영화</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="3" <% if(userHobbies != null && userHobbies.contains("스포츠")) { %>checked<% } %> >
											<span>스포츠</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="4" <% if(userHobbies != null && userHobbies.contains("요리")) { %>checked<% } %> >
											<span>요리</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="5" <% if(userHobbies != null && userHobbies.contains("여행")) { %>checked<% } %> >
											<span>여행</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="6" <% if(userHobbies != null && userHobbies.contains("독서")) { %>checked<% } %> >
											<span>독서</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="7" <% if(userHobbies != null && userHobbies.contains("게임")) { %>checked<% } %> >
											<span>게임</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="8" <% if(userHobbies != null && userHobbies.contains("미술")) { %>checked<% } %> >
											<span>미술</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="9" <% if(userHobbies != null && userHobbies.contains("피트니스")) { %>checked<% } %> >
											<span>피트니스</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="10" <% if(userHobbies != null && userHobbies.contains("수영")) { %>checked<% } %> >
											<span>수영</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="11" <% if(userHobbies != null && userHobbies.contains("사진촬영")) { %>checked<% } %> >
											<span>사진 촬영</span>
										</label>
										<label>
											<input type="checkbox" name="hobby" value="12" <% if(userHobbies != null && userHobbies.contains("댄스")) { %>checked<% } %> >
											<span>댄스</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="13" <% if(userHobbies != null && userHobbies.contains("캠핑")) { %>checked<% } %> >
											<span>캠핑</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="14" <% if(userHobbies != null && userHobbies.contains("DIY")) { %>checked<% } %> >
											<span>DIY</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="15" <% if(userHobbies != null && userHobbies.contains("자전거 타기")) { %>checked<% } %> >
											<span>자전거 타기</span>
										</label>
										<label>
											<input type="checkbox" name="hobby" value="16" <% if(userHobbies != null && userHobbies.contains("컴퓨터 프로그래밍")) { %>checked<% } %> >
											<span>컴퓨터 프로그래밍</span>
										</label>
										<label>
											<input type="checkbox" name="hobby" value="17" <% if(userHobbies != null && userHobbies.contains("웹 디자인")) { %>checked<% } %> >
											<span>웹 디자인</span>
										</label>
										<label>
											<input type="checkbox" name="hobby" value="18" <% if(userHobbies != null && userHobbies.contains("정원 가꾸기")) { %>checked<% } %> >
											<span>정원 가꾸기</span>
										</label>
										<label>
											<input type="checkbox" name="hobby" value="19" <% if(userHobbies != null && userHobbies.contains("라이프로그")) { %>checked<% } %> >
											<span>라이프로그</span>
										</label>

										<label>
											<input type="checkbox" name="hobby" value="20" <% if(userHobbies != null && userHobbies.contains("마이크로 모빌리티")) { %>checked<% } %> >
											<span>마이크로 모빌리티</span>
										</label>
										<label>
											<input type="checkbox" name="hobby" value="21" <% if(userHobbies != null && userHobbies.contains("클라우드 컴퓨팅")) { %>checked<% } %> >
											<span>클라우드 컴퓨팅</span>
										</label>
										<label>
											<input type="checkbox" name="hobby" value="22" <% if(userHobbies != null && userHobbies.contains("요가")) { %>checked<% } %> >
											<span>요가</span>
										</label>
									</div>
									<h2 class="privacy_info_header">혈액형</h2>
									<div class="info-blood-type">

										<label>
											<input type="radio" name="bloodType" value="A" <% if(userBlood != null && userBlood.contains("A")) { %>checked<% } %>>
											<span>A형</span>
										</label>

										<label>
											<input type="radio" name="bloodType" value="B" <% if(userBlood != null && userBlood.contains("B")) { %>checked<% } %>>
											<span>B형</span>
										</label>

										<label>
											<input type="radio" name="bloodType" value="O" <% if(userBlood != null && userBlood.contains("C")) { %>checked<% } %>>
											<span>O형</span>
										</label>

										<label>
											<input type="radio" name="bloodType" value="AB" <% if(userBlood != null && userBlood.contains("AB")) { %>checked<% } %>>
											<span>AB형</span>
										</label>
									</div>
									<div class="privacy_info-mbti">

										<input type="text" name="user_mbti" placeholder="MBTI" maxlength="4" value="<%=userMBTI %>">
									</div>
									<button type="button" id="prev_page" onclick="showPage('basic_info')">이전</button>
									<button type="button" id="next_page2" onclick="showPage('additional_info1')">다음</button>
								</div>
								<!-- 추가 정보 페이지 1 -->
								<div class="privacy_info" id="additional_info1" style="display: none;">
									<h2 class="privacy_info_header">종교</h2>
									<div class="privacy_info_religion">

										<label>
											<input type="radio" name="religion" value="기독교" <% if(userReligion != null && userReligion.contains("기독교")) { %>checked<% } %>>
											<span>기독교</span>
										</label>

										<label>
											<input type="radio" name="religion" value="천주교" <% if(userReligion != null && userReligion.contains("천주교")) { %>checked<% } %>>
											<span>천주교</span>
										</label>

										<label>
											<input type="radio" name="religion" value="불교" <% if(userReligion != null && userReligion.contains("불교")) { %>checked<% } %>>
											<span>불교</span>
										</label>

										<label>
											<input type="radio" name="religion" value="원불교" <% if(userReligion != null && userReligion.contains("원불교")) { %>checked<% } %>>
											<span>원불교</span>
										</label>

										<label>
											<input type="radio" name="religion" value="무교" <% if(userReligion != null && userReligion.contains("무교")) { %>checked<% } %>>
											<span>무교</span>
										</label>
									</div>
									<div class="info-alcohol">

										<input type="radio" id="has_drinking" name="alcohol" value="1" <% if(userAlcohol != null && userAlcohol.contains("1")) { %>checked<% } %>/>
										<label for="has_drinking">음주

										</label>
										<input type="radio" id="non_drinking" name="alcohol" value="0" <% if(userAlcohol != null && userAlcohol.contains("0")) { %>checked<% } %>/>
										<label for="non_drinking">비음주

										</label>
									</div>
									<div class="info-alcohol-count" id="alcohol_count_container" style="display: none">
										<select id="alcohol_count" name="alcohol_count">
										
										<%
										if(userAlcoholCount != null){
											if(userAlcoholCount.equals("0")){%>
											<option value="1">1병</option>
											<option value="2">2병</option>
											<option value="3">3병</option>
											<option value="4">4병 이상</option>
											<%}
											if(userAlcoholCount.equals("1")){%>
											<option value="1" selected>1병</option>
											<option value="2">2병</option>
											<option value="3">3병</option>
											<option value="4">4병 이상</option>
											<%}
											else if(userAlcoholCount.equals("2")){%>
											<option value="1">1병</option>
											<option value="2" selected>2병</option>
											<option value="3">3병</option>
											<option value="4">4병 이상</option>
											<%}
											else if(userAlcoholCount.equals("3")){%>
											<option value="1">1병</option>
											<option value="2">2병</option>
											<option value="3" selected>3병</option>
											<option value="4">4병 이상</option>
											<%}
											else if(userAlcoholCount.equals("4")){%>
											<option value="1">1병</option>
											<option value="2">2병</option>
											<option value="3">3병</option>
											<option value="4" selected>4병 이상</option>
											<%}
										}else{
										%>
											<option value="1">1병</option>
											<option value="2">2병</option>
											<option value="3">3병</option>
											<option value="4">4병 이상</option>
										<%}
										%>
										
										</select>
									</div>
									<div class="info-smoking">

										<input type="radio" id="smoking" name="smoking" value="1" <% if(userSmoking != null && userSmoking.contains("1")) { %>checked<% } %>/>
										<label for="smoking">흡연

										</label>
										<input type="radio" id="non-smoking" name="smoking" value="0" <% if(userSmoking != null && userSmoking.contains("0")) { %>checked<% } %>/>
										<label for="non-smoking">비흡연

										</label>
									</div>
									<h2 class="privacy_info_personality privacy_info_header">성격</h2>
									<span id="personalitySelectionLimit">최대 3개 선택가능 (3/3)</span>
									<div class="info-personality">

										<label>
											<input type="checkbox" name="personality" value="1" <% if(userPersonality != null && userPersonality.contains("외향적인")) { %>checked<% } %>>
											<span>외향적인</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="2" <% if(userPersonality != null && userPersonality.contains("내성적인")) { %>checked<% } %>>
											<span>내성적인</span>
										</label>

										<label>
											<input type="checkbox" name="personality" value="3" <% if(userPersonality != null && userPersonality.contains("친절한")) { %>checked<% } %>>
											<span>친절한</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="4" <% if(userPersonality != null && userPersonality.contains("창의적인")) { %>checked<% } %>>
											<span>창의적인</span>
										</label>

										<label>
											<input type="checkbox" name="personality" value="5" <% if(userPersonality != null && userPersonality.contains("논리적인")) { %>checked<% } %>>
											<span>논리적인</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="6" <% if(userPersonality != null && userPersonality.contains("감성적인")) { %>checked<% } %>>
											<span>감성적인</span>
										</label>

										<label>
											<input type="checkbox" name="personality" value="7" <% if(userPersonality != null && userPersonality.contains("적극적인")) { %>checked<% } %>>
											<span>적극적인</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="8" <% if(userPersonality != null && userPersonality.contains("수용적인")) { %>checked<% } %>>
											<span>수용적인</span>
										</label>

										<label>
											<input type="checkbox" name="personality" value="9" <% if(userPersonality != null && userPersonality.contains("활발한")) { %>checked<% } %>>
											<span>활발한</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="10" <% if(userPersonality != null && userPersonality.contains("차분한")) { %>checked<% } %>>
											<span>차분한</span>
										</label>

										<label>
											<input type="checkbox" name="personality" value="11" <% if(userPersonality != null && userPersonality.contains("모험적인")) { %>checked<% } %>>
											<span>모험적인</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="12" <% if(userPersonality != null && userPersonality.contains("안정적인")) { %>checked<% } %>>
											<span>안정적인</span>
										</label>

										<label>
											<input type="checkbox" name="personality" value="13" <% if(userPersonality != null && userPersonality.contains("자유로운")) { %>checked<% } %>>
											<span>자유로운</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="14" <% if(userPersonality != null && userPersonality.contains("책임감 있는")) { %>checked<% } %>>
											<span>책임감 있는</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="15" <% if(userPersonality != null && userPersonality.contains("협동적인")) { %>checked<% } %>>
											<span>협동적인</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="16" <% if(userPersonality != null && userPersonality.contains("관습을 따르는")) { %>checked<% } %>>
											<span>관습을 따르는</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="17" <% if(userPersonality != null && userPersonality.contains("독립적인")) { %>checked<% } %>>
											<span>독립적인</span>
										</label>
										<label>
											<input type="checkbox" name="personality" value="18" <% if(userPersonality != null && userPersonality.contains("낙천적인")) { %>checked<% } %>>
											<span>낙천적인</span>
										</label>
									</div>
									<button type="button" id="prev_page2" onclick="showPage('detailed_info')">이전</button>
									<button type="button" id="next_page3" onclick="showPage('additional_info2')">다음</button>
								</div>
								<div class="privacy_info" id="additional_info2" style="display: none;">
									<h2 class="privacy_info_marriage privacy_info_header">결혼가치관</h2>
									<span id="marriageSelectionLimit">최대 5개 선택가능 (5/5)</span>
									<div class="info_marriage">

										<label>
											<input type="checkbox" name="marriage" value="1" <% if(userMarriageValues != null && userMarriageValues.contains("안정성")) { %>checked<% } %>>

											<span>안정성</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="2" <% if(userMarriageValues != null && userMarriageValues.contains("자유로움")) { %>checked<% } %>>

											<span>자유로움</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="3" <% if(userMarriageValues != null && userMarriageValues.contains("열정")) { %>checked<% } %>>

											<span>열정</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="4"  <% if(userMarriageValues != null && userMarriageValues.contains("성장과")) { %>checked<% } %>>

											<span>성장과 발전</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="5"  <% if(userMarriageValues != null && userMarriageValues.contains("존중")) { %>checked<% } %>>

											<span>존중</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="6" <% if(userMarriageValues != null && userMarriageValues.contains("도전")) { %>checked<% } %>>

											<span>도전</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="7" <% if(userMarriageValues != null && userMarriageValues.contains("성실함")) { %>checked<% } %>>

											<span>성실함</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="8" <% if(userMarriageValues != null && userMarriageValues.contains("창의성")) { %>checked<% } %>>

											<span>창의성</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="9" <% if(userMarriageValues != null && userMarriageValues.contains("소통")) { %>checked<% } %>>

											<span>소통</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="10" <% if(userMarriageValues != null && userMarriageValues.contains("공감능력")) { %>checked<% } %>>
											<span>공감능력</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="11" <% if(userMarriageValues != null && userMarriageValues.contains("자기계발")) { %>checked<% } %>>
											<span>자기계발</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="12" <% if(userMarriageValues != null && userMarriageValues.contains("책임감")) { %>checked<% } %>>
											<span>책임감</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="13" <% if(userMarriageValues != null && userMarriageValues.contains("유머감각")) { %>checked<% } %>>
											<span>유머 감각</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="14" <% if(userMarriageValues != null && userMarriageValues.contains("헌신")) { %>checked<% } %>>

											<span>헌신</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="15" <% if(userMarriageValues != null && userMarriageValues.contains("신뢰")) { %>checked<% } %>>

											<span>신뢰</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="16" <% if(userMarriageValues != null && userMarriageValues.contains("평화로움")) { %>checked<% } %>>
											<span>평화로움</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="17" <% if(userMarriageValues != null && userMarriageValues.contains("도움")) { %>checked<% } %>>
											<span>도움</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="18" <% if(userMarriageValues != null && userMarriageValues.contains("관용")) { %>checked<% } %>>
											<span>관용</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="19" <% if(userMarriageValues != null && userMarriageValues.contains("협력")) { %>checked<% } %>>
											<span>협력</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="20" <% if(userMarriageValues != null && userMarriageValues.contains("이해와")) { %>checked<% } %>>
											<span>이해와 배려</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="21" <% if(userMarriageValues != null && userMarriageValues.contains("신뢰성")) { %>checked<% } %>>
											<span>신뢰성</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="22" <% if(userMarriageValues != null && userMarriageValues.contains("행복")) { %>checked<% } %>>
											<span>행복</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="23" <% if(userMarriageValues != null && userMarriageValues.contains("낙관성")) { %>checked<% } %>>
											<span>낙관성</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="24" <% if(userMarriageValues != null && userMarriageValues.contains("유대감")) { %>checked<% } %>>
											<span>유대감</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="25" <% if(userMarriageValues != null && userMarriageValues.contains("높은")) { %>checked<% } %>>
											<span>높은 목표</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="26" <% if(userMarriageValues != null && userMarriageValues.contains("명확한")) { %>checked<% } %>>
											<span>명확한 가치관</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="27" <% if(userMarriageValues != null && userMarriageValues.contains("타인")) { %>checked<% } %>>
											<span>타인 존중</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="28" <% if(userMarriageValues != null && userMarriageValues.contains("희생")) { %>checked<% } %>>

											<span>희생</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="29" <% if(userMarriageValues != null && userMarriageValues.contains("모험")) { %>checked<% } %>>

											<span>모험</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="30" <% if(userMarriageValues != null && userMarriageValues.contains("결속력")) { %>checked<% } %>>
											<span>결속력</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="31" <% if(userMarriageValues != null && userMarriageValues.contains("자신감")) { %>checked<% } %>>
											<span>자신감</span>
										</label>

										<label>
											<input type="checkbox" name="marriage" value="32" <% if(userMarriageValues != null && userMarriageValues.contains("인정받음")) { %>checked<% } %>>
											<span>인정받음</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="33" <% if(userMarriageValues != null && userMarriageValues.contains("시간과")) { %>checked<% } %>>
											<span>시간과 관심</span>
										</label>
										<label>
											<input type="checkbox" name="marriage" value="34" <% if(userMarriageValues != null && userMarriageValues.contains("공정함")) { %>checked<% } %>>
											<span>공정함</span>
										</label>
									</div>
									<button type="button" id="prev_page3" onclick="showPage('additional_info1')">이전</button>
									<button type="button" id="next_page4" onclick="showPage('additional_info3')">다음</button>
								</div>
								<div class="privacy_info" id="additional_info3" style="display: none;">
									<h2 class="privacy_info_marriage privacy_info_header">자기소개</h2>
									<div class="about_me">
										<textarea name="about_me_text" id="about_me_text" placeholder="자기소개를 통해 자신을 표현해보세요." ><%if(userIntroduce != null){ %><%=userIntroduce %><%}%></textarea>
									</div>
									<button type="button" id="prev_page3" onclick="showPage('additional_info2')">이전</button>
									<button type="submit" id="submit-privacy">저장하기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</main>
		<footer class="footer">
			<div class="footer-content">
				<h3>(주)Re:connect</h3>

				<span>대표 : Recycle</span>
				<span>사업자등록번호 : 999-99-99999</span>
				<span>주소
					: (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span>
				<span>Tel.042-222-2402</span>
				<ul class="footer-socials">
					<li><a href="index_logout.jsp"><img src="../images/ico_image.svg" alt="ico_image" /></a>
						<!-- 임시로 로그아웃 넣어 놨음 -->
					</li>
					<li><a href="https://www.instagram.com/"><img src="../images/ico_instagram.svg" alt="ico_instagram" /></a>
					</li>
					<li><a href="https://www.youtube.com/"><img src="../images/ico_youtube.svg" alt="ico_youtube" /></a></li>
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
									   // autoClick 함수 정의
									    function autoClick() {
									      var element = document.getElementById("checkd");
									      if (element) {
									        element.click();
									      } else {
									        console.error("Element with id 'checkd' not found.");
									      }
									    }

									    // 페이지 로드 시 autoClick 함수 호출
									    window.onload = function() {
									      autoClick();
									    };
  										</script>
		
		<script src="../script/account.js"></script>
		<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
	</body>

	</html>
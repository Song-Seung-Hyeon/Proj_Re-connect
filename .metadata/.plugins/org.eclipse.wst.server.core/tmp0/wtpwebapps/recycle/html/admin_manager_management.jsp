<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("utf-8");%>

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

<%
String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";
%>


<!DOCTYPE html>
<html lang="ko">

<head>
<title>admin 커플매니저 관리 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
	content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
	content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../images/favicon.png" />
<link rel="stylesheet" href="../CSS/admin_manager_management.css" />
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
					<li><img src="<%= request.getContextPath() %>/images/<%= imageName %>" /><span><%=userName %></span>
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
			<li class="gnb-menu"><a href="admin_manager_management.jsp"
				class="menu-btn">매니저 관리</a></li>
			<li class="gnb-menu"><a href="admin_post_management.jsp"
				class="menu-btn">게시물 관리</a></li>
			<li class="gnb-menu"><a href="admin_user_management.jsp"
				class="menu-btn">회원관리</a></li>
			<li class="gnb-menu"><a href="admin_user_estimate.jsp"
				class="menu-btn">상담예약 확인</a></li>
			<li class="gnb-menu"><a href="admin_matching_management.jsp"
				class="menu-btn">DASH 매칭</a></li>

		</ul>
		<button type="button" class="nav-icon">
			<iconify-icon icon="ph:list-fill"></iconify-icon>
		</button>
	</div>
	<main>


		<div id="modal" class="modal">
			<div class="modal-content">
				<h3 class="modal-heder">관리자 등록</h3>
				<div class="modal-text">
					<form action="../jsp/managementInsertData.jsp" method="post"
						id="add_administrator">
						<div class="add_info">
							<table class="info">
								<thead>
									<tr>
										<td>사용자 ID</td>
										<td><input type="text" name="user_id" required></td>
										<td>사용자명</td>
										<td><input type="text" name="user_name" required></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>암호</td>
										<td><input type="password" name="user_pw" required></td>
										<td>이메일</td>
										<td><input type="text" name="user_email"></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" name="user_phone"></td>
										<td>사용자권한</td>
										<td><select name="user_auth" id="userGroup">
												<option value="사용자권한" selected>사용자권한</option>
												<option value="--------------------------------------------"
													disabled>
													--------------------------------------------</option>
												<option value="3">관리자</option>
												<option value="2">커플매니저</option>
												<option value="1">일반</option>
										</select></td>
									</tr>
									<!-- <tr>
															<td>비상연락처</td>
															<td><input type="text" name="userNumber2"></td>
															<td>* 사용여부</td>
															<td>
																<select name="userUse" id="userUse">
																	<option value="사용여부" selected>사용여부</option>
																	<option value="--------------------------------------------" disabled>
																		--------------------------------------------</option>
																	<option value="Y">사용</option>
																	<option value="N">미사용</option>
																</select>
															</td>
														</tr> -->
								</tbody>
							</table>
						</div>
						<div class="btn_box">
							<button type="submit" id="submit-authority"
								class="modal_btn active_btn">저장</button>
							<button type="button" onclick="closeModal('modal')"
								class="modal_btn">닫기</button>
						</div>
					</form>
				</div>
				<button tpye="button" onclick="closeModal('modal')"
					class="close_btn">
					<iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
				</button>
			</div>
		</div>

		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, password);

			String adminAuthQuery = "SELECT * FROM user_list WHERE user_auth=2 OR user_auth=3 ORDER BY user_uid DESC";
			PreparedStatement preparedStatement = conn.prepareStatement(adminAuthQuery);
			ResultSet resultSet = preparedStatement.executeQuery();

			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

			while (resultSet.next()) {
				/* Timestamp noticeDate = resultSet.getTimestamp("notice_date");
				String formatNoticeDate = dateFormat.format(noticeDate); */
				String adminUid = resultSet.getString("user_uid");
				String adminId = resultSet.getString("user_id");
				String adminPw = resultSet.getString("user_pw");
				String adminEmail = resultSet.getString("user_email");
				String adminName = resultSet.getString("user_name");
				String adminPhone = resultSet.getString("user_phone");
				String adminRegDate = resultSet.getString("reg_date");
				String adminAuth = resultSet.getString("user_auth");

				if (adminAuth.equals("1")) {
			adminAuth = "일반";
				} else if (adminAuth.equals("2")) {
			adminAuth = "커플 매니저";
				} else if (adminAuth.equals("3")) {
			adminAuth = "관리자";
				}
				;
		%>
		<div id="modal<%=adminUid%>" class="modal">
			<div class="modal-content">
				<h3 class="modal-heder">관리자 수정</h3>
				<div class="modal-text">
					<form action="../jsp/managementUpdateData.jsp" method="post"
						id="add_administrator">
						<div class="add_info">
							<input type="hidden" name="user_uid" value="<%=adminUid%>" />
							<table class="info">
								<thead>
									<tr>
										<td>사용자 ID</td>
										<td><input type="text" name="user_id" required
											value="<%=adminId%>"></td>
										<td>사용자명</td>
										<td><input type="text" name="user_name" required
											value="<%=adminName%>"></td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>암호</td>
										<td><input type="password" name="user_pw" required
											value="<%=adminPw%>"></td>
										<td>이메일</td>
										<td><input type="text" name="user_email"
											value="<%=adminEmail%>"></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" name="user_phone"
											value="<%=adminPhone%>"></td>
										<td>사용자권한</td>
										<td><select name="user_auth" id="userGroup">
												<option value="사용자권한" selected>사용자권한</option>
												<option value="--------------------------------------------"
													disabled>
													--------------------------------------------</option>
												<option value="3" <%if (adminAuth.equals("관리자")) {%>
													selected <%}%>>관리자</option>
												<option value="2" <%if (adminAuth.equals("커플 매니저")) {%>
													selected <%}%>>커플매니저</option>
												<option value="1" <%if (adminAuth.equals("일반")) {%> selected
													<%}%>>일반</option>
										</select></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="btn_box">
							<button type="submit" id="submit-authority"
								class="modal_btn active_btn">수정</button>
							<button type="button" onclick="closeModal('modal<%=adminUid%>')"
								class="modal_btn">닫기</button>
						</div>
					</form>
				</div>
				<button tpye="button" onclick="closeModal('modal<%=adminUid%>')"
					class="close_btn">
					<iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
				</button>
			</div>
		</div>

		<%
		}
		resultSet.close();
		preparedStatement.close();
		conn.close();
		} catch (Exception e) {
		out.println("Error: " + e.getMessage());
		}

		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, user, password);
		
		
		String user_search = request.getParameter("user_search");
		String search = request.getParameter("search");
		
		String adminAuthQuery = "SELECT * FROM user_list WHERE user_auth=2 OR user_auth=3 ORDER BY user_uid DESC";			
		  if (search != null) {
		        if (user_search.equals("user_name")) {
		            adminAuthQuery = "SELECT * FROM user_list WHERE user_name LIKE ? AND (user_auth=2 OR user_auth=3) ORDER BY user_uid DESC";
		        } else if (user_search.equals("user_auth")) {
		            adminAuthQuery = "SELECT * FROM user_list WHERE user_auth=? AND (user_auth=2 OR user_auth=3) ORDER BY user_uid DESC";
		        } else if (user_search.equals("user_id")) {
		            adminAuthQuery = "SELECT * FROM user_list WHERE user_id LIKE ? AND (user_auth=2 OR user_auth=3) ORDER BY user_uid DESC";
		        }
		    } else {
		    	adminAuthQuery = "SELECT * FROM user_list WHERE user_auth=2 OR user_auth=3 ORDER BY user_uid DESC";
		    }
		
		
		PreparedStatement preparedStatement = conn.prepareStatement(adminAuthQuery);
		if (user_search != null && search != null) {
			preparedStatement.setString(1, "%" + search + "%");
	    }
		

		ResultSet resultSet = preparedStatement.executeQuery();

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		%>
		<div class="container">
			<div class="container_main">
				<div class="content">
					<h1>커플매니저 관리</h1>
					<div class="authority">
						<div class="search-box">
						<form action="#" method="post">
							<select name="user_search" class="user_search">
								<option value="user_name">이름</option>
								<option value="user_id">ID</option>
								<option value="user_auth">사용권한</option>
							</select> 
							<input type="search" name="search">
							<button type="submit" class="search-btn">조회</button>
							<button type="button" onclick="openModal('modal')" class="add_btn">등록</button>
						</form>
						</div>
						<div class="manager_list">
							<table class="board_list_wrap">
								<thead class="board_list">
									<tr class="top">
										<th class="id">사용자ID</th>
										<th class="title">사용자명</th>
										<th class="writer">사용권한</th>
										<th class="phone">연락처</th>
										<th class="reg">등록자</th>
										<th class="date">등록일</th>
										<!-- <th class="cor">수정자</th>
											<th class="cord">수정일</th> -->
										<th class="nope"></th>
										<th class="nope"></th>
									</tr>
								</thead>
								<tbody class="board_list">
									<%
									while (resultSet.next()) {
										/* Timestamp noticeDate = resultSet.getTimestamp("notice_date");
										String formatNoticeDate = dateFormat.format(noticeDate); */
										String adminUid = resultSet.getString("user_uid");
										String adminId = resultSet.getString("user_id");
										String adminName = resultSet.getString("user_name");
										String adminPhone = resultSet.getString("user_phone");
										String adminRegDate = resultSet.getString("reg_date");
										String adminAuth = resultSet.getString("user_auth");

										if (adminAuth.equals("1")) {
											adminAuth = "일반";
										} else if (adminAuth.equals("2")) {
											adminAuth = "커플 매니저";
										} else if (adminAuth.equals("3")) {
											adminAuth = "관리자";
										}
										;
									%>
									<tr>
										<td class="id"><%=adminId%></td>
										<!-- 아이디 -->
										<td class="title"><%=adminName%></td>
										<!-- 이름 -->
										<td class="writer"><%=adminAuth%></td>
										<!-- 권한 -->
										<td class="phone"><%=adminPhone%></td>
										<!-- 연락처 -->
										<td class="reg">관리자</td>
										<!-- 등록자 -->
										<td class="date"><%=adminRegDate%></td>
										<!-- 등록일 -->
										<!-- <td class="cor">수정자</td> 수정자
											<td class="cord">수정일</td> 수정일 -->
										<td><button
												onclick="correctionModal('modal<%=adminUid%>')">수정</button></td>
										<td><button onclick="deleteBtn()">삭제</button></td>
									</tr>
									<%
									}
									resultSet.close();
									preparedStatement.close();
									conn.close();
									} catch (Exception e) {
									out.println("Error: " + e.getMessage());
									}
									%>

								</tbody>
							</table>
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
	<script src="../script/admin_manager_management.js"></script>
	<script
		src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
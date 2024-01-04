<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:include page="../jsp/user_list_component.jsp"/>


<%
String userPhotoURL = (String) request.getAttribute("userPhotoURL");
String imageName = (String) request.getAttribute("imageName");
String userName = (String) request.getAttribute("userName");

String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";
%>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>내가 작성한 글 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
	content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
	content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../images/favicon.png" />
<link rel="stylesheet" href="../CSS/authored_content.css" />
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
					<li><img src="<%=request.getContextPath()%>/images/<%=imageName%>" alt="user_img" /><span><%=userName %></span>
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
			<div class="container_main">
				<div class="content">
					<h1>내가 작성한 글</h1>
					<h4>글 목록</h4>
					<table class="board_list_wrap">
						<thead class="board_list">
							<tr class="top">
								<th><input type="checkbox" name='selectall'
									value='selectall' onclick='selectAll(this)'></th>
								<th class="num">번호</th>
								<th class="title">제목</th>
								<th class="writer">글쓴이</th>
								<th class="date">작성일</th>
								<th class="count">조회</th>
							</tr>
						</thead>

                    <%
                    try {
                        HttpSession boardSession = request.getSession(false);
                        String userUID = (String) session.getAttribute("userUID");

                        if (userUID != null) {
                            // 주어진 UID를 가져옴
                            int uid = Integer.parseInt(userUID);

                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection conn = DriverManager.getConnection(url, user, password);

                            // 해당 UID와 작성자 ID가 일치하는 글 조회 쿼리
                            String selectQuery = "SELECT cq.*, ul.user_name " + 
                                "FROM contact_question cq " +
                                "INNER JOIN user_list ul ON cq.contact_writer_id = ul.user_uid " +
                                "WHERE cq.contact_writer_id = ?"; // 수정된 부분

                            PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
                            preparedStatement.setInt(1, uid);
                            ResultSet resultSet = preparedStatement.executeQuery();

                            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

                            while (resultSet.next()) {
                                Timestamp contactDate = resultSet.getTimestamp("contact_reg_date");
                                String formatContactDate = dateFormat.format(contactDate);
                    %>


						<tbody class="board_list">
							<tr>
								<td><input type="checkbox" name="check"
									onclick='checkSelectAll(this)'></td>
								<td class="num"><%=resultSet.getString("uid")%></td>
								<td class="title"><a href="authored_content_view.jsp?uid=<%=resultSet.getString("uid")%>"><%=resultSet.getString("contact_title")%></a></td>
								<td class="writer"><%=resultSet.getString("user_name")%></td>
								<td class="date"><%=formatContactDate %></td>
								<td class="count"><%=resultSet.getString("contact_views")%></td>
							</tr>
						</tbody>
                    <%
                            }
                            resultSet.close();
                            preparedStatement.close();
                            conn.close();
                        } else {
                            // 세션이 없는 경우 로그인 페이지로 이동
                            response.sendRedirect("login.jsp");
                        }
                    } catch (Exception e) {
                        out.println("Error: " + e.getMessage());
                    }
                    %>
					</table>
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
				<li><a href="../src/account_manager.jsp"><img
						src="../images/ico_instagram.svg" alt="ico_instagram" /></a> <!-- 임시로 커플매니저페이지 넣어 놨음 -->
				</li>
				<li><a href="../src/admin_manager_management.jsp"><img
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
	<script src="../script/authored_content.js"></script>
	<script
		src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.TimeZone" %>
<%request.setCharacterEncoding("utf-8");%>

<%
    String username = (String) session.getAttribute("userName"); 

    // 현재 날짜와 시간 가져오기
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Date date = new Date();
    String formattedDate = dateFormat.format(date);
%>

<%
String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";
%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>문의하기 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
	content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
	content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../images/favicon.png" />
<link rel="stylesheet" href="../CSS/board_write.css" />
<link rel="stylesheet" href="../CSS/reset.css" />
<link rel="stylesheet" href="../CSS/header_footer_noside.css" />
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
		<div id="box"></div>
		<div class="board_wrap">
			<div class="board_title">
				<strong><a href="post_management.jsp">답변하기</a></strong>
				<p>문의하기</p>
			</div>
			<form action="AnswerBoardServlet" method="post"	enctype="multipart/form-data">
				<table class="view">
					<thead>
						<tr>
							<th colspan="8" class="title"><input type="text" name="board_title" value="<%= request.getParameter("contact_title")%>" required>
</th>
						</tr>
					</thead>
					<tbody>
						<tr class="info">
							<th>작성자</th>
							<td><input type="text" value="<%= username %>" disabled></td>
							<th>작성일</th>
							<td><input type="text" value="<%= formattedDate %>" disabled></td>
						</tr>
						<tr>
							<td colspan="8" class="content"><textarea id="textarea" name="board_content"></textarea></td>
						</tr>
						<tr>
							<td colspan="8"><input type="file" name="imageFile"></td>
						</tr>
					</tbody>
				</table>
				<div class="bt_wrap">
					<button type="submit" class="on">등록</button>
					<button>
						<a href="post_management.jsp">취소</a>
					</button>
				</div>
			</form>
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
	<script src="../script/loginSession2.js"></script>
	<script src="../script/header.js"></script>
	<script
		src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

</body>

</html>
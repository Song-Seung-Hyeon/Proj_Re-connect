<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("utf-8");%>


<%
String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";

%>

	<%
	try {
		HttpSession boardSession = request.getSession(false);
		String userUID = (String) session.getAttribute("userUID");

		if (userUID != null) {
			String getUid = request.getParameter("uid");
			int uid = Integer.parseInt(getUid);

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, user, password);

			String selectQuery = "SELECT cq.*, ul.user_name " + "FROM contact_question cq "
			+ "INNER JOIN user_list ul ON cq.contact_writer_id = ul.user_uid " + "WHERE uid =?";

			PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
			preparedStatement.setInt(1, uid);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
		String requestedUID = resultSet.getString("contact_writer_id");
		if (userUID.equals(requestedUID)) {
			// 여기에 권한이 있는 경우 게시글을 표시하는 코드 추가
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Timestamp contactDate = resultSet.getTimestamp("contact_reg_date");
			String formatNoticeDate = dateFormat.format(contactDate);
	%>
		
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>문의하기 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/board_correction.css" />
	<link rel="stylesheet" href="../CSS/reset.css" />
	<link rel="stylesheet" href="../CSS/header_footer_noside.css" />
</head>

<body>
	<!-- 헤더 -->
	<header>
		<div class="header">
			<div class="air"></div>
			<a href="../index.jsp" id="logo">
				<img src="../images/logo.svg" alt="로고" />
			</a>
			<div class="login_menu">
				<div id="loginStatus"></div>

			</div>
		</div>
		<nav class="nav">
			<a href="../index.jsp" id="logo2">
				<img src="../images/logo.svg" alt="로고" width="95" />
			</a>
			<ul class="gnb">
				<!-- <div id="test"></div> -->
				<li class="gnb-menu">
					<a href="#" class="menu-btn">회사소개</a>
					<ul class="sub-menu">
						<li><a href="dash.jsp">Dash란?</a></li>
						<li><a href="greeting.jsp">인사말</a></li>
						<li><a href="manager.jsp">커플 매니저 소개</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">커뮤니티</a>
					<ul class="sub-menu">
						<li><a href="notice.jsp">공지사항</a></li>
						<li><a href="board_main.jsp">문의하기</a></li>
						<li><a href="event.jsp">이벤트</a></li>
						<li><a href="FAQ.jsp">FAQ</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">이용안내</a>
					<ul class="sub-menu">

						<li><a href="estimate.jsp">상담예약</a></li>
						<li><a href="price.jsp">이용요금</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">후기정보</a>
					<ul class="sub-menu">
						<li><a href="mgr_reviews.jsp">매니저 후기</a></li>
						<li><a href="interview.jsp">인터뷰</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">매칭하기</a>
					<ul class="sub-menu">
						<li><a href="matching.jsp">Dash매칭</a></li>
						<li><a href="bestmember.jsp">This Is Me</a></li>
					</ul>
				</li>
			</ul>
			<button class="nav-icon"><iconify-icon icon="ph:list-fill"></iconify-icon></button>

		</nav>
		<div class="dim-layer"></div>
	</header>

<main>
    <div id="box"></div>
    <div class="board_wrap">
        <div class="board_title">
            <strong><a href="board_main.jsp">문의하기</a></strong>
            <p>문의하기</p>
        </div>
        <form class="view" action="updateBoardServlet" method="post" enctype="multipart/form-data">
            <!-- 수정할 게시글 내용을 보여주는 부분 -->
            <div class="board_content">
                <input type="hidden" name="board_uid" value="<%=resultSet.getString("uid")%>"/>
                <div class="title">
                    <input type="text" name="title" value="<%=resultSet.getString("contact_title")%>">
                </div>
                <div class="info">
                    <input type="text" name="writer" value="<%=resultSet.getString("user_name")%>">
                    <input type="password" name="password" maxlength="4" value="<%=resultSet.getString("question_pw")%>">
                </div>
                <div class="cont">
                    <textarea name="content" id="textarea"	oninput="autoResize()"><%=resultSet.getString("contact_content")%></textarea>
                </div>
                <!-- 이미지 업로드 부분 -->
                <div class="image">
                    <input type="file" name="image"<%=resultSet.getString("photo_url") %> >
                </div>
            </div>
            <div class="btn_box">
                <button type="submit" class="btn_correction">수정</button>
                <button><a href="board_main.jsp" class="btn_back">취소</a></button>
            </div>
        </form>
    </div>
</main>
	<%
	} else {
	%>
	<script>
		alert('접근권한이 없습니다.');
		location.href = "../html/board_main.jsp";
	</script>
	<%
	}
	} else {
	%>
	<script>
		alert('게시글을 찾을 수 없습니다.');
		location.href = "../html/board_main.jsp";
	</script>
	<%
	}

	resultSet.close();
	preparedStatement.close();
	conn.close();
	} else {
	// 세션이 없는 경우 로그인 페이지로 이동하도록 처리
	response.sendRedirect("login.jsp");
	}
	} catch (Exception e) {
	out.println("Error: " + e.getMessage());
	}
	%>

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
	<script src="../script/header.js"></script>
	<script src="../script/loginSession2.js"></script>
	<script src="../script/view.js"></script>
	
	<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
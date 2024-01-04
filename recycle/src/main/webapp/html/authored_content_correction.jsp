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
  <title>내가 작성한 글 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
  <meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/authored_content_correction.css" />
  <link rel="stylesheet" href="../CSS/footer_style.css" />
  <link rel="stylesheet" href="../CSS/reset.css" />
</head>

<body>
  <!-- 마이페이지헤더 -->
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
            <img src="../images/Song.jpg" alt="user_img" />
          </figure>
        </div>
      </button>

      <div class="layer_member">
        <ul>
          <li>
            <img src="../images/Song.jpg" alt="user_img" /><span>송승현</span>
            <!-- 유저이미지, 이름 입력 -->
          </li>
          <li>
            <a href="account.jsp"><span>개인정보 수정</span><iconify-icon icon="la:edit-solid" width="30"></iconify-icon></a>
          </li>
          <li>
            <a href="../jsp/logout.jsp"><span>로그아웃</span><iconify-icon icon="material-symbols:logout"
                width="25"></iconify-icon></a>
          </li>
        </ul>
      </div>
    </div>
  </header>

    <!-- 마이페이지 사이드메뉴 -->
    <div class="nav">
      <a href="../index.jsp" id="logo2">
        <img src="../images/logo.svg" alt="logo" />
      </a>
      <ul class="gnb">
        <li class="gnb-menu">
          <a href="profil.jsp" class="menu-btn">마이프로필</a>
        </li>
        <li class="gnb-menu">
          <a href="account.jsp" class="menu-btn">개인정보수정</a>
        </li>
        <li class="gnb-menu">
          <a href="authored_content.jsp" class="menu-btn">내가 작성한 글</a>
        </li>
        <li class="gnb-menu">
          <a href="Likestatus.jsp" class="menu-btn">좋아요 현황</a>
        </li>
        <li class="gnb-menu">
          <a href="matching_current.jsp" class="menu-btn">매칭현황</a>
        </li>
        <li class="gnb-menu">
          <a href="member_ship.jsp" class="menu-btn">멤버십</a>
        </li>
        <li class="gnb-menu">
          <a href="account_withdrawal.jsp" class="menu-btn secession">회원탈퇴</a>
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
          <h1>내가 작성한 글</h1>
          <h4>글 수정</h4>
        <form class="view" action="updateAuthoredServlet" method="post" enctype="multipart/form-data">
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
                <button><a href="authored_content.jsp" class="btn_back">취소</a></button>
            </div>
        </form>
        </div>
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
            <a href="admin_manager_management.jsp"><img src="../images/ico_youtube.svg" alt="ico_youtube" /></a>
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
  <script src="../script/authored_content.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
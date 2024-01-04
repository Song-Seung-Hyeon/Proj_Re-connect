<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("utf-8");%>

<jsp:include page="../jsp/user_list_component.jsp"/>  

<%
String userName = (String) request.getAttribute("userName");
String userPhotoURL = (String) request.getAttribute("userPhotoURL");
String imageName = (String) request.getAttribute("imageName");
%>

    
    <%
    String url = "jdbc:mysql://192.168.0.71:3306/recycle";
    String user = "recycle";
    String password = "1234";    
    %>
		
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>admin 게시물 관리 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/admin_post_management.css" />
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
						<img src="<%=request.getContextPath()%>/images/<%=imageName%>" alt="user_img" />
					</figure>
				</div>
			</button>

			<div class="layer_member">
				<ul>
					<li>
						<img src="<%=request.getContextPath()%>/images/<%=imageName%>" alt="user_img" /><span><%= userName %></span>
					</li>
					<li>
						<a href="account.jsp"><span>개인정보 수정</span><iconify-icon icon="la:edit-solid"
								width="30"></iconify-icon></a>
					</li>
					<li>
						<a href="../jsp/logout.jsp"><span>로그아웃</span>
						<iconify-icon icon="material-symbols:logout"
								width="25"></iconify-icon></a>
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
        <a href="admin_manager_management.jsp" class="menu-btn">매니저 관리</a>
      </li>
      <li class="gnb-menu">
        <a href="admin_post_management.jsp" class="menu-btn">게시물 관리</a>
      </li>
      <li class="gnb-menu">
        <a href="admin_user_management.jsp" class="menu-btn">회원관리</a>
      </li>
      <li class="gnb-menu">
        <a href="admin_user_estimate.jsp" class="menu-btn">상담예약 확인</a>
      </li>
      <li class="gnb-menu">
        <a href="admin_matching_management.jsp" class="menu-btn">DASH 매칭</a>
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
            <h1>게시물 관리</h1>
            <div class="post_management">
              <div class="menu-tab">
                <button class="tab_btn active"><a href="#">전체</a></button>
                <button class="tab_btn"><a href="#">공지사항</a></button>
                <button class="tab_btn"><a href="#">게시판</a></button>
                <button class="tab_btn"><a href="#">FAQ</a></button>
              </div>
              <div class="search-box">
                <select name="user_search" class="user_search">
                  <option value="성함">제목</option>
                  <option value="내용">내용</option>
                  <option value="작성자">작성자</option>
                </select>
                <input type="search">
              <button type="button" class="search-btn">조회</button>
              <button type="button" onclick="openModal('modal1')" class="add_btn">등록</button>
            </div>
            <div id="modal1" class="modal">
              <div class="modal-content">
                <h3 class="modal-heder">게시판 관리</h3>
                <div class="modal-text">
                    <form action="#" method="post" id="add_post" enctype="multipart/form-data">
                      <div class="add_post_management">
                        <table class="add_post_table">
                          <thead>
                            <tr>
                              <th>*작성자</th>
                              <th><input type="text" name="userName" required></th>
                              <th>*분류</th>
                              <th>
                                <select name="classification" id="classification">
                                  <option value="분류" selected>분류</option>
                                  <option value="--------------------------------------------" disabled>--------------------------------------------</option>
                                  <option value="공지사항">공지사항</option>
                                  <option value="게시판">게시판</option>
                                  <option value="FAQ">FAQ</option>
                                </select>
                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>제목</td>
                              <td colspan="3"><input type="text" name="title"></td>
                            </tr>
                            <tr>
                              <td rowspan="2">내용</td>
                              <td colspan="3" rowspan="2"><input type="text" name="main_text"></td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                              <td>파일첨부</td>
                              <td colspan="3"><input type="file"></td>
                            </tr>
                          </tbody>
                          </table>
                      </div>
                      <div class="btn_box">
                        <button type="submit" id="submit-authority" class="modal_btn active_btn">저장</button>
                        <button type="button" onclick="closeModal('modal1')" class="modal_btn">닫기</button>
                      </div>
                    </form>
                  </div>
                  <button tpye="button" onclick="closeModal('modal1')" class="close_btn">
                    <iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
                  </button>
                </div>
              </div>
              <div class="post_list">
                <table class="board_list_wrap">
                <thead class="board_list">
                  <tr class="top">
                    <th class="id">번호</th>
                    <th class="title">제목</th>
                    <th class="writer">작성자</th>
                    <th class="whether">작성일</th>
                    <th class="reg">조회수</th>
                  </tr>
                </thead>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(url, user, password);

    String selectNoticeQuery = "SELECT uid, notice_title AS title, notice_writer AS writer, notice_date AS date, notice_views AS views FROM notice ORDER BY uid DESC";
    PreparedStatement noticeStatement = conn.prepareStatement(selectNoticeQuery);
    ResultSet noticeResultSet = noticeStatement.executeQuery();

    String selectContactQuery = "SELECT uid, contact_title AS title, user_name AS writer, contact_reg_date AS date, contact_views AS views FROM contact_question INNER JOIN user_list ON contact_question.contact_writer_id = user_list.user_uid ORDER BY uid DESC";
    PreparedStatement contactStatement = conn.prepareStatement(selectContactQuery);
    ResultSet contactResultSet = contactStatement.executeQuery();

    // 두 결과를 합치기 위해 ArrayList에 순차적으로 데이터 추가
    ArrayList<HashMap<String, String>> combinedResults = new ArrayList<>();

    while (noticeResultSet.next()) {
        HashMap<String, String> data = new HashMap<>();
        data.put("uid", noticeResultSet.getString("uid"));
        data.put("title", "[공지사항] " + noticeResultSet.getString("title"));
        data.put("writer", noticeResultSet.getString("writer"));
        data.put("date", noticeResultSet.getString("date"));
        data.put("views", noticeResultSet.getString("views"));
        combinedResults.add(data);
    }

    // 게시판 쿼리 결과
    while (contactResultSet.next()) {
        HashMap<String, String> data = new HashMap<>();
        data.put("uid", contactResultSet.getString("uid"));
        data.put("title", "[게시판] " + contactResultSet.getString("title"));
        data.put("writer", contactResultSet.getString("writer"));
        data.put("date", contactResultSet.getString("date"));
        data.put("views", contactResultSet.getString("views"));
        combinedResults.add(data);
    }

    // 번호 매기기
    int postNumber = 1;

    // 결과 출력
    for (HashMap<String, String> data : combinedResults) {
        String uid = data.get("uid");
        String title = data.get("title");
        String writer = data.get("writer");
        String date = data.get("date");
        String views = data.get("views");

        %>
        <tbody class="board_list">
            <tr>
                <td class="id"><%= postNumber++ %></td>
                <td class="title">
                    <%
                    // 공지사항이면 공지사항 페이지로, 게시판이면 게시판 페이지로 링크를 설정합니다.
                    String link = "";
                    if (title.startsWith("[공지사항]")) {
                        link = "notice_view.jsp?uid=" + uid.substring(uid.indexOf(" ") + 1);
                    } else {
                        link = "board_view.jsp?uid=" + uid.substring(uid.indexOf(" ") + 1);
                    }
                    %>
                    <a href="<%= link %>">
                        <%= title %>
                    </a>
                </td>
                <td class="writer"><%= writer %></td>
                <td class="whether"><%= date %></td>
                <td class="reg"><%= views %></td>
            </tr>
        </tbody>
        <%
    }

    noticeResultSet.close();
    contactResultSet.close();
    noticeStatement.close();
    contactStatement.close();
    conn.close();
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>
                
                
              
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
	<script src="../script/admin_post_management.js"></script>
	<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
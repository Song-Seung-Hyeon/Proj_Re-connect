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
  <title>멤버십 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
  <meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/member_ship.css" />
  <link rel="stylesheet" href="../CSS/footer_style.css" />
  <link rel="stylesheet" href="../CSS/reset.css" />
</head>

<body>
  <!-- 헤더 -->
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

  <main>

    <div id="modal1" class="modal">
      <div class="modal-content">
        <h3 class="modal-text">멤버십 등급</h3>
        <div class="modal-img"><img src="../images/membership_img.svg" alt="후기" width="500"/></div>
        <button onclick="closeModal('modal1')" class="close_btn">
          <iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
        </button>
      </div>
    </div> 

    <!-- 사이드메뉴 -->
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
    <div class="container">
      <div class="container_main">
        <div class="content">
          <h1>멤버십</h1>
          <h4>현재 고객님의 등급입니다.</h4>

          <div class="icon_h" onclick="openModal('modal1')">
            <div class="icon_v"><img src="../images/Vector.svg" width="30"></div>
            <h5>멤버십이란?</h5>
          </div>
          <%
          try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              Connection conn = DriverManager.getConnection(url, user, password);

              HttpSession boardSession = request.getSession(false);
              String userUID = (String) session.getAttribute("userUID");

              String query = "SELECT * FROM membership_info " +
                             "INNER JOIN user_list ON membership_info.user_uid = user_list.user_uid " +
                             "INNER JOIN membership ON membership_info.membership_uid = membership.membership_uid " +
                             "WHERE membership_info.user_uid = ?";

              PreparedStatement statement = conn.prepareStatement(query);
              statement.setString(1, userUID);

              ResultSet resultSet = statement.executeQuery();

              if (resultSet.next()) {
            	  String photoURL = resultSet.getString("membership_photo");
            	  String imageName2 = new File(photoURL).getName();
            	  String membershipName = resultSet.getString("membership_name");
            	  String membershipCount = resultSet.getString("membership_count");
            	  String membershipPeriod = resultSet.getString("membership_period");
                  %>

          <section class="area_1">

            <div class="event_box1">
              <div class="box_e">
                <img src="<%=request.getContextPath()%>/images/<%=imageName2%>" alt="멤버십이미지" />
              </div>
            </div>
  
            <div class="event_box2">
              <h4 class="text_e"><%=userName %> 님은 <br />
              현재 <%=membershipName %> 등급 입니다. <br />
              <%
              if(membershipCount == null && membershipPeriod.equals("999")){
              %>
              무제한 이용자 입니다.          
              <%
              }else if(membershipCount == null){
              %>
              현재 남은 이용권 사용 일수는? <%= membershipPeriod %>일 입니다.      
              <%
              }else {
             %>
              현재 남은 매칭 가능 횟수는? <%= membershipCount %>회 입니다. <br/>              	
              <%}%>
              </h4>
            </div>
  
            <div class="event_box3">
              <h4 class="text_e">▣ 회원등급</h4>
              <h4 class="text_e2">
                -  회원등급 업데이트는 매월 1일 오전 중에 진행됩니다. <br />
                -  회원등급은 맴버십 가입비용에 따라 결정됩니다.
              </h4>
            </div>
          </section>

        </div>
      </div>
  </main>
                  <%
              }

              resultSet.close();
              statement.close();
              conn.close();
          } catch (Exception e) {
              e.printStackTrace();
          }
          %>
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
          <a href="https://www.instagram.com/"><img src="../images/ico_instagram.svg" alt="ico_instagram" /></a>
        </li>
        <li>
          <a href="https://www.youtube.com/"><img src="../images/ico_youtube.svg" alt="ico_youtube" /></a>
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
  <script src="../script/member_ship.js"></script>
  <script src="../script/authored_content.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
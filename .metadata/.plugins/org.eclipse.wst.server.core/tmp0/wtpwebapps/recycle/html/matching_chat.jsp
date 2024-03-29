<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>매칭채팅 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
  <meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/matching_chat.css" />
  <link rel="stylesheet" href="../CSS/footer_style.css" />
  <link rel="stylesheet" href="../CSS/reset.css" />
</head>

<body>
  <!-- 마이 페이지 헤더 -->
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

  <main>

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

    <div class="container">
      <div class="container_main">
        <div class="content">
          <h1>매칭현황</h1>
          <h4>현재 고객님의 매칭 상황입니다.</h4>

          <div class="icon_h">
          </div>
          
          <section class="area_1">

            <div class="event_box1">
              
              <div class="box_e">
                <div class="box_group">

                  <div class="box_group1">
                    <h5 class="group_1">●●●●○</h5>
                    <h5 class="group_2">LTE</h5>
                  </div>

                  <h5 class="group_3">12 : 35</h5>

                  <div class="box_group2">
                    <h5 class="group_4">100%</h5>
                    <div class="group_5">
                      <img src="../images/battery.svg">
                    </div>
                  </div>

                </div>

              </div>

              <div class="box_e1">
                <div class="box_e_1">
                  <div class="box_e_img">
                    <img src="../images/arrow_1.svg">
                  </div>
                  <div class="box_e_1_1">
                    <h5 class="box_et">김고은</h5>
                    <h5 class="box_ett">♥ 70%</h5>
                  </div>
                </div>
              </div>

              <div class="box_e3">

                <div class="chat-container">
                  <div class="message0 sender_0">
                    <p>보내는 사람의 메시지 내용</p>
                  </div>
                  <div class="message1 sender">
                    <p>보내는 사람의 메시지 내용</p>
                  </div>
                  <div class="message2 receiver">
                    <p>받는 사람의 메시지 내용</p>
                  </div>
                  <div class="message3 receiver_0">
                    <p>받는 사람의 메시지 내용</p>
                  </div>
                </div>

              </div>

              <div class="box_e3_1">
                <form action="form_ok.php" method="POST">
                  <input id="input1" type="text" placeholder="내용을 입력하세요!" />
                  <input id="input2" type="submit" value="전송" />
              </form>
              </div>
              
              <div class="box_e4">
                <div class="box_e4_1">
                  <div class="icon_icon_0">
                    <img src="../images/icon_1.svg">
                  </div>
                  <div class="icon_icon_1">
                    <img src="../images/icon_2.svg">
                  </div>
                  <div class="icon_icon_2">
                    <img src="../images/icon_3.svg">
                  </div>
                  <div class="icon_icon_3">
                    <img src="../images/icon_4.svg">
                  </div>
                </div>
              </div>

            </div>

          </section>

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
  <script src="../script/matching_chat.js"></script>
  <script src="../script/authored_content.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
  <title> 인터뷰 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH </title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
  <meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/interview_style.css">
  <link rel="stylesheet" href="../CSS/reset.css">
  <link rel="stylesheet" href="../CSS/header_style.css">
  <link rel="stylesheet" href="../CSS/footer_style.css">
  <link rel="stylesheet" href="../CSS/sidebar_style.css">
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
        <img src="../images/logo.svg" alt="로고" width="95"/>
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

  <!-- 메인 -->
  <main>
    <!-- 사이드바 -->
    <nav class="side-bar">
      <h2>후기정보</h2>
      <ul class="sb-list">
        <li><a href="mgr_reviews.jsp">매니저 후기</a></li>
        <li><a href="interview.jsp">인터뷰</a></li>
        <!-- <li><a href="#">이용요금</a></li> -->
      </ul>
    </nav>
    <!-- 본문 -->
    <div id="box"></div>
    <h2 id="title">인터뷰</h2>
    <p id="sub-title">우리들의 사랑을 전달합니다</p>
    <div id="slideShow">
      <ul class="slides">
        <li>
          <img src="../images/인터뷰1.png" alt="">
        </li>
        <li>
          <img src="../images/인터뷰2.png" alt="">
        </li>
        <li>
          <img src="../images/인터뷰3.png" alt="">
        </li>
        <li>
          <img src="../images/인터뷰4.png" alt="">
        </li>
        <li>
          <img src="../images/인터뷰5.png" alt="">
        </li>
        <li>
          <img src="../images/인터뷰6.png" alt="">
        </li>
      </ul>
      <p class="controller">
        <span class="prev">&lang;</span>
        <span class="next">&rang;</span>
      </p>
    </div>
    <!-- 리뷰 -->
    <div class="review-container">
      <h2>후기</h2>
      <form id="review-board" action="#" method="post">
        <div class="review ">

          <h4>anda******</h4>
          <p>다시 덕분에 완벽한 파트너를 만났습니다. 프로페셔널한 서비스와 정확한 매칭으로 인해 우리의 인연이 시작되었습니다. 진심으로 감사합니다!</p>
        </div>
        <div class="review">

          <h4>qs******</h4>
          <p>다시는 최고였습니다! 간단한 프로필 작성 후, 내 인생의 반쪽을 만났어요. 정말로 감사합니다.</p>
        </div>
        <div class="review ">

          <h4>anda******</h4>
          <p>우리의 사랑 이야기는 다시로 시작되었습니다. 정말 행복해요!</p>
        </div>
        <div class="review">

          <h4>qs******</h4>
          <p>결혼정보업체로 다시를 선택한 것은 최고의 선택 중 하나였어요. 우리를 함께 이어주셔서 감사합니다.</p>
        </div>
      </form>


      <!-- 리뷰 등록창 -->
      <form id="review-form" action="#" method="post">
        <div class="name">
          <h4>이름</h4>
          <input type="text" id="name" name="title" required>
        </div>
        <div class="content">
          <h4>내용</h4>
          <textarea id="content" name="content" rows="4" cols="50" required></textarea>
        </div>
        <div class="button">
          <button type="submit">등록</button>
        </div>
      </form>
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
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
  <script src="../script/header_script.js"></script>
  <script src="../script/interview_script.js"></script>
  <script src="../script/loginSession2.js"></script>
</body>

</html>
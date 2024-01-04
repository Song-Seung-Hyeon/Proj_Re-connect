<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <title> 이용요금 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH </title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta
    name="keyworeds"
    content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,"/>
  <meta
    name="description"
    content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다."/>
    <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/price.css">
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
      <a href="./index.jsp" id="logo2">
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
            <!-- <li><a href="#">문의하기</a></li> -->
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
    <nav class="side-bar">
      <h2>이용안내</h2>
      <ul class="sb-list">
        <li><a href="estimate.jsp">상담예약</a></li>
        <li><a href="price.jsp">이용요금</a></li>
      </ul>
    </nav>
    <div id="box"></div>
  <main class="content">
    <p class="title">이용요금</p>
    <p class="sub_title">첫 상담부터 성혼까지 체계적인 서비스로 고객과 함께합니다.</p>
    <div class="box">
      <div class="sub_box">
        <h3 class="sub_title_inner">Guest - 3회</h3>
        <p>- 회원가입 시 기본 서비스</p>
        <p>- 기본정보로만 랜덤매칭 채팅가능</p>
        <p>- 승낙시 프로필 열기 가능</p>
      </div>
      <div class="price">
        <div class="test">
          <p>Guest</p>
          <p>회원가입시 서비스</p>
        </div>
      </div>
    </div>
    <div class="box">
      <div class="sub_box">
        <h3 class="sub_title_inner">Dabble - 10회</h3>
        <p>- 랜덤매칭 10회 (옵션 선택 가능)</p>
        <p>- 프로필 열어보기</p>
        <p>- 상대방과 채팅 가능</p>
      </div>
      <div class="price">
        <div class="test">
          <p>Dabble</p>
          <p>550,000 &#8361;</p>
        </div>
        <a href="price_list.jsp">
          <button class="btn_p1">
            <p>이용하기</p>
          </button>
        </a>
      </div>
    </div>
    <div class="box">
      <div class="sub_box">
        <h3 class="sub_title_inner">Advance - 한달 내내</h3>
        <p>- 랜덤매칭 (옵션 선택 가능)</p>
        <p>- 프로필 열어보기</p>
        <p>- 상대방과 채팅 가능</p>
        <p>- 커플매니저 소개 매칭 3회</p>
      </div>
      <div class="price">
        <div class="test">
          <p>Advance</p>
          <p>2,200,000 &#8361;</p>
          <p>1,980,000 &#8361;</p>
        </div>
        <div class="btn_price">
          <a href="price_list_two.jsp">
            <button class="btn_p2">
              <p>이용하기</p>
            </button>
          </a>
      </div>
      </div>
    </div>
    <div class="box">
      <div class="sub_box">
        <h3 class="sub_title_inner">Special - 1년 내내</h3>
        <p>- 랜덤매칭 (옵션 선택가능)</p>
        <p>- 프로필 열어보기</p>
        <p>- 상대방과 채팅 가능</p>
        <p>- 커플매니저 소개팅 매칭 무제한</p>
      </div>
      <div class="price">
        <div class="test">
          <p>Special</p>
          <p>4,000,000 &#8361;</p>
          <P>3,630,000 &#8361;</P>
        </div>
        <div class="btn_price">
          <a href="price_list_three.jsp">
            <button class="btn_p3">
              <p>이용하기</p>
            </button>
          </a>
        </div>
      </div>
    </div>
    <div class="box">
      <div class="sub_box">
        <h3 class="sub_title_inner">Highest - 무제한</h3>
        <p>- 랜덤매칭 (옵션 선택가능)</p>
        <p>- 프로필 열어보기</p>
        <p>- 상대방과 채팅 가능</p>
        <p>- 커플매니저 소개팅 매칭 무제한</p>
        <p>- 식사권 5회 제공 (5만원 한도)</p>
        <p>- 스드메 제공 (식장촬영 제공 + 무제한 보정 가능)</p>
      </div>
      <div class="price">
        <div class="test">
          <p>Highest</p>
          <p>10,800,000 &#8361;</p>
          <P>9,900,000 &#8361;</P>
        </div>
        <div class="btn_price">
          <a href="price_list_four.jsp">
            <button class="btn_p4">
              <p>이용하기</p>
            </button>
          </a>
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
            <li><a href="index.jsp">Home</a></li>
            <li><a href="dash.jsp">About</a></li>
            <li><a href="estimate.jsp">Contact</a></li>
            <li><a href="FAQ.jsp">FAQ</a></li>
          </ul>
        </div>
      </div>
    </footer>
  <script src="../script/header_script.js"></script>
  <script src="../script/loginSession2.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>
</html>
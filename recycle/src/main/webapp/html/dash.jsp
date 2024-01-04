<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <title> DASH란? | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH </title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta
    name="keyworeds"
    content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,"
  />
  <meta
    name="description"
    content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다."
  />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/dash.css">
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
		 <div id="loginStatus"></div> <!-- 여기바뀜 -->
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

  <main>
      <nav class="side-bar">
      <h2>회사소개</h2>
      <ul class="sb-list">
        <li><a href="dash.jsp">Dash란?</a></li>
        <li><a href="greeting.jsp">인사말</a></li>
        <li><a href="manager.jsp">커플 매니저 소개</a></li>
      </ul>
    </nav>
    <div id="box"></div>
        <!-- <div>
            <img src="./logo.svg" alt="결혼">
        </div> -->
        <div class="content">
          <h2 class="title">DASH 란?</h2>
            <p class="sub_title">“DASH는 고객님께 가장 잘 맞는 배우자를 찾아드린다는 믿음을 실천합니다.”</p>
            <p class="para">
              고객님께서 저희 “DASH” 로 인해 소중한 인연을 찾게 된다면</br>
              그보다 더 행복한 일은 없을 겁니다.</br>
              그렇기에 DASH 임직원은 항상 고객님의 눈높이에서 바라보고 고객님의 마음으로 생각합니다.</br>
              </br>
              </br>
              DASH를 믿고 함께해 주시는 고객님 한 분 한 분께 과학적이고 체계적인 시스템을 바탕으로</br>
              고객님과 가장 잘 맞는 배우자를 만나게 해드리는데 최선의 노력을 다할 것입니다.</br>
              실력 있는 커플매니저의 숙련된 노하우와 탄탄한 DASH만의 매칭 서비스로</br>
              고객님의 소중한 인연을 찾아드리겠습니다.</br>
              </br>
              평생의 인연을 만나는 새로운 출발점에서 DASH의 가치를 알아보는 당신을</br>
              가장 아름다운 만남의 주인공으로 만들어 드리겠습니다.</br>
              </br>
              감사합니다.</br>
            </p>
        </div>
        <div class="form1">
          <img src="../images/결혼사진4.jpg" width="450" height="230" alt="marry">
          <div class="content-text">
            <h3 class="sub">1. DASH의 소개</h3>
            <p>DASH는 소중한 가정을 만든다는
              소명의식을 바탕으로 좋은 배우자와의 만남을 주선합니다.
              저희 DASH는 결혼뿐만 아니라 저렴한 가격에 소개팅, 맞선 등 다양한 서비스를 
              이용할 수 있어 많은 고객들이 이용합니다. 타사와 다른 서비스를 활용하여 많은 고객을 
              보유하고 있으며 가격 또한 저렴한 가격으로 이용하실 수 있습니다. 많은 고객들이 부담 없이 쉽게 접할 수 있도록 노력하고 있습니다.
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Harum saepe dolorum unde voluptates assumenda odit cum fugiat, velit laudantium delectus!
            </p>
          </div>
        </div>
        <div class="form2">
          <img src="../images/logo의미+사진.png" width="450" height="230" alt="marry">
          <div class="content-text">
            <h3 class="sub">2. DASH의 로고에는 이런 뜻이?</h3>
            <P>DASH라는 로고가 만들어진 이유!! Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum consequatur vero at quos dolorem beatae ad provident laboriosam nesciunt, enim perspiciatis repellat distinctio sequi ullam non quidem animi. Assumenda, aperiam?</P>
          </div>
        </div>
        <div class="form3">
          <img src="../images/DASH직원현황.png" width="450" height="230" alt="marry">
          <div class="content-text">
            <h3 class="sub">3. DASH 직원현황</h3>
            <P>저희 DASH직원은 총 4명으로 이루어져 Lorem ipsum dolor sit amet. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum consequatur vero at quos dolorem beatae ad provident laboriosam nesciunt, enim perspiciatis repellat distinctio sequi ullam non quidem animi. Assumenda, aperiam?</P>
          </div>
        </div>
        <div class="form4">
          <img src="../images/결혼사진.jpg" width="450" height="230" alt="marry">
          <div class="content-text">
            <h3 class="sub">4. DASH만의 특별한 혜택</h3>
            <P>회원 가입시 랜덤매칭 3회 서비스 (랜덤매칭 약관 확인 바람)를 제공해 드리고 있으며
              타사에 비해서 저렴한 가격뿐만 아니라 할인 이벤트까지 더해져 부담없이 이용 가능합니다.
            </P>
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
        <script src="../script/loginSession2.js"></script>
</body>
</html>
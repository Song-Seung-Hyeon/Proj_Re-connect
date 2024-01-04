<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>DASH 결혼정보회사:: 1234-5678</title>
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

    <!-- 가장 기본이고 우선순위가 약한거 순서대로 위에 두는거라 reset을 맨위에 -->
    <link rel="icon" href="images/favicon.png" />
    <link rel="stylesheet" href="CSS/reset.css" />

    <!-- header footer를 그 바로 밑에  -->
    <link rel="stylesheet" href="CSS/header_footer.css" />
    <!-- <link rel="stylesheet" href="../CSS/header_style.css" />
    <link rel="stylesheet" href="../CSS/footer_style.css" /> -->

    <link rel="stylesheet" href="CSS/index.css" />
    <!-- 다 때려넣는 css는 index.css로 정리했음 -->
  </head>

  <body>
    <!-- 헤더 -->
    <header>
      <div class="header">
        <div class="air"></div>
        <a href="index.jsp" id="logo">
          <img src="images/logo.svg" alt="로고" />
        </a>
        <div class="login_menu" id="loginMenu">
          <div id="loginStatus"></div>
          <!-- 여기바뀜 -->
        </div>
      </div>
      <nav class="nav">
        <a href="html/index.jsp" id="logo2">
          <img src="images/logo.svg" alt="로고" width="95" />
        </a>
        <ul class="gnb">
          <!-- <div id="test"></div> -->
          <li class="gnb-menu">
            <a href="#" class="menu-btn">회사소개</a>
            <ul class="sub-menu">
              <li><a href="html/dash.jsp">Dash란?</a></li>
              <li><a href="html/greeting.jsp">인사말</a></li>
              <li><a href="html/manager.jsp">커플 매니저 소개</a></li>
            </ul>
          </li>

          <li class="gnb-menu">
            <a href="#" class="menu-btn">커뮤니티</a>
            <ul class="sub-menu">
              <li><a href="html/notice.jsp">공지사항</a></li>
              <li><a href="html/board_main.jsp">문의하기</a></li>
              <li><a href="html/event.jsp">이벤트</a></li>
              <li><a href="html/FAQ.jsp">FAQ</a></li>
            </ul>
          </li>

          <li class="gnb-menu">
            <a href="#" class="menu-btn">이용안내</a>
            <ul class="sub-menu">
              <li><a href="html/estimate.jsp">상담예약</a></li>
              <li><a href="html/price.jsp">이용요금</a></li>
            </ul>
          </li>

          <li class="gnb-menu">
            <a href="#" class="menu-btn">후기정보</a>
            <ul class="sub-menu">
              <li><a href="html/mgr_reviews.jsp">매니저 후기</a></li>
              <li><a href="html/interview.jsp">인터뷰</a></li>
            </ul>
          </li>

          <li class="gnb-menu">
            <a href="#" class="menu-btn">매칭하기</a>
            <ul class="sub-menu">
              <li><a href="html/matching.jsp">Dash매칭</a></li>
              <li><a href="html/bestmember.jsp">This Is Me</a></li>
            </ul>
          </li>
        </ul>
        <button class="nav-icon">
          <iconify-icon icon="ph:list-fill"></iconify-icon>
        </button>
      </nav>
      <div class="dim-layer"></div>
    </header>

    <!-- wrap은 감싼다는 의미기에 보통 이렇게 전체를 감싸는 코드에 한번 감싸줌 -->
    <div class="index_wrap">
      <section class="area_1"></section>

      <section class="area_2">
        <div>
          우리 다시 만나요,
          <br />
          우연히.
        </div>
      </section>

      <section class="area_3">
        <div class="container">
          <div class="inner1"></div>
          <div class="inner2">
            <h5>
              <span>그물망</span>
              신원인증
            </h5>

            <p>
              제3자 위탁없이
              <br />
              100% 본사 신원인증팀이 진행합니다.
            </p>

            <button>
              <a href="html/dash.jsp">자세히 보러가기-></a>
            </button>

            <div>
              <p>신속한만남주선</p>
              <p>무제한프로필 추천</p>
              <p>2:1 맞춤관리</p>
            </div>
          </div>
        </div>
      </section>

      <section class="area_4">
        <div class="container">
          <div class="inner_1">
            <div>
              <ul>
                <li>서비스안내</li>
                <li>
                  <img src="images/dash_se.svg" alt="" />
                </li>
                <li>
                  DASH의 서비스가 궁금하신가요?
                  <br />
                  회원님께 적합한 서비스를 제안해드립니다.
                </li>
              </ul>
              <a href="#">
                <button>자세히 보러가기 -></button>
              </a>
            </div>

            <a href="#">
              <div class="service_1"></div>
            </a>
            <a href="#">
              <div class="service_2"></div>
            </a>
          </div>

          <div class="inner_2">
            <div class="profile">
              <div class="profile_img">
                <img src="images/humen_01.svg" />
              </div>
              <div class="txt_content">
                <h6>송승현</h6>
                <p>카페매니저/서울본점</p>
                <p>
                  서로에게 기가 막힌 타이밍에 서로의 인생에 자연스레 등장해 주는
                  것이 그것이 "인연" 입니다. 인연은 기다리는 것이 아닙니다.
                  선택과 용기와 결단이 필요합니다.
                </p>

                <div class="btn_group">
                  <button class="btn_01">
                    <a href="#">매니저 소개</a>
                  </button>
                  <button><a href="#">상담하기</a></button>
                </div>
              </div>
            </div>
            <div class="profile">
              <div class="profile_img">
                <img src="images/humen_02.svg" />
              </div>
              <div class="txt_content">
                <h6>유세나</h6>
                <p>카페매니저/서울본점</p>
                <p>
                  당신의 조건과 마음의 목소리를 듣고, 어울리는 인연을 찾아주는
                  사랑의 큐피트 유세나 커플매니저 입니다.
                </p>

                <div class="btn_group">
                  <button class="btn_01">
                    <a href="#">매니저 소개</a>
                  </button>
                  <button><a href="#">상담하기</a></button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="area_5">
        <h4>회원 인터뷰</h4>
        <p>성혼 커플의 러브스토리를 소개합니다.</p>

        <div class="container_01">
          <div class="inter_1">
            <a href="#"><img src="images/inter_img.svg" alt="" /></a>
          </div>

          <div class="inter_2">
            <li class="love_1">
              <img src="images/love_01.png" alt="" />
            </li>
            <li class="love_2">
              <img src="images/love_02.png" alt="" />
            </li>
            <li class="love_3">
              <img src="images/love_03.png" alt="" />
            </li>
            <li class="love_4">
              <img src="images/love_04.png" alt="" />
            </li>
            <li class="love_5">
              <img src="images/love_05.png" alt="" />
            </li>
            <li class="love_6">
              <img src="images/love_06.png" alt="" />
            </li>
          </div>
        </div>
      </section>

      <section class="area_6">
        <h4>회원 현황</h4>

        <p class="marriage">
          <span>초혼 </span>
          <span>/ </span>
          <span>재혼</span>
        </p>

        <div class="container_02">
          <div class="current_1">
            <div class="inner_01">
              <p>남성회원의 연봉은?</p>
              <li>
                <img src="images/down_01.png" />
              </li>
            </div>

            <div class="inner_02">
              <p>남녀 평균키는?</p>
              <li>
                <img src="images/down_02.png" />
              </li>
            </div>

            <div class="inner_03">
              <p>여성회원 학력은?</p>
              <li>
                <img src="images/down_03.png" />
              </li>
            </div>
          </div>
        </div>
      </section>
    </div>

    <!-- 아래 footer 하단 고정 -->
    <footer class="footer">
      <div class="footer-content">
        <h3>(주)Re:connect</h3>
        <span>대표 : Recycle</span>
        <span>사업자등록번호 : 999-99-99999</span>
        <span
          >주소 : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span
        >
        <span>Tel.042-222-2402</span>
        <ul class="footer-socials">
          <li>
            <a href="#"><img src="images/ico_image.svg" alt="ico_image" /></a>
            <!-- 임시로 로그아웃 넣어 놨음 -->
          </li>
          <li>
            <a href="https://www.instagram.com/"
              ><img src="images/ico_instagram.svg" alt="ico_instagram"
            /></a>
          </li>
          <li>
            <a href="https://www.youtube.com/"
              ><img src="images/ico_youtube.svg" alt="ico_youtube"
            /></a>
          </li>
        </ul>
        <div class="footer-menu">
          <p>
            copyright &copy;2023 by
            <a href="index.jsp">Re:connect.</a>
            All pictures cannot be copied without permission.
          </p>
          <ul class="f-menu">
            <li><a href="html/index.jsp">Home</a></li>
            <li><a href="html/dash.jsp">About</a></li>
            <li><a href="html/estimate.jsp">Contact</a></li>
            <li><a href="html/FAQ.jsp">FAQ</a></li>
          </ul>
        </div>
      </div>
    </footer>

    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <script src="script/index.js"></script>
    <script src="script/loginSession.js"></script>
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <title> FAQ | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH </title>
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
  <link rel="stylesheet" href="../CSS/faq.css">
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
  
  <main>
    <nav class="side-bar">
      <h2>커뮤니티</h2>
      <ul class="sb-list">
        <li><a href="notice.jsp">공지사항</a></li>
        <li><a href="board_main.jsp">문의하기</a></li>
        <li><a href="event.jsp">이벤트</a></li>
        <li><a href="FAQ.jsp">FAQ</a></li>
      </ul>
    </nav>
    <div id="box"></div>
    <div class="main">

      <h2 class="title">자주 묻는 질문 </h2>
      <p class="sub_title">(FAQ)</p>
      
    <button type="button" class="collapsible active"><iconify-icon icon="emojione-monotone:letter-q" width="30"
        style="color: #A0C2AC;"></iconify-icon>아이디와 비밀번호를 변경하고 싶습니다.</button>
    <div class="content">
      <div class="test">
        <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
        <p>아이디는 변경이 불가능 합니다.
        </br>그래도 변경을 원하시는 경우, 현재 온라인 회원탈퇴를 하신 후 신규가입을 해주세요.
      </br>
    </br>하지만 비밀번호는 개인의 정보보호를 위해 수시로 변경할 수 있도록 하였습니다.
  </br> &#60;MY DASH&#62;<회원정보변경> 메뉴를 이용하시면 됩니다.
</br>
</br>비밀번호는 절대 외부로 노출되어 안 되므로 본인만이 아는 것으로 입력해주시기 바랍니다.
</p>
</div>
</div>

<button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
  style="color: #A0C2AC;"></iconify-icon>아이디와 비밀번호를 분실했습니다.</button>
  <div class="content">
    <div class="test">
      <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
      <p>아이디,비밀번호를 분실하신 분은 로그인 페이지 하단에서 아이디/비밀번호 찾기를 이용해 주세요.
      </br>
    </br>아이디 및 비밀번호 찾기에서 확인되지 않으면
  </br>웹마스터(dss04041@naver.com)에게 문의해 주십시오.
</p>
</div>
</div>

<button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
  style="color: #A0C2AC;"></iconify-icon>온라인 회원탈퇴를 하고 싶은데, 어떻게 해야 하나요?</button>
  <div class="content">
    <div class="test">
      <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
      <p>
      먼저, 로그인을 하시고 온라인 회원탈퇴를 하시면, 탈퇴 처리가 됩니다.
    </br>
          </br>아이디 외에 사이트에 남기셨던 이상형찾기, 회원가입 시물레이션 등 컨텐츠DB도 삭제를 원하시면 개인정보 삭제 신청도 해주시길 바랍니다.
        </br>
          </br>회원탈퇴 처리일은 신청하신 당일에 바로 처리가 됩니다.
        </p>
      </div>
    </div>
    
    <button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
      style="color: #A0C2AC;"></iconify-icon>제 아이디가 휴면 아이디입니다. 휴면 아이디 해지(재사용)가 가능한가요?</button>
      <div class="content">
        <div class="test">
          <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
          <p>네..가능합니다.
          </br>
        </br>DASH 휴면 아이디는 언제든지 재사용이 가능한 상태입니다.
      </br>로그인 하시고, 본인인증(핸드폰, 이메일)를 받으신 후 이용하시면 됩니다.
    </br>가입당시 기입하셨던 정보가 불분명하여 재사용이 안되는 경우에는 회원님의 아이디, 성명을 dss04041@naver.com으로 보내주시면 신속하게 처리해 드리겠습니다.
  </p>
</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   </div>  
<button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
  style="color: #A0C2AC;"></iconify-icon>휴면 안내 메일을 받았는데, 휴면 정책에 대해 자세히 설명해 주세요.</button>
  <div class="content">
    <div class="test">
      <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
      <p>정보통신망 이용촉진 및 정보보호 등에 관한 법률에 따라, 장기간 서비스를 이용하지 않는 온라인 회원의 개인정보를 보호하기 위해 아래와 같이 휴면 정책을 시행합니다.</br>
      </br>
      1. 1년 이상 DASH를 이용(로그인)하지 않은 아이디는 휴면 아이디로 전환됩니다.</br>
      -휴면전환 대상 회원에게는 휴면 아이디로 전환되기 30일 전에 안내 메일로 알려드립니다. 안내 메일을 받고 한달(30일) 이내에 로그인하시거나 듀오의 컨텐츠(이상형찾기, 연애적성검사, 안내자료 요청</br>
      등)를 이용하시면 휴면아이디로 전환되지 않고 계속 이용하실 수 있습니다.</br>
          그러나 위의 내역이 없을 경우 휴면 아이디로 자동 전환됩니다.</br>
        </br>
        2. 휴면 아이디로 전환된 듀오회원의 개인정보는 별도로 분리하여 안전하게 보관됩니다.</br>
        -휴면 아이디는 본인인증(휴대폰, 이메일)을 통해서 재사용이 가능하며 그 외에는 다른 용도로 사용되지 않습니다.</br>
      </br>
      3. 휴면 아이디 재사용은 듀오에 로그인을 하게 되면, 프로세스가 제공됩니다.</br>
      -휴면 아이디로 전환된 후, 별도의 보관되는 기간(5년) 내에 언제든지 웹상에서 재사용이 가능합니다. 휴면 아이디는 본인인증(휴대폰, 이메일)을 통해 바로 재사용이 가능합니다.</br>
    </br>
    4. 별도로 보관되어 있는 기간 내에 휴면 아이디 재사용을 하지 않을 경우, 아이디 및 회원정보는 지체없이 파기됩니다.</br>
  </br>
      </br>
    </br>
          <관계법령></br>
        </br>
        정보통신망법 시행령 제16조(개인정보의 파기 등)</br>
          </br>
            ① 법 제29조제2항에서 "대통령령으로 정하는 기간"이란 1년을 말한다. 다만, 다음 각 호의 경우에는 해당 호에 따른 기간으로 한다.</br>
          </br>
          1. 다른 법령에서 별도의 기간을 정하고 있는 경우: 해당 법령에서 정한 기간</br>
          2. 이용자의 요청에 따라 기간을 달리 정한 경우: 달리 정한 기간</br>
        </br>
        ② 정보통신서비스 제공자등은 이용자가 정보통신서비스를 제1항의 기간 동안 이용하지 아니하는 경우에는 이용자의 개인정보를</br> 해당 기간 경과 후 즉시 파기하거나 다른 이용자의 개인정보와 분리하여 별도로
        저장ㆍ관리하여야 한다.</br>
      </br>
      ③ 정보통신서비스 제공자등은 제2항에 따라 개인정보를 별도로 저장ㆍ관리하는 경우에는 법 또는 다른 법률에 특별한 규정이 있는 경우를</br> 제외하고는 해당 개인정보를 이용하거나 제공하여서는 아니 된다.
    </br>
  </br>
            ④ 정보통신서비스 제공자등은 제1항의 기간 만료 30일 전까지 개인정보가 파기되거나 분리되어 저장ㆍ관리되는 사실과 기간 만료일 및</br> 해당 개인정보의 항목을 전자우편ㆍ서면ㆍ모사전송ㆍ전화 또는 이와
            유사한 방법 중 어느 하나의 방법으로 이용자에게 알려야 한다.
          </p>
        </div>
      </div>
      
      <button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
        style="color: #A0C2AC;"></iconify-icon>개인정보를 변경하고 싶습니다.</button>
        <div class="content">
          <div class="test">
            <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
            <p>로그인 후 	&#60;MY DASH&#62;에서 개인정보 수정을 통해 변경하면 됩니다.</br>
        </br>
            아이디, 이름, 출생년월일, 결혼경력, 핸드폰번호, 솔로/커플의 정보는 수정이 불가능하나, 이메일, 메일수신 여부 등 기타 내용은 자유롭게 변경하실 수 있습니다.
        </p>
      </div>
    </div>
    <button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
      style="color: #A0C2AC;"></iconify-icon>로그인 하는데 계속 에러가 납니다.</button>
      <div class="content">
        <div class="test">
          <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
          <p>DASH 사이트에 회원으로 가입이 되어 있지 않거나, 아이디/비밀번호가 잘못된 경우입니다.</br>
          </br>
          다시 한 번 아이디나 비밀번호를 확인하시고 로그인하시기 바랍니다.</br>
          그래도 해결이 안되면 웹마스터(dss04041@naver.com)에서 문의해주세요.
        </p>
      </div>
    </div>
    
    <button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
        style="color: #A0C2AC;"></iconify-icon>가입 절차 및 활동 절차를 알고 싶어요.</button>
        <div class="content">
      <div class="test">
        <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
        <p>1.문의 및 안내자료요청</br>
        </br>
        2.1:1 맞춤상담</br>
      </br>
      3.정회원 가입(데이타폼 작성, 신원인증 및 입회심사)</br>
    </br>
          -데이타폼 작성</br>
          회원 가입을 결정하면 데이터폼을 작성하게 됩니다. 본인이 기재한 프로필의 내용은 본인의 신뢰는 물론 상대를 찾아드리는 기초자료가 되므로
          정확하고 자세하게 기입해주셔야 합니다.
        </br>
        -신원인증 및 입회심사
        데이터폼, 혼인관계증명서, 가족관계증명서, 졸업증명서, 재직증명서 등의 4가지 신원 인증을 위한 서류를 제출하면 회원 인증 시스템을 통해 확인하게 됩니다. 회원가입이 승인되면 듀오DMS(DUO</br>
        Maching System)에 등록됩니다.</br>
      </br>
      4.매칭(1:1매칭 or 멤버스클럽검색 or 미팅파티)</br>
    </br>
          5.만남</br>
        </br>
        6.교제</br>
        </br>
        7.결혼</br>
        </p>
      </div>
    </div>
    
    <button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
        style="color: #A0C2AC;"></iconify-icon>주말이나 휴일에도 상담이 가능한가요?</button>
        <div class="content">
      <div class="test">
        <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
        <p>DASH는 보다 많은 분들에게 상담의 기회를 드리고자 주말이나 휴일에도 상담을 진행하고 있습니다. 따라서 언제든지 1577-2229로 문의 주시면 상담이 가능합니다.</p>
      </div>
    </div>
    
    <button type="button" class="collapsible"><iconify-icon icon="emojione-monotone:letter-q" width="30"
        style="color: #A0C2AC;"></iconify-icon>재혼회원 가입시 나이 제한이 있나요?</button>
        <div class="content">
      <div class="test">
        <iconify-icon icon="icon-park-outline:handle-a" width="30" style="color: #A0C2AC;"></iconify-icon>
        <p>연령의 제한은 없습니다. 재혼은 이혼,사별,사실혼의 경험이 있는 회원들이 커플매니저를 통해 개인적인 고민을 함께 나누면서 새로운 출발을 구상할 수 있는 서비스입니다. 상담을 통해 좀 더 구체적인
          안내를 받아보시기 바랍니다.
        </p>
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
            <li><a href="../index.jsp">Home</a></li>
            <li><a href="dash.jsp">About</a></li>
            <li><a href="estimate.jsp">Contact</a></li>
            <li><a href="FAQ.jsp">FAQ</a></li>
          </ul>
        </div>
      </div>
    </footer>
  <script src="../script/faq.js"></script>
  <script src="../script/loginSession2.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
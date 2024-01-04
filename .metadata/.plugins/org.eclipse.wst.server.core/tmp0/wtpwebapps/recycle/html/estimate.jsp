<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>상담예약 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
  <meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/header_footer.css" />
  <link rel="stylesheet" href="../CSS/estimate.css" />
  <link rel="stylesheet" href="../CSS/reset.css" />
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
    <!-- 사이드바 -->
    <nav class="side-bar">
      <h2>이용안내</h2>
      <ul class="sb-list">
        <!-- <li><a href="/dash.jsp">Dash란?</a></li> -->
        <li><a href="estimate.jsp">상담예약</a></li>
        <li><a href="price.jsp">이용요금</a></li>
      </ul>
    </nav>
    <!-- 메인 -->
    <div class="container">
      <div id="box"></div>
      <h2 class="title">상담예약</h2>
      <p class="sub-title">
        가입비안내, 매칭방법 등 가입관련 안내자료를 무료로 보내드립니다.
      </p>
      <form action="../jsp/estimateData.jsp" accept-charset="UTF-8" method="post" class="form">
        <div class="container2">
          <div class="select-date">
            <p class="compartment">1.상담 일정 선택</p>
            <!-- 상담일정 JS로 달력모양만들기 -->
            <table class="scriptCalendar">
              <thead>
                <tr>
                  <td class="calendarBtn" id="btnPrevCalendar">&#60;&#60;</td>
                  <td colspan="5">
                    <span id="calYear">YYYY</span>년
                    <span id="calMonth">MM</span>월
                  </td>
                  <td class="calendarBtn" id="nextNextCalendar">
                    &#62;&#62;
                  </td>
                </tr>
                <tr>
                  <td>Sun</td>
                  <td>Mon</td>
                  <td>Tue</td>
                  <td>Wed</td>
                  <td>Thu</td>
                  <td>Fri</td>
                  <td>Sat</td>
                </tr>
              </thead>
              <tbody></tbody>
            </table>
            <label for="consulting">상담 예정일:</label>
            <input type="date" id="consulting" name="consulting_date" required /><br />
          </div>

          <br />
          <div class="info">
            <p class="compartment">2.문의자 정보 입력</p>
            <p class="para2">* 필수입력 입니다.</p>
            <!-- 성별 -->
            <div class="form1">
              <div class="form-text">성별 <span class="ast">*</span></div>
              <div class="form-content">
                <input type="radio" id="male" name="user_gender" value="0" /><label for="male">남자</label>
                <input type="radio" id="female" name="user_gender" value="1" /><label for="female">여자</label>
              </div>
            </div>

            <!-- 성함 -->
            <div class="form2">
              <div class="form-text">성함 <span class="ast">*</span></div>
              <div class="form-content">
                <input type="text" name="name" placeholder="성함을 입력해 주세요." required />
              </div>
            </div>

            <!-- 생년 -->
            <div class="form2">
              <div class="form-text">출생년도 <span class="ast">*</span></div>
              <div class="form-content">
                <input type="text" name="year" maxlength="4" placeholder="숫자 4자리" required="" />
              </div>
            </div>

            <!-- 직업 -->
            <div class="form2">
              <div class="form-text">직업 <span class="ast">* </span></div>
              <div class="form-content">
                <select name="career" required="" class="dropdown">
                  <option value="" selected="" selected disabled>선택해 주세요.</option>
                  <option value="판사">판사</option>
                  <option value="검사">검사</option>
                  <option value="변호사">변호사</option>
                  <option value="전문의">전문의</option>
                  <option value="치과의사">치과의사</option>
                  <option value="한의사">한의사</option>
                  <option value="수의사">수의사</option>
                  <option value="약사">약사</option>
                  <option value="회계사">회계사</option>
                  <option value="변리사">변리사</option>
                  <option value="기타전문직">전문직</option>
                  <option value="대학교수">대학교수</option>
                  <option value="펀드매니저">펀드매니저</option>
                  <option value="연구원">연구원</option>
                  <option value="CEO">CEO</option>
                  <option value="임대업">임대업</option>
                  <option value="방송/연예인">방송/연예인</option>
                  <option value="문화/예술계통">문화/예술계통</option>
                  <option value="프리랜서">프리랜서</option>
                  <option value="승무원/항공관련">승무원/항공관련</option>
                  <option value="공기업">공기업</option>
                  <option value="대기업">대기업</option>
                  <option value="금융계열">금융계열</option>
                  <option value="자영업">자영업</option>
                  <option value="일반회사원">일반회사원</option>
                  <option value="일반공무원">일반공무원</option>
                  <option value="경찰/군인">경찰/군인</option>
                  <option value="종교인">종교인</option>
                  <option value="병원기술직">병원기술직</option>
                  <option value="교사(임용교사)">교사(임용교사)</option>
                  <option value="유치원 교사">유치원 교사</option>
                  <option value="교직원">교직원</option>
                  <option value="간호사">간호사</option>
                  <option value="대학생">대학생</option>
                  <option value="기타">기타</option>
                </select>
              </div>
            </div>

            <!-- 학력 -->
            <div class="form2">
              <div class="form-text">학력 <span class="ast">*</span></div>
              <div class="form-content">
                <select name="education" required class="dropdown">
                  <option value="고등학교 졸업">고등학교졸업</option>
                  <option value="전문대 졸업">전문대졸업</option>
                  <option value="대학교 졸업" selected>대학교졸업</option>
                  <option value="석사">석사</option>
                  <option value="박사">박사</option>
                  <option value="기타">기타</option>
                </select>
              </div>
            </div>

            <!-- 지역 -->
            <div class="form2">
              <div class="form-text">지역 <span class="ast">*</span></div>
              <div class="form-content">
                <select name="country" required="" class="dropdown">
                  <option value="">선택해 주세요.</option>
                  <option value="서울특별시">서울특별시</option>
                  <option value="경기도">경기도</option>
                  <option value="인천광역시">인천광역시</option>
                  <option value="부산광역시">부산광역시</option>
                  <option value="울산광역시">울산광역시</option>
                  <option value="세종특별자치시">세종특별자치시</option>
                  <option value="대구광역시">대구광역시</option>
                  <option value="대전광역시">대전광역시</option>
                  <option value="광주광역시">광주광역시</option>
                  <option value="강원특별자치도">강원특별자치도</option>
                  <option value="충청남도">충청남도</option>
                  <option value="충청북도">충청북도</option>
                  <option value="경상남도">경상남도</option>
                  <option value="경상북도">경상북도</option>
                  <option value="전라남도">전라남도</option>
                  <option value="전라북도">전라북도</option>
                  <option value="제주특별자치도">제주특별자치도</option>
                  <option value="해외거주">해외거주</option>
                </select>
              </div>
            </div>

            <!-- 연락처 -->
            <div class="form2">
              <div class="form-text">연락처 <span class="ast">*</span></div>
              <div class="form-content">
                <select name="user_phone" required="" class="dropdown">
                  <option value="">::선택::</option>
                  <option value="010">010</option>
                  <option value="011">011</option>
                  <option value="016">016</option>
                  <option value="017">017</option>
                  <option value="018">018</option>
                  <option value="019">019</option>
                </select>
                <input class="phone" type="text" name="phone_last" required maxlength="9" placeholder="숫자만 입력" oninput="autoHyphen_estimate(this)"/>
              </div>
            </div>

            <div class="form2">
              <div class="form-text">이메일</div>
              <div class="form-content">
                <input type="text" id="emailId" name="email" placeholder="이메일 입력" />@
                <input type="text" id="textEmail" name="email_diract" />
                <select id="email-select" class="dropdown" name="email_select" onchange="checkEmailAddy()">
                  <option value=" " selected>선택해주세요</option>
                  <option value="naver.com">naver.com</option>
                  <option value="google.com">google.com</option>
                  <option value="hanmail.net">daum.net</option>
                  <option value="nate.com">nate.com</option>
                  <option value="1">::직접 입력::</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="submit">
          <p class="agree-content">
            * 개인정보의 수집· 이용 목적 - 회원관리 및 서비스 이용 의사 확인 -
            테스트 결과 도출 및 안내자료 전송을 위한 정보 수집 - 결혼관련
            서비스 상담 및 이용 권유, 각종 서비스 및 이벤트 안내 - 경품 당첨시
            본인확인과 경품 배송 목적 - 마케팅 광고에의 활용, 광고성 정보 제공
            * 수집하는 개인정보의 항목 - 성명, 성별, 법정생년월일, 결혼경력,
            신장, 체중, 거주지역, 직업, 학력, 휴대전화번호, 이메일 주소 등 *
            개인정보의 보유 및 이용기간 - 수집된 개인정보는 처리 목적 달성 등
            그 개인정보가 불필요하게 되었을 때에는 삭제합니다. - 정보제공자가
            개인정보 삭제를 요청할 경우 즉시 삭제합니다. - 단, 다음의 정보에
            대해서는 아래의 이유로 명시한 기간 동안 보존합니다. 1) 회사 내부
            방침에 의한 정보보유 사유 - 부정이용기록 o 보존 이유 : 부정 이용
            방지 o 보존 기간 : 1년 2) 관련법령에 의한 정보보유 사유 상법,
            전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에
            의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한
            기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그
            보관의 목적으로만 이용하며 보존기간은 아래와 같습니다. - 계약 또는
            청약철회 등에 관한 기록 o 보존 이유 : 전자상거래 등에서의
            소비자보호에 관한 법률 o 보존 기간 : 5년 - 대금결제 및 재화 등의
            공급에 관한 기록 o 보존 이유 : 전자상거래 등에서의 소비자보호에
            관한 법률 o 보존 기간 : 5년 - 소비자의 불만 또는 분쟁처리에 관한
            기록 o 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 o
            보존 기간 : 3년 - 전자금융 거래에 관한 기록 o 보존 이유 :
            전자금융거래법 o 보존 기간 : 5년 - 웹사이트 방문 기록 o 보존 이유
            : 통신비밀보호법 o 보존 기간 : 3개월 * 개인정보의 수집 및 이용에
            대한 동의 거부 관련 - 당사는 서비스 제공에 필요한 최소한의
            정보만을 수집합니다. - 이용자는 개인정보의 수집 및 이용 동의에
            거부하실 수 있으며, 다만 이 경우 회원가입 또는 상담신청이 제한될
            수 있습니다.
          </p>
          <div class="form3">
            <div class="agree">
              <label>
                <input type="checkbox" name="agree" required />개인정보처리방침에 동의합니다.
              </label>
            </div>
          </div>
          <button type="submit" id="submit-btn">상담 신청하기</button>
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
  <script></script>
  <script src="../script/estimate.js"></script>
  <script src="../script/header.js"></script>
  <script src="../script/loginSession2.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

</body>

</html>
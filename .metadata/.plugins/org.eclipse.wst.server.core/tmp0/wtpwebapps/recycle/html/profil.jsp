<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:include page="../jsp/user_list_component.jsp" />

<%
String userId = (String) request.getAttribute("userId");
String userPw = (String) request.getAttribute("userPw");
String userName = (String) request.getAttribute("userName");
String userGender = (String) request.getAttribute("userGender");
String userBirth = (String) request.getAttribute("userBirth");
String userPhone = (String) request.getAttribute("userPhone");
String userEmail = (String) request.getAttribute("userEmail");
String userCountry = (String) request.getAttribute("userCountry");
String userCareer = (String) request.getAttribute("userCareer");
String userEducation = (String) request.getAttribute("userEducation");
String userHeight = (String) request.getAttribute("userHeight");
String userBody = (String) request.getAttribute("userBody");
String userSalary = (String) request.getAttribute("userSalary");
String userMarital = (String) request.getAttribute("userMarital");
String userChildren = (String) request.getAttribute("userChildren");
String userChildrenCount = (String) request.getAttribute("userChildrenCount");
String userBlood = (String) request.getAttribute("userBlood");
String userMBTI = (String) request.getAttribute("userMBTI");
String userReligion = (String) request.getAttribute("userReligion");
String userAlcohol = (String) request.getAttribute("userAlcohol");
String userAlcoholCount = (String) request.getAttribute("userAlcoholCount");
String userSmoking = (String) request.getAttribute("userSmoking");
String userHobbies = (String) request.getAttribute("userHobbies");
String userPersonality = (String) request.getAttribute("userPersonality");
String userMarriageValues = (String) request.getAttribute("userMarriageValues");
String userIntroduce = (String) request.getAttribute("userIntroduce");
String userPhotoURL = (String) request.getAttribute("userPhotoURL");
String imageName = (String) request.getAttribute("imageName");

String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";
String maritalString = (userMarital != null && userMarital.equals("0")) ? "초혼" : "재혼";
String childrenString = (userChildren != null && userChildren.equals("0")) ? "자녀 무" : "자녀 유";
String alcoholString = (userAlcohol != null && userAlcohol.equals("0")) ? "비음주" : "음주";
String smokingString = (userSmoking != null && userSmoking.equals("0")) ? "비흡연" : "흡연";

%>


<!DOCTYPE html>
<html lang="ko">

<head>
<title>마이프로필 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keyworeds"
   content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
<meta name="description"
   content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
<link rel="icon" href="../images/favicon.png" />
<link rel="stylesheet" href="../CSS/profil.css" />
<link rel="stylesheet" href="../CSS/footer_style.css" />
<link rel="stylesheet" href="../CSS/reset.css" />


<script
   src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
<script
   src="https://cdn.anychart.com/releases/8.10.0/js/anychart-bundle.min.js"></script>
</head>

<body>

   <!-- 마이페이지 헤더 -->
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
                  <img src="<%=request.getContextPath()%>/images/<%=imageName%>"
                     alt="user_img" />
               </figure>
            </div>
         </button>

         <div class="layer_member">
            <ul>
               <li><img
                  src="<%=request.getContextPath()%>/images/<%=imageName%>"
                  alt="user_img" /><span><%=userName%></span> <!-- 유저이미지, 이름 입력 --></li>
               <li><a href="account.jsp"><span>개인정보 수정</span> <iconify-icon
                        icon="la:edit-solid" width="30"></iconify-icon></a></li>
               <li><a href="../jsp/logout.jsp"><span>로그아웃</span> <iconify-icon
                        icon="material-symbols:logout" width="25"></iconify-icon></a></li>
            </ul>
         </div>
      </div>
   </header>

   <!-- 마이페이지 사이드메뉴 -->
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
   <main>
      <div class="container">
         <div class="container_main">
            <div class="content">
               <h1>마이프로필</h1>
               <div class="my_profil">
                  <div class="my_profil_header">
                     <div class="photo_wrap">
                        <span class="photo" id="myhome_profile_photo"> <img
                           src="<%=request.getContextPath()%>/images/<%=imageName%>"
                           alt="프로필 이미지">
                        </span> <span class="photo_border"></span>
                        <div class="photo_edit_btn" id="edit_menu">
                           <input type="file" id="profile_picture_input" accept="image/*"
                              style="display: none" />
                        </div>
                     </div>
                     <div id="wordcloud-container" style="width: 450px;"></div>
                  </div>
                  <div class="information">
                     <table class="information_table">
                        <tr>
                           <th>* 이름</th>
                           <td><%=userName%></td>
                        </tr>
                        <tr>
                           <th>* 성별</th>
                           <td><%=genderString%></td>
                        </tr>
                        <tr>
                           <th>* 나이</th>
                           <td><%=userBirth%></td>
                        </tr>
                        <tr>
                           <th>* 아이디</th>
                           <td><%=userId%></td>
                        </tr>

                        <tr>
                           <th>* 전화번호</th>
                           <td><%=userPhone%></td>
                        </tr>
                        <tr>
                           <th>* 이메일</th>
                           <td><%=userEmail%></td>
                        </tr>
                        <tr>
                           <th>* 학력</th>
                           <td><%=userEducation%></td>
                        </tr>
                        <tr>
                           <th>직업</th>
                           <td>${userCareer != null ? userCareer : ''}</td>
                        </tr>
                     </table>
                     <table class="information_table">
                        <tr>
                           <th>거주지역</th>
                           <td><%=userCountry%></td>
                        </tr>
                        <tr>
                           <th>키</th>
                           <td>${userHeight != null ? userHeight : ''}</td>
                        </tr>
                        <tr>
                           <th>체형</th>
                           <td>${userBody != null ? userBody : ''}</td>
                        </tr>
                        <tr>
                           <th>연봉</th>
                           <td>
                              <%
                              if (userSalary != null) {
                                 if (userSalary.equals("-2000")) {
                                    out.println("2000만원 미만");
                                 } else if (userSalary.equals("-3000")) {
                                    out.println("2천만원 이상 - 3천만원 미만");
                                 } else if (userSalary.equals("-4000")) {
                                    out.println("3천만원 이상 - 4천만원 미만");
                                 } else if (userSalary.equals("-5000")) {
                                    out.println("4천만원 이상 - 5천만원 미만");
                                 } else if (userSalary.equals("-6000")) {
                                    out.println("5천만원 이상 - 6천만원 미만");
                                 } else if (userSalary.equals("-7000")) {
                                    out.println("6천만원 이상 - 7천만원 미만");
                                 } else if (userSalary.equals("-8000")) {
                                    out.println("7천만원 이상 - 8천만원 미만");
                                 } else if (userSalary.equals("-9000")) {
                                    out.println("8천만원 이상 - 9천만원 미만");
                                 } else if (userSalary.equals("-10000")) {
                                    out.println("9천만원 이상 - 1억 미만");
                                 } else if (userSalary.equals("-10000-20000")) {
                                    out.println("1억 이상 - 2억 미만");
                                 } else if (userSalary.equals("-20000-30000")) {
                                    out.println("2억 이상 - 3억 미만");
                                 } else if (userSalary.equals("-30000-40000")) {
                                    out.println("3억 이상 - 4억 미만");
                                 } else if (userSalary.equals("-40000-50000")) {
                                    out.println("4억 이상 - 5억 미만");
                                 } else if (userSalary.equals("50000-")) {
                                    out.println("5억 이상");
                                 }
                              } else {
                                 out.println("없음");
                              }
                              %>
                           </td>
                        </tr>
                        <tr>
                           <th>혼인여부</th>
                           <td>${userMarital == 0 ? '초혼' : (userMarital == 1 ? '기혼' : '')}</td>
                        </tr>
                        <tr>
                           <th>자녀여부</th>
                           <td>${userChildren == 0 ? '자녀 무' : (userChildren == 1 ? '자녀 유' : '')}</td>
                        </tr>
                        <tr>
                           <th>자녀 수</th>
                           <td>${userChildrenCount != null ? userChildrenCount : ''}</td>
                        </tr>
                        <tr>
                           <th>관심사</th>
                           <td>${userHobbies != null ? userHobbies : ''}</td>
                        </tr>
                        <tr>
                           <th>혈액형</th>
                           <td>${userBlood != null ? userBlood : ''}</td>
                        </tr>
                        <tr>
                           <th>MBTI</th>
                           <td>${userMBTI != null ? userMBTI : ''}</td>
                        </tr>
                        <tr>
                           <th>종교</th>
                           <td>${userReligion != null ? userReligion : ''}</td>
                        </tr>
                        <tr>
                           <th>음주</th>
                           <td>${userAlcohol == 0 ? '비음주' : (userAlcohol == 1 ? '음주' : '')}</td>
                        </tr>
                        <tr>
                           <th>주량</th>
                           <td>${userAlcoholCount != null ? userAlcoholCount : ''} 병</td>
                        </tr>
                        <tr>
                           <th>흡연</th>
                           <td>${userSmoking == 0 ? '비흡연' : (userSmoking == 1 ? '흡연' : '')}</td>
                        </tr>
                        <tr>
                           <th>성격</th>
                           <td>${userPersonality != null ? userPersonality : ''}</td>
                        </tr>
                        <tr>
                           <th>결혼가치관</th>
                           <td>${userMarriageValues != null ? userMarriageValues : ''}</td>
                        </tr>
                        <tr>
                           <th>자기소개</th>
                           <td><textarea class="about_me" maxlength="500">${userIntroduce != null ? userIntroduce : ''}</textarea>
                           </td>
                        </tr>
                     </table>

                  </div>
                  <div class="amend_box">
                     <a href="account.jsp"><button type="button" class="amend_btn">수정하기</button></a>
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
         <span>대표 : Recycle</span> <span>사업자등록번호 : 999-99-99999</span> <span>주소
            : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span> <span>Tel.042-222-2402</span>
         <ul class="footer-socials">
            <li><a href="index_logout.jsp"><img
                  src="../images/ico_image.svg" alt="ico_image" /></a> <!-- 임시로 로그아웃 넣어 놨음 -->
            </li>
            <li><a href="account_manager.jsp"><img
                  src="../images/ico_instagram.svg" alt="ico_instagram" /></a> <!-- 임시로 커플매니저페이지 넣어 놨음 -->
            </li>
            <li><a href="admin_manager_management.jsp"><img
                  src="../images/ico_youtube.svg" alt="ico_youtube" /></a> <!-- 임시로 관리자페이지 넣어 놨음 -->
            </li>
         </ul>
         <div class="footer-menu">
            <p>
               copyright &copy;2023 by <a href="../index.jsp">Re:connect.</a> All
               pictures cannot be copied without permission.
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
   <script src="../script/profil.js"></script>

</body>

</html>
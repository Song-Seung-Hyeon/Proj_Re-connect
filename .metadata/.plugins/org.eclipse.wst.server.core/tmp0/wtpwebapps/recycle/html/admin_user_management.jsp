<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Period" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
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
  <title>admin 회원 관리 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
  <meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/admin_user_management.css" />
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
          <h1>회원관리</h1>

          <div>
            <p>일간 접속자수</p>
            <canvas id="myChart" ></canvas>
          </div>

          <div class="authority">
            <div class="search-box">

              <select name="user_search" class="user_search">
                <option value="성함">성함</option>
                <option value="ID">ID</option>
                <option value="사용권한">사용권한</option>
              </select>
              <input type="search">
              <button type="button" class="search-btn">조회</button>
              <!-- <button type="button" onclick="openModal('modal1')" class="add_btn">등록</button> -->
            </div>
            <div id="modal2" class="modal">
              <div class="modal-content">
                <h3 class="modal-heder">회원관리</h3>
                <div class="modal-text">
                  <form action="#" method="post" id="add_administrator" enctype="multipart/form-data">
                    <div class="add_info">
                      <table class="info">
                        <tr>
                          <td colspan="4"><img src="../images/손호준.jpg" alt="손호준"></td>
                        </tr>
                        <tr>
                          <td>이름</td>
                          <td>손호준</td>
                          <td>ID</td>
                          <td>asd1234</td>
                        </tr>
                        <tr>
                          <td>성별</td>
                          <td>남</td>
                          <td>연락처</td>
                          <td>010-1234-5678</td>
                        </tr>
                        <tr>
                          <td>생년월일</td>
                          <td>950415</td>
                          <td>이메일</td>
                          <td>tpsk0415@naver.com</td>
                        </tr>
                        <tr>
                          <td>나이</td>
                          <td>29</td>
                          <td>주소</td>
                          <td>대전 서구 용문동</td>
                        </tr>
                        <tr>
                          <td>매칭횟수</td>
                          <td>24</td>
                          <td>가입일</td>
                          <td>2023.08.16</td>
                        </tr>
                        <tr>
                          <td></td>
                          <td></td>
                          <td>문의사항</td>
                          <td>2</td>
                        </tr>
                        
                      </table>
                    </div>
                    <div class="btn_box">
                      <button type="submit" id="submit-authority" class="modal_btn active_btn">수정</button>
                      <button type="button" onclick="closeModal('modal2')" class="modal_btn">닫기</button>
                    </div>
                  </form>
                </div>
                <button tpye="button" onclick="closeModal('modal2')" class="close_btn">
                  <iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
                </button>
              </div>
            </div>
            <div class="manager_list">
              <table class="board_list_wrap">
                <thead class="board_list">
                  <tr class="top">
                    <th>사용자ID</th>
                    <th>
                      <select name="gander" id="gander">
                        <option value="gander">성별</option>
                        <option value="male">남성</option>
                        <option value="female">여성</option>
                      </select>
                    </th>
                    <th>이용자명</th>
                    <th>나이</th>
                    <th>등급</th>
                    
                    <th>매칭횟수</th>
                    <th>가입일</th>
                    <th colspan="2"></th>
                    <!-- <th></th> -->
                  </tr>
                </thead>
                <%
                try {
                    // JDBC 드라이버 로딩
                    Class.forName("com.mysql.jdbc.Driver");

                    // 데이터베이스 연결
                    Connection conn = DriverManager.getConnection(url, user, password);

                    // SQL 쿼리 작성
					String query = "SELECT * FROM membership_info " +
					               "INNER JOIN user_list ON membership_info.user_uid = user_list.user_uid " +
					               "INNER JOIN membership ON membership_info.membership_uid = membership.membership_uid " +
					               "WHERE user_list.user_auth = 1 ORDER BY user_list.user_uid DESC";
                    // 쿼리 실행
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(query);

                    // 결과 처리
                    while (rs.next()) {
                    String userGender = rs.getString("user_gender");
                    String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";
                    
                    String userBirth = rs.getString("user_birth");
                    String birthDateStr = userBirth;
                    LocalDate birthDate = LocalDate.parse(birthDateStr, DateTimeFormatter.ISO_DATE);
                    LocalDate currentDate = LocalDate.now();
                    Period period = Period.between(birthDate, currentDate);
                    int userAge = period.getYears();       
                    %>
         
                <tbody class="board_list">
                  <tr>
                    <td><%=rs.getString("user_id")%></td>
                    <td><%= genderString %></td>
                    <td><%= rs.getString("user_name") %></td>
                    <td><%= userAge%></td>
                    <td><%= rs.getString("membership_name") %></td>
                    <td>24</td>
                    <td><%=rs.getString("reg_date")%></td>
                    <td><button onclick="correctionModal('modal2')">상세</button></td>
                    <td><button onclick="deleteBtn()" style="color: red;">탈퇴</button></td>
                  </tr>
                </tbody>
                                    <%
                    }
                     rs.close();
			    	 stmt.close();
				    conn.close();
				} catch (Exception e) {
				    e.printStackTrace();
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
  <script src="https://cdn.jsdelivr.net/npm/chart.js@4.3.3/dist/chart.umd.min.js"></script>
  <script src="../script/admin_user_chart.js"></script>
  <script src="../script/admin_user_management.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
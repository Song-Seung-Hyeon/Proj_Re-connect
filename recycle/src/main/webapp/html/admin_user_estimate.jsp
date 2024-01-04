<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
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
  <title>admin 상담예약 확인 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
  <meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
  <link rel="icon" href="../images/favicon.png" />
  <link rel="stylesheet" href="../CSS/admin_user_estimate.css" />
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
						<img src="<%= request.getContextPath() %>/images/<%= imageName %>" alt="user_img" />
          </figure>
        </div>
      </button>

      <div class="layer_member">
        <ul>
          <li>
			<img src="<%= request.getContextPath() %>/images/<%= imageName %>" alt="user_img" /><span><%=userName %></span>
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
          <h1>상담예약 확인</h1>
          <div class="authority">
            <div class="search-box">
                <select name="user_search" class="user_search">
                  <option value="성함">성함</option>
                  <option value="ID">ID</option>
                  <option value="사용권한">사용권한</option>
                </select>
                <input type="search">
              <button type="button" class="search-btn">조회</button>
              <button type="button" onclick="openModal('modal1')" class="add_btn">등록</button>
            </div>

            <div id="modal1" class="modal">
              <div class="modal-content">
                <h3 class="modal-heder">관리자 등록</h3>
                <div class="modal-text">
                    <form action="#" method="post" id="add_administrator" enctype="multipart/form-data">
                      <div class="add_info">
                        <table class="info">
                          <thead>
                            <tr>
                              <td>* 사용자 ID</td>
                              <td><input type="text" name="userId" required></td>
                              <td>* 사용자명</td>
                              <td><input type="text" name="userName" required></td>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>* 암호</td>
                              <td><input type="password" name="userPassword" required></td>
                              <td>이메일</td>
                              <td><input type="text" name="userEmail"></td>
                            </tr>
                            <tr>
                              <td>연락처</td>
                              <td><input type="text" name="userNumber"></td>
                              <td>비상연락처</td>
                              <td><input type="text" name="userNumber2"></td>
                            </tr>
                            <tr>
                              <td>* 사용여부</td>
                              <td>
                                <select name="userUse" id="userUse">
                                <option value="사용여부" selected>사용여부</option>
                                <option value="--------------------------------------------" disabled>--------------------------------------------</option>
                                <option value="Y">사용</option>
                                <option value="N">미사용</option>
                              </select>
                            </td>
                              <td>사용자권한</td>
                              <td>
                                <select name="userGroup" id="userGroup">
                                  <option value="사용자권한" selected>사용자권한</option>
                                  <option value="--------------------------------------------" disabled>--------------------------------------------</option>
                                  <option value="관리자">관리자</option>
                                  <option value="커플매니저">커플매니저</option>
                                  <option value="일반">일반</option>
                                </select>
                              </td>
                            </tr>
                          </tbody>
                          </table>
                      </div>
                      <div class="btn_box">
                        <button type="submit" id="submit-authority" class="modal_btn active_btn">저장</button>
                        <button type="button" onclick="closeModal('modal1')" class="modal_btn">닫기</button>
                      </div>
                    </form>
                  </div>
                  <button tpye="button" onclick="closeModal('modal1')" class="close_btn">
                    <iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
                  </button>
                </div>
              </div>
              <div id="modal2" class="modal">
                <div class="modal-content">
                  <h3 class="modal-heder">관리자 등록</h3>
                  <div class="modal-text">
                      <form action="#" method="post" id="add_administrator" enctype="multipart/form-data">
                        <div class="add_info">
                          <table class="info">
                            <thead>
                              <tr>
                                <td>* 사용자 ID</td>
                                <td><input type="text" name="userId" required value="tpsk0415"></td>
                                <td>* 사용자명</td>
                                <td><input type="text" name="userName" required value="유세나"></td>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>* 암호</td>
                                <td><input type="password" name="userPassword" required value="tpsk0415"></td>
                                <td>이메일</td>
                                <td><input type="text" name="userEmail" value="tpsk0415@naver.com"></td>
                              </tr>
                              <tr>
                                <td>연락처</td>
                                <td><input type="text" name="userNumber"></td>
                                <td>비상연락처</td>
                                <td><input type="text" name="userNumber2"></td>
                              </tr>
                              <tr>
                                <td>* 사용여부</td>
                                <td>
                                  <select name="userUse" id="userUse">
                                  <option value="사용여부">사용여부</option>
                                  <option value="--------------------------------------------" disabled>--------------------------------------------</option>
                                  <option value="Y" selected >사용</option>
                                  <option value="N">미사용</option>
                                </select>
                              </td>
                                <td>사용자권한</td>
                                <td>
                                  <select name="userGroup" id="userGroup">
                                    <option value="사용자권한" selected>사용자권한</option>
                                    <option value="--------------------------------------------" disabled>--------------------------------------------</option>
                                    <option value="관리자">관리자</option>
                                    <option value="커플매니저" selected >커플매니저</option>
                                    <option value="일반">일반</option>
                                  </select>
                                </td>
                              </tr>
                            </tbody>
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
                <!-- 유세나 모달 -->
              <div id="modal3" class="modal">
                  <div class="modal-content">
                    <h3 class="modal-heder">관리자 등록</h3>
                    <div class="modal-text">
                        <form action="#" method="post" id="add_administrator" enctype="multipart/form-data">
                          <div class="add_info">
                            <table class="info">
                              <thead>
                                <tr>
                                  <td>* 사용자 ID</td>
                                  <td><input type="text" name="userId" required value="admin"></td>
                                  <td>* 사용자명</td>
                                  <td><input type="text" name="userName" required value="안영태"></td>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>* 암호</td>
                                  <td><input type="password" name="userPassword" required value="tpsk0415"></td>
                                  <td>이메일</td>
                                  <td><input type="text" name="userEmail" value="admin@nate.com"></td>
                                </tr>
                                <tr>
                                  <td>연락처</td>
                                  <td><input type="text" name="userNumber"></td>
                                  <td>비상연락처</td>
                                  <td><input type="text" name="userNumber2"></td>
                                </tr>
                                <tr>
                                  <td>* 사용여부</td>
                                  <td>
                                    <select name="userUse" id="userUse">
                                    <option value="사용여부">사용여부</option>
                                    <option value="--------------------------------------------" disabled>--------------------------------------------</option>
                                    <option value="Y" selected >사용</option>
                                    <option value="N">미사용</option>
                                  </select>
                                </td>
                                  <td>사용자권한</td>
                                  <td>
                                    <select name="userGroup" id="userGroup">
                                      <option value="사용자권한" selected>사용자권한</option>
                                      <option value="--------------------------------------------" disabled>--------------------------------------------</option>
                                      <option value="관리자">관리자</option>
                                      <option value="커플매니저" selected >커플매니저</option>
                                      <option value="일반">일반</option>
                                    </select>
                                  </td>
                                </tr>
                              </tbody>
                              </table>
                          </div>
                          <div class="btn_box">
                            <button type="submit" id="submit-authority" class="modal_btn active_btn">수정</button>
                            <button type="button" onclick="closeModal('modal3')" class="modal_btn">닫기</button>
                          </div>
                        </form>
                      </div>
                      <button tpye="button" onclick="closeModal('modal3')" class="close_btn">
                        <iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
                      </button>
                    </div>
                </div>
              <div class="manager_list">
                <table class="board_list_wrap">
                  <thead class="board_list">
                    <tr class="top">
                      <th>상담일정</th>
                      <th>성별</th>
                      <th>이름</th>
                      <th>출생년도</th>
                      <th>직업</th>
                      <th>학력</th>
                      <th>지역</th>
                      <th>연락처</th>
                      <th>이메일</th>
                      <th colspan="2"></th>
                      <!-- <th></th> -->
                    </tr>
                  </thead>
                  <tbody class="board_list">
                  <%
                    try {
                      Class.forName("com.mysql.cj.jdbc.Driver");
                      Connection conn = DriverManager.getConnection(url, user, password);
                      String selectQuery = "SELECT * FROM estimate";
                      PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
                      ResultSet resultSet = preparedStatement.executeQuery();

                      while (resultSet.next()) {
                    	  
                    	  String userGender = resultSet.getString("estimate_gender");
                    	  String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";

                  %>
                  <tr>
                    <td><%= resultSet.getString("estimate_date") %></td>
                    <td><%= genderString %></td>
                    <td><%= resultSet.getString("estimate_name") %></td>
                    <td><%= resultSet.getString("estimate_birth") %>년</td>
                    <td><%= resultSet.getString("estimate_job") %></td>
                    <td><%= resultSet.getString("estimate_education") %></td>
                    <td><%= resultSet.getString("estimate_country") %></td>
                    <td><%= resultSet.getString("estimate_phone") %></td>
                    <td><%= resultSet.getString("estimate_email") %></td>
                    <td><button>삭제</button></td>
                  </tr>
                  <% 
                      }
                      resultSet.close();
                      preparedStatement.close();
                      conn.close();
                    } catch (Exception e) {
                      out.println("Error: " + e.getMessage());
                    }
                  %>
                  </tbody>
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
  <script src="../script/admin_user_estimate.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>
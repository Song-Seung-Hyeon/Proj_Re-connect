/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-20 01:27:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005fmatching_005fmanagement_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("    \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ko\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <title>admin DASH매치 관리 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>\n");
      out.write("  <meta charset=\"UTF-8\" />\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("  <meta name=\"keyworeds\" content=\"결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,\" />\n");
      out.write("  <meta name=\"description\" content=\"안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다.\" />\n");
      out.write("  <link rel=\"icon\" href=\"../images/favicon.png\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/admin_matching_management.css\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/footer_style.css\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/reset.css\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("  <header class=\"account_header\">\n");
      out.write("    <div class=\"header_btn\">\n");
      out.write("      <div class=\"message_badge\">\n");
      out.write("        <button type=\"button\" class=\"btn_messenger\" onclick=\"\">메신저</button>\n");
      out.write("        <span class=\"push_num\" style=\"display: none\">0</span>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"alarm_badge\">\n");
      out.write("        <button type=\"button\" class=\"btn_alarm\" onclick=\"\">알림</button>\n");
      out.write("        <span class=\"push_num\" style=\"display: none\">0</span>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"member\">\n");
      out.write("      <button type=\"button\" class=\"btn_member\">\n");
      out.write("        <div class=\"user_photo\">\n");
      out.write("          <figure class=\"user_img\">\n");
      out.write("            <img src=\"../images/Song.jpg\" alt=\"user_img\" />\n");
      out.write("          </figure>\n");
      out.write("        </div>\n");
      out.write("      </button>\n");
      out.write("\n");
      out.write("      <div class=\"layer_member\">\n");
      out.write("        <ul>\n");
      out.write("          <li>\n");
      out.write("            <img src=\"../images/Song.jpg\" alt=\"user_img\" /><span>송승현</span>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"account.jsp\"><span>개인정보 수정</span><iconify-icon icon=\"la:edit-solid\" width=\"30\"></iconify-icon></a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"../jsp/logout.jsp\"><span>로그아웃</span>\n");
      out.write("            <iconify-icon icon=\"material-symbols:logout\"\n");
      out.write("                width=\"25\"></iconify-icon></a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </header>\n");
      out.write("  <div class=\"nav\">\n");
      out.write("    <a href=\"../index.jsp\" id=\"logo2\">\n");
      out.write("      <img src=\"../images/logo.svg\" alt=\"logo\" />\n");
      out.write("    </a>\n");
      out.write("    <ul class=\"gnb\">\n");
      out.write("      <li class=\"gnb-menu\">\n");
      out.write("        <a href=\"admin_manager_management.jsp\" class=\"menu-btn\">매니저 관리</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"gnb-menu\">\n");
      out.write("        <a href=\"admin_post_management.jsp\" class=\"menu-btn\">게시물 관리</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"gnb-menu\">\n");
      out.write("        <a href=\"admin_user_management.jsp\" class=\"menu-btn\">회원관리</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"gnb-menu\">\n");
      out.write("        <a href=\"admin_user_estimate.jsp\" class=\"menu-btn\">상담예약 확인</a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"gnb-menu\">\n");
      out.write("        <a href=\"admin_matching_management.jsp\" class=\"menu-btn\">DASH 매칭</a>\n");
      out.write("      </li>\n");
      out.write("      \n");
      out.write("    </ul>\n");
      out.write("    <button type=\"button\" class=\"nav-icon\">\n");
      out.write("      <iconify-icon icon=\"ph:list-fill\"></iconify-icon>\n");
      out.write("    </button>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <main>\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"container_main\">\n");
      out.write("        <div class=\"content\">\n");
      out.write("          <h1>DASH매칭</h1>\n");
      out.write("\n");
      out.write("          <div>\n");
      out.write("            <p>월별 매칭표</p>\n");
      out.write("            <canvas id=\"myChart\"></canvas>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("          <div class=\"authority\">\n");
      out.write("            <div class=\"search-box\">\n");
      out.write("\n");
      out.write("              <select name=\"user_search\" class=\"user_search\">\n");
      out.write("                <option value=\"성함\">성함</option>\n");
      out.write("                <option value=\"ID\">ID</option>\n");
      out.write("                <!-- <option value=\"사용권한\">사용권한</option> -->\n");
      out.write("              </select>\n");
      out.write("              <input type=\"search\">\n");
      out.write("              <button type=\"button\" class=\"search-btn\">조회</button>\n");
      out.write("              <button type=\"button\" onclick=\"openModal('modal1')\" class=\"add_btn\">등록</button>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"modal1\" class=\"modal\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                <h3 class=\"modal-heder\">커플 등록</h3>\n");
      out.write("                <div class=\"modal-text\">\n");
      out.write("                  <form action=\"#\" method=\"post\" id=\"add_administrator\" enctype=\"multipart/form-data\">\n");
      out.write("                    <div class=\"search-box\">\n");
      out.write("\n");
      out.write("                      <select name=\"user_search\" class=\"user_search\">\n");
      out.write("                        <option value=\"성함\">성함</option>\n");
      out.write("                        <option value=\"ID\">ID</option>\n");
      out.write("                      </select>\n");
      out.write("                      <input type=\"search\">\n");
      out.write("                      <button type=\"button\" class=\"search-btn\">조회</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"btn_box\">\n");
      out.write("                      <button type=\"submit\" id=\"submit-authority\" class=\"modal_btn active_btn\">저장</button>\n");
      out.write("                      <button type=\"button\" onclick=\"closeModal('modal1')\" class=\"modal_btn\">닫기</button>\n");
      out.write("                    </div>\n");
      out.write("                  </form>\n");
      out.write("                </div>\n");
      out.write("                <button tpye=\"button\" onclick=\"closeModal('modal1')\" class=\"close_btn\">\n");
      out.write("                  <iconify-icon icon=\"ph:x-light\" width=\"30px\"></iconify-icon>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"modal2\" class=\"modal\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                <h3 class=\"modal-heder\">회원관리</h3>\n");
      out.write("                <div class=\"modal-text\">\n");
      out.write("                  <form action=\"#\" method=\"post\" id=\"add_administrator\" enctype=\"multipart/form-data\">\n");
      out.write("                    <div class=\"add_info\">\n");
      out.write("                      <table class=\"info\">\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                          <td colspan=\"4\"><img src=\"../images/손호준.jpg\" alt=\"손호준\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>이름</td>\n");
      out.write("                          <td>손호준</td>\n");
      out.write("                          <td>ID</td>\n");
      out.write("                          <td>asd1234</td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                          <td>성별</td>\n");
      out.write("                          <td>남</td>\n");
      out.write("                          <td>연락처</td>\n");
      out.write("                          <td>010-1234-5678</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>생년월일</td>\n");
      out.write("                          <td>950415</td>\n");
      out.write("                          <td>이메일</td>\n");
      out.write("                          <td>tpsk0415@naver.com</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>나이</td>\n");
      out.write("                          <td>29</td>\n");
      out.write("                          <td>주소</td>\n");
      out.write("                          <td>대전 서구 용문동</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>매칭횟수</td>\n");
      out.write("                          <td>24</td>\n");
      out.write("                          <td>가입일</td>\n");
      out.write("                          <td>2023.08.16</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td>문의사항</td>\n");
      out.write("                          <td>2</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>등급</td>\n");
      out.write("                          <td>\n");
      out.write("                            <select name=\"umembership\" id=\"membership\">\n");
      out.write("                              <option value=\"manbership\">등급</option>\n");
      out.write("                              <option value=\"--------------------------------------------\" disabled>\n");
      out.write("                                --------------------------------------------</option>\n");
      out.write("                              <option value=\"D\" selected>Dabble</option>\n");
      out.write("                              <option value=\"A\">Advence</option>\n");
      out.write("                              <option value=\"S\">Special</option>\n");
      out.write("                              <option value=\"H\">Highest</option>\n");
      out.write("                            </select>\n");
      out.write("                          </td>\n");
      out.write("                          <td>커플매니저</td>\n");
      out.write("                          <td>\n");
      out.write("                            <select name=\"manager\" id=\"manager\">\n");
      out.write("                              <option value=\"manager\">커플매니져</option>\n");
      out.write("                              <option value=\"--------------------------------------------\" disabled>\n");
      out.write("                                --------------------------------------------</option>\n");
      out.write("                              <option value=\"유세나\" selected>유세나</option>\n");
      out.write("                              <option value=\"송승현\">송승현</option>\n");
      out.write("                              <option value=\"진소이\">진소이</option>\n");
      out.write("                              <option value=\"안영태\">안영태</option>\n");
      out.write("                            </select>\n");
      out.write("                          </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td colspan=\"2\">이용자 프로필</td>\n");
      out.write("                          <td colspan=\"2\">선호하는 이성</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td>나이</td>\n");
      out.write("                          <td>2~30대</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>키</td>\n");
      out.write("                          <td>178</td>\n");
      out.write("                          <td>키</td>\n");
      out.write("                          <td>160대</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>직업</td>\n");
      out.write("                          <td>세무사</td>\n");
      out.write("                          <td>직업</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>학력</td>\n");
      out.write("                          <td>4년제 졸업</td>\n");
      out.write("                          <td>학력</td>\n");
      out.write("                          <td>대졸</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>체형</td>\n");
      out.write("                          <td>근육질</td>\n");
      out.write("                          <td>체형</td>\n");
      out.write("                          <td>슬림</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>연봉</td>\n");
      out.write("                          <td>5000</td>\n");
      out.write("                          <td>연봉</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>결혼여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                          <td>결혼여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>자녀여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                          <td>자녀여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>취미</td>\n");
      out.write("                          <td>계산</td>\n");
      out.write("                          <td>취미</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>특기</td>\n");
      out.write("                          <td>암산</td>\n");
      out.write("                          <td>특기</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>장거리 여부</td>\n");
      out.write("                          <td>Y</td>\n");
      out.write("                          <td>지역</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>혈액형</td>\n");
      out.write("                          <td>Rh+A</td>\n");
      out.write("                          <td>혈액형</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>음주</td>\n");
      out.write("                          <td>2잔</td>\n");
      out.write("                          <td>음주</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>흡연</td>\n");
      out.write("                          <td>Y</td>\n");
      out.write("                          <td>흡연</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>성격</td>\n");
      out.write("                          <td>Nice</td>\n");
      out.write("                          <td>성격</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>결혼가치관</td>\n");
      out.write("                          <td>Nice</td>\n");
      out.write("                          <td>결혼가치관</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                      </table>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"btn_box\">\n");
      out.write("                      <button type=\"submit\" id=\"submit-authority\" class=\"modal_btn active_btn\">수정</button>\n");
      out.write("                      <button type=\"button\" onclick=\"closeModal('modal2')\" class=\"modal_btn\">닫기</button>\n");
      out.write("                    </div>\n");
      out.write("                  </form>\n");
      out.write("                </div>\n");
      out.write("                <button tpye=\"button\" onclick=\"closeModal('modal2')\" class=\"close_btn\">\n");
      out.write("                  <iconify-icon icon=\"ph:x-light\" width=\"30px\"></iconify-icon>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"modal3\" class=\"modal\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                <h3 class=\"modal-heder\">회원관리</h3>\n");
      out.write("                <div class=\"modal-text\">\n");
      out.write("                  <form action=\"#\" method=\"post\" id=\"add_administrator\" enctype=\"multipart/form-data\">\n");
      out.write("                    <div class=\"add_info\">\n");
      out.write("                      <table class=\"info\">\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                          <td colspan=\"4\"><img src=\"../images/한지민.jpg\" alt=\"한지민\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>이름</td>\n");
      out.write("                          <td>한지민</td>\n");
      out.write("                          <td>ID</td>\n");
      out.write("                          <td>qweqr1234</td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                          <td>성별</td>\n");
      out.write("                          <td>여</td>\n");
      out.write("                          <td>연락처</td>\n");
      out.write("                          <td>010-8765-4321</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>생년월일</td>\n");
      out.write("                          <td>970225</td>\n");
      out.write("                          <td>이메일</td>\n");
      out.write("                          <td>tpsk0415@naver.com</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>나이</td>\n");
      out.write("                          <td>27</td>\n");
      out.write("                          <td>주소</td>\n");
      out.write("                          <td>대전 중구 선화동</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>매칭횟수</td>\n");
      out.write("                          <td>2</td>\n");
      out.write("                          <td>가입일</td>\n");
      out.write("                          <td>2023.08.16</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td>문의사항</td>\n");
      out.write("                          <td>2</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>등급</td>\n");
      out.write("                          <td>\n");
      out.write("                            <select name=\"umembership\" id=\"membership\">\n");
      out.write("                              <option value=\"manbership\">등급</option>\n");
      out.write("                              <option value=\"--------------------------------------------\" disabled>\n");
      out.write("                                --------------------------------------------</option>\n");
      out.write("                              <option value=\"D\" selected>Dabble</option>\n");
      out.write("                              <option value=\"A\">Advence</option>\n");
      out.write("                              <option value=\"S\">Special</option>\n");
      out.write("                              <option value=\"H\">Highest</option>\n");
      out.write("                            </select>\n");
      out.write("                          </td>\n");
      out.write("                          <td>커플매니저</td>\n");
      out.write("                          <td>\n");
      out.write("                            <select name=\"manager\" id=\"manager\">\n");
      out.write("                              <option value=\"manager\">커플매니져</option>\n");
      out.write("                              <option value=\"--------------------------------------------\" disabled>\n");
      out.write("                                --------------------------------------------</option>\n");
      out.write("                              <option value=\"유세나\">유세나</option>\n");
      out.write("                              <option value=\"송승현\" selected>송승현</option>\n");
      out.write("                              <option value=\"진소이\">진소이</option>\n");
      out.write("                              <option value=\"안영태\">안영태</option>\n");
      out.write("                            </select>\n");
      out.write("                          </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td colspan=\"2\">이용자 프로필</td>\n");
      out.write("                          <td colspan=\"2\">선호하는 이성</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td></td>\n");
      out.write("                          <td>나이</td>\n");
      out.write("                          <td>2~30대</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>키</td>\n");
      out.write("                          <td>165</td>\n");
      out.write("                          <td>키</td>\n");
      out.write("                          <td>160대</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>직업</td>\n");
      out.write("                          <td>회계사</td>\n");
      out.write("                          <td>직업</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>학력</td>\n");
      out.write("                          <td>4년제 졸업</td>\n");
      out.write("                          <td>학력</td>\n");
      out.write("                          <td>대졸</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>체형</td>\n");
      out.write("                          <td>슬림</td>\n");
      out.write("                          <td>체형</td>\n");
      out.write("                          <td>근육질</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>연봉</td>\n");
      out.write("                          <td>4000</td>\n");
      out.write("                          <td>연봉</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>결혼여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                          <td>결혼여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>자녀여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                          <td>자녀여부</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>취미</td>\n");
      out.write("                          <td>회계</td>\n");
      out.write("                          <td>취미</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>특기</td>\n");
      out.write("                          <td>회계</td>\n");
      out.write("                          <td>특기</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>장거리 여부</td>\n");
      out.write("                          <td>Y</td>\n");
      out.write("                          <td>지역</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>혈액형</td>\n");
      out.write("                          <td>Rh+B</td>\n");
      out.write("                          <td>혈액형</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>음주</td>\n");
      out.write("                          <td>1병</td>\n");
      out.write("                          <td>음주</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>흡연</td>\n");
      out.write("                          <td>N</td>\n");
      out.write("                          <td>흡연</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>성격</td>\n");
      out.write("                          <td>Nice</td>\n");
      out.write("                          <td>성격</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>결혼가치관</td>\n");
      out.write("                          <td>Nice</td>\n");
      out.write("                          <td>결혼가치관</td>\n");
      out.write("                          <td>상관무</td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                      </table>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"btn_box\">\n");
      out.write("                      <button type=\"submit\" id=\"submit-authority\" class=\"modal_btn active_btn\">수정</button>\n");
      out.write("                      <button type=\"button\" onclick=\"closeModal('modal3')\" class=\"modal_btn\">닫기</button>\n");
      out.write("                    </div>\n");
      out.write("                  </form>\n");
      out.write("                </div>\n");
      out.write("                <button tpye=\"button\" onclick=\"closeModal('modal3')\" class=\"close_btn\">\n");
      out.write("                  <iconify-icon icon=\"ph:x-light\" width=\"30px\"></iconify-icon>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"manber_list\">\n");
      out.write("              <div>\n");
      out.write("                <p>1</p>\n");
      out.write("                <button onclick=\"correctionModal('modal2')\"><img src=\"../images/손호준.jpg\" alt=\"손호준\">손호준</button>\n");
      out.write("                <div><img src=\"../images/arrowheart.svg\" alt=\"arrowheart\"></div>\n");
      out.write("                <button onclick=\"correctionModal('modal3')\"><img src=\"../images/한지민.jpg\" alt=\"한지민\">한지민</button>\n");
      out.write("                <button onclick=\"deleteBtn()\" style=\"color: red;\">탈퇴</button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </main>\n");
      out.write("    <!-- 아래 footer 하단 고정 -->\n");
      out.write("    <footer class=\"footer\">\n");
      out.write("      <div class=\"footer-content\">\n");
      out.write("        <h3>(주)Re:connect</h3>\n");
      out.write("        <span>대표 : Recycle</span>\n");
      out.write("        <span>사업자등록번호 : 999-99-99999</span>\n");
      out.write("        <span>주소 : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span>\n");
      out.write("        <span>Tel.042-222-2402</span>\n");
      out.write("        <ul class=\"footer-socials\">\n");
      out.write("          <li>\n");
      out.write("            <a href=\"index_logout.jsp\"><img src=\"../images/ico_image.svg\" alt=\"ico_image\" /></a>\n");
      out.write("            <!-- 임시로 로그아웃 넣어 놨음 -->\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"account_manager.jsp\"><img src=\"../images/ico_instagram.svg\" alt=\"ico_instagram\" /></a>\n");
      out.write("            <!-- 임시로 커플매니저페이지 넣어 놨음 -->\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"admin_manager_management.jsp\"><img src=\"../images/ico_youtube.svg\" alt=\"ico_youtube\" /></a>\n");
      out.write("            <!-- 임시로 관리자페이지 넣어 놨음 -->\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("        <div class=\"footer-menu\">\n");
      out.write("          <p>\n");
      out.write("            copyright &copy;2023 by\n");
      out.write("            <a href=\"../index.jsp\">Re:connect.</a>\n");
      out.write("            All pictures cannot be copied without permission.\n");
      out.write("          </p>\n");
      out.write("          <ul class=\"f-menu\">\n");
      out.write("            <li><a href=\"../index.jsp\">Home</a></li>\n");
      out.write("            <li><a href=\"dash.jsp\">About</a></li>\n");
      out.write("            <li><a href=\"estimate.jsp\">Contact</a></li>\n");
      out.write("            <li><a href=\"FAQ.jsp\">FAQ</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/chart.js@4.3.3/dist/chart.umd.min.js\"></script>\n");
      out.write("  <script src=\"../script/admin_matching_chart.js\"></script>\n");
      out.write("  <script src=\"../script/admin_matching_management.js\"></script>\n");
      out.write("  <script src=\"https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

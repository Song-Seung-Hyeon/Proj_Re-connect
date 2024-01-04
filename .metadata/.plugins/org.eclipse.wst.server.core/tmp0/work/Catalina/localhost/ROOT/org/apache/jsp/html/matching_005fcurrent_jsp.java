/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-20 01:44:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class matching_005fcurrent_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <title>매칭현황 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>\r\n");
      out.write("  <meta charset=\"UTF-8\" />\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("  <meta name=\"keyworeds\" content=\"결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,\" />\r\n");
      out.write("  <meta name=\"description\" content=\"안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다.\" />\r\n");
      out.write("  <link rel=\"icon\" href=\"../images/favicon.png\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/matching_current.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/footer_style.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/reset.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <!-- 마이페이지 헤더 -->\r\n");
      out.write("  <header class=\"account_header\">\r\n");
      out.write("    <div class=\"header_btn\">\r\n");
      out.write("      <div class=\"message_badge\">\r\n");
      out.write("        <button type=\"button\" class=\"btn_messenger\" onclick=\"\">메신저</button>\r\n");
      out.write("        <span class=\"push_num\" style=\"display: none\">0</span>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"alarm_badge\">\r\n");
      out.write("        <button type=\"button\" class=\"btn_alarm\" onclick=\"\">알림</button>\r\n");
      out.write("        <span class=\"push_num\" style=\"display: none\">0</span>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"member\">\r\n");
      out.write("      <button type=\"button\" class=\"btn_member\">\r\n");
      out.write("        <div class=\"user_photo\">\r\n");
      out.write("          <figure class=\"user_img\">\r\n");
      out.write("            <img src=\"../images/Song.jpg\" alt=\"user_img\" />\r\n");
      out.write("          </figure>\r\n");
      out.write("        </div>\r\n");
      out.write("      </button>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"layer_member\">\r\n");
      out.write("        <ul>\r\n");
      out.write("          <li>\r\n");
      out.write("            <img src=\"../images/Song.jpg\" alt=\"user_img\" /><span>송승현</span>\r\n");
      out.write("            <!-- 유저이미지, 이름 입력 -->\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"account.jsp\"><span>개인정보 수정</span><iconify-icon icon=\"la:edit-solid\" width=\"30\"></iconify-icon></a>\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"../jsp/logout.jsp\"><span>로그아웃</span><iconify-icon icon=\"material-symbols:logout\"\r\n");
      out.write("                width=\"25\"></iconify-icon></a>\r\n");
      out.write("          </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </header>\r\n");
      out.write("\r\n");
      out.write("  <main>\r\n");
      out.write("    <!-- 마이페이지 사이드메뉴 -->\r\n");
      out.write("    <div class=\"nav\">\r\n");
      out.write("      <a href=\"../index.jsp\" id=\"logo2\">\r\n");
      out.write("        <img src=\"../images/logo.svg\" alt=\"logo\" />\r\n");
      out.write("      </a>\r\n");
      out.write("      <ul class=\"gnb\">\r\n");
      out.write("        <li class=\"gnb-menu\">\r\n");
      out.write("          <a href=\"profil.jsp\" class=\"menu-btn\">마이프로필</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"gnb-menu\">\r\n");
      out.write("          <a href=\"account.jsp\" class=\"menu-btn\">개인정보수정</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"gnb-menu\">\r\n");
      out.write("          <a href=\"authored_content.jsp\" class=\"menu-btn\">내가 작성한 글</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"gnb-menu\">\r\n");
      out.write("          <a href=\"Likestatus.jsp\" class=\"menu-btn\">좋아요 현황</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"gnb-menu\">\r\n");
      out.write("          <a href=\"matching_current.jsp\" class=\"menu-btn\">매칭현황</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"gnb-menu\">\r\n");
      out.write("          <a href=\"member_ship.jsp\" class=\"menu-btn\">멤버십</a>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"gnb-menu\">\r\n");
      out.write("          <a href=\"account_withdrawal.jsp\" class=\"menu-btn secession\">회원탈퇴</a>\r\n");
      out.write("        </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      <button type=\"button\" class=\"nav-icon\">\r\n");
      out.write("        <iconify-icon icon=\"ph:list-fill\"></iconify-icon>\r\n");
      out.write("      </button>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"container_main\">\r\n");
      out.write("        <div class=\"content\">\r\n");
      out.write("          <h1>매칭현황</h1>\r\n");
      out.write("          <h4>현재 고객님의 매칭 상황입니다.</h4>\r\n");
      out.write("\r\n");
      out.write("          \r\n");
      out.write("\r\n");
      out.write("          <section class=\"area_1\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"event_box1\">\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"box_e\">\r\n");
      out.write("                <div class=\"box_group\">\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"box_group1\">\r\n");
      out.write("                    <h5 class=\"group_1\">●●●●○</h5>\r\n");
      out.write("                    <h5 class=\"group_2\">LTE</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                  <h5 class=\"group_3\">12 : 35</h5>\r\n");
      out.write("\r\n");
      out.write("                  <div class=\"box_group2\">\r\n");
      out.write("                    <h5 class=\"group_4\">100%</h5>\r\n");
      out.write("                    <div class=\"group_5\">\r\n");
      out.write("                      <img src=\"../images/battery.svg\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <h4 class=\"h5_text\">●</h4>\r\n");
      out.write("                <div class=\"h5_img\">\r\n");
      out.write("                  <img src=\"../images/bear.png\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <h5 class=\"h5_0\">매칭 상대</h5>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"box_e1\">\r\n");
      out.write("                <div class=\"box_e_1\">\r\n");
      out.write("                  <div class=\"box_e_1_1\">\r\n");
      out.write("                    <div class=\"box_icon\"><img src=\"../images/magnifier.svg\"></div>\r\n");
      out.write("                    <h5 class=\"h5_1\">검색</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"box_e2\"></div>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"box_e3\">\r\n");
      out.write("\r\n");
      out.write("                <h5 class=\"text_0\">매칭</h5>\r\n");
      out.write("                <div class=\"text_box\">\r\n");
      out.write("                  <div class=\"box_img\"><img src=\"../images/bear2.png\"></div>\r\n");
      out.write("                  <div class=\"font_box\">\r\n");
      out.write("                    <h5 class=\"textt_1\">현재 매칭된 인원 수</h5>\r\n");
      out.write("                    <h5 class=\"textt_2\">...Loading..</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"box_img2\"><img src=\"../images/human.svg\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"text_box2\">\r\n");
      out.write("                  <div class=\"box_img\"><img src=\"../images/bear2.png\"></div>\r\n");
      out.write("                  <div class=\"font_box\">\r\n");
      out.write("                    <h5 class=\"textt_1\">관리자 단톡 면담</h5>\r\n");
      out.write("                    <h5 class=\"textt_2\">...Loading..</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"box_img2\"><img src=\"../images/message.svg\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                <h5 class=\"text_1\">매칭 대상</h5>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"text_box3\">\r\n");
      out.write("                  <div class=\"box_img\"><img src=\"../images/bear.png\"></div>\r\n");
      out.write("                  <div class=\"font_box\">\r\n");
      out.write("                    <h5 class=\"textt_1\">소단비</h5>\r\n");
      out.write("                    <h5 class=\"textt_2\">텍스트입력블라블라</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <h5 class=\"text_time\">10:36</h5>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"text_box4\">\r\n");
      out.write("                  <div class=\"box_img\"><img src=\"../images/bear.png\"></div>\r\n");
      out.write("                  <div class=\"font_box\">\r\n");
      out.write("                    <h5 class=\"textt_1\">이지은</h5>\r\n");
      out.write("                    <h5 class=\"textt_2\">텍스트입력블라블라</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <h5 class=\"text_time\">9:50</h5>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"text_box5\">\r\n");
      out.write("                  <div class=\"box_img\"><img src=\"../images/bear.png\"></div>\r\n");
      out.write("                  <div class=\"font_box\">\r\n");
      out.write("                    <h5 class=\"textt_1\">전여빈</h5>\r\n");
      out.write("                    <h5 class=\"textt_2\">텍스트입력블라블라</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <h5 class=\"text_time\">4:03</h5>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"text_box6\">\r\n");
      out.write("                  <div class=\"box_img\"><img src=\"../images/bear.png\"></div>\r\n");
      out.write("                  <div class=\"font_box\">\r\n");
      out.write("                    <h5 class=\"textt_1\">박은빈</h5>\r\n");
      out.write("                    <h5 class=\"textt_2\">텍스트입력블라블라</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <h5 class=\"text_time\">어제</h5>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"text_box7\">\r\n");
      out.write("                  <div class=\"box_img\"><img src=\"../images/bear.png\"></div>\r\n");
      out.write("                  <div class=\"font_box\">\r\n");
      out.write("                    <h5 class=\"textt_1\">김고은</h5>\r\n");
      out.write("                    <h5 class=\"textt_2\">텍스트입력블라블라</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <h5 class=\"text_time\">2일전</h5>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("              </div>\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"box_e4\">\r\n");
      out.write("                <div class=\"box_e4_1\">\r\n");
      out.write("                  <div class=\"icon_icon_0\">\r\n");
      out.write("                    <img src=\"../images/icon_1.svg\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"icon_icon_1\">\r\n");
      out.write("                    <img src=\"../images/icon_2.svg\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"icon_icon_2\">\r\n");
      out.write("                    <img src=\"../images/icon_3.svg\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"icon_icon_3\">\r\n");
      out.write("                    <img src=\"../images/icon_4.svg\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("          </section>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("  </main>\r\n");
      out.write("    <!-- 아래 footer 하단 고정 -->\r\n");
      out.write("    <footer class=\"footer\">\r\n");
      out.write("      <div class=\"footer-content\">\r\n");
      out.write("        <h3>(주)Re:connect</h3>\r\n");
      out.write("        <span>대표 : Recycle</span>\r\n");
      out.write("        <span>사업자등록번호 : 999-99-99999</span>\r\n");
      out.write("        <span>주소 : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span>\r\n");
      out.write("        <span>Tel.042-222-2402</span>\r\n");
      out.write("        <ul class=\"footer-socials\">\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"index_logout.jsp\"><img src=\"../images/ico_image.svg\" alt=\"ico_image\" /></a>\r\n");
      out.write("            <!-- 임시로 로그아웃 넣어 놨음 -->\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"account_manager.jsp\"><img src=\"../images/ico_instagram.svg\" alt=\"ico_instagram\" /></a>\r\n");
      out.write("            <!-- 임시로 커플매니저페이지 넣어 놨음 -->\r\n");
      out.write("          </li>\r\n");
      out.write("          <li>\r\n");
      out.write("            <a href=\"admin_manager_management.jsp\"><img src=\"../images/ico_youtube.svg\" alt=\"ico_youtube\" /></a>\r\n");
      out.write("            <!-- 임시로 관리자페이지 넣어 놨음 -->\r\n");
      out.write("          </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div class=\"footer-menu\">\r\n");
      out.write("          <p>\r\n");
      out.write("            copyright &copy;2023 by\r\n");
      out.write("            <a href=\"../index.jsp\">Re:connect.</a>\r\n");
      out.write("            All pictures cannot be copied without permission.\r\n");
      out.write("          </p>\r\n");
      out.write("          <ul class=\"f-menu\">\r\n");
      out.write("            <li><a href=\"../index.jsp\">Home</a></li>\r\n");
      out.write("            <li><a href=\"dash.jsp\">About</a></li>\r\n");
      out.write("            <li><a href=\"estimate.jsp\">Contact</a></li>\r\n");
      out.write("            <li><a href=\"FAQ.jsp\">FAQ</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("  <script src=\"../script/authored_content.js\"></script>\r\n");
      out.write("  <script src=\"https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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

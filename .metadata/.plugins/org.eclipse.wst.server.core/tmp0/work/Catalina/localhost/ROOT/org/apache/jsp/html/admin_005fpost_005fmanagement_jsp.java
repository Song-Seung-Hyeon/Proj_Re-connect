/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-20 01:40:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.text.SimpleDateFormat;

public final class admin_005fpost_005fmanagement_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.text.SimpleDateFormat");
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
request.setCharacterEncoding("utf-8");
      out.write('\n');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../jsp/user_list_component.jsp", out, false);
      out.write("  \n");
      out.write("\n");

String userName = (String) request.getAttribute("userName");
String userPhotoURL = (String) request.getAttribute("userPhotoURL");
String imageName = (String) request.getAttribute("imageName");

      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    ");

    String url = "jdbc:mysql://192.168.0.71:3306/recycle";
    String user = "recycle";
    String password = "1234";    
    
      out.write("\n");
      out.write("		\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ko\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("	<title>admin 게시물 관리 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>\n");
      out.write("	<meta charset=\"UTF-8\" />\n");
      out.write("	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("	<meta name=\"keyworeds\" content=\"결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,\" />\n");
      out.write("	<meta name=\"description\" content=\"안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다.\" />\n");
      out.write("	<link rel=\"icon\" href=\"../images/favicon.png\" />\n");
      out.write("	<link rel=\"stylesheet\" href=\"../CSS/admin_post_management.css\" />\n");
      out.write("	<link rel=\"stylesheet\" href=\"../CSS/footer_style.css\" />\n");
      out.write("	<link rel=\"stylesheet\" href=\"../CSS/reset.css\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("	<header class=\"account_header\">\n");
      out.write("		<div class=\"header_btn\">\n");
      out.write("			<div class=\"message_badge\">\n");
      out.write("				<button type=\"button\" class=\"btn_messenger\" onclick=\"\">메신저</button>\n");
      out.write("				<span class=\"push_num\" style=\"display: none\">0</span>\n");
      out.write("			</div>\n");
      out.write("			<div class=\"alarm_badge\">\n");
      out.write("				<button type=\"button\" class=\"btn_alarm\" onclick=\"\">알림</button>\n");
      out.write("				<span class=\"push_num\" style=\"display: none\">0</span>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("\n");
      out.write("		<div class=\"member\">\n");
      out.write("			<button type=\"button\" class=\"btn_member\">\n");
      out.write("				<div class=\"user_photo\">\n");
      out.write("					<figure class=\"user_img\">\n");
      out.write("						<img src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\" alt=\"user_img\" />\n");
      out.write("					</figure>\n");
      out.write("				</div>\n");
      out.write("			</button>\n");
      out.write("\n");
      out.write("			<div class=\"layer_member\">\n");
      out.write("				<ul>\n");
      out.write("					<li>\n");
      out.write("						<img src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\" alt=\"user_img\" /><span>");
      out.print( userName );
      out.write("</span>\n");
      out.write("					</li>\n");
      out.write("					<li>\n");
      out.write("						<a href=\"account.jsp\"><span>개인정보 수정</span><iconify-icon icon=\"la:edit-solid\"\n");
      out.write("								width=\"30\"></iconify-icon></a>\n");
      out.write("					</li>\n");
      out.write("					<li>\n");
      out.write("						<a href=\"../jsp/logout.jsp\"><span>로그아웃</span>\n");
      out.write("						<iconify-icon icon=\"material-symbols:logout\"\n");
      out.write("								width=\"25\"></iconify-icon></a>\n");
      out.write("					</li>\n");
      out.write("				</ul>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</header>\n");
      out.write("\n");
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
      out.write("    <main>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"container_main\">\n");
      out.write("          <div class=\"content\">\n");
      out.write("            <h1>게시물 관리</h1>\n");
      out.write("            <div class=\"post_management\">\n");
      out.write("              <div class=\"menu-tab\">\n");
      out.write("                <button class=\"tab_btn active\"><a href=\"#\">전체</a></button>\n");
      out.write("                <button class=\"tab_btn\"><a href=\"#\">공지사항</a></button>\n");
      out.write("                <button class=\"tab_btn\"><a href=\"#\">게시판</a></button>\n");
      out.write("                <button class=\"tab_btn\"><a href=\"#\">FAQ</a></button>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"search-box\">\n");
      out.write("                <select name=\"user_search\" class=\"user_search\">\n");
      out.write("                  <option value=\"성함\">제목</option>\n");
      out.write("                  <option value=\"내용\">내용</option>\n");
      out.write("                  <option value=\"작성자\">작성자</option>\n");
      out.write("                </select>\n");
      out.write("                <input type=\"search\">\n");
      out.write("              <button type=\"button\" class=\"search-btn\">조회</button>\n");
      out.write("              <button type=\"button\" onclick=\"openModal('modal1')\" class=\"add_btn\">등록</button>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"modal1\" class=\"modal\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                <h3 class=\"modal-heder\">게시판 관리</h3>\n");
      out.write("                <div class=\"modal-text\">\n");
      out.write("                    <form action=\"#\" method=\"post\" id=\"add_post\" enctype=\"multipart/form-data\">\n");
      out.write("                      <div class=\"add_post_management\">\n");
      out.write("                        <table class=\"add_post_table\">\n");
      out.write("                          <thead>\n");
      out.write("                            <tr>\n");
      out.write("                              <th>*작성자</th>\n");
      out.write("                              <th><input type=\"text\" name=\"userName\" required></th>\n");
      out.write("                              <th>*분류</th>\n");
      out.write("                              <th>\n");
      out.write("                                <select name=\"classification\" id=\"classification\">\n");
      out.write("                                  <option value=\"분류\" selected>분류</option>\n");
      out.write("                                  <option value=\"--------------------------------------------\" disabled>--------------------------------------------</option>\n");
      out.write("                                  <option value=\"공지사항\">공지사항</option>\n");
      out.write("                                  <option value=\"게시판\">게시판</option>\n");
      out.write("                                  <option value=\"FAQ\">FAQ</option>\n");
      out.write("                                </select>\n");
      out.write("                              </th>\n");
      out.write("                            </tr>\n");
      out.write("                          </thead>\n");
      out.write("                          <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                              <td>제목</td>\n");
      out.write("                              <td colspan=\"3\"><input type=\"text\" name=\"title\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                              <td rowspan=\"2\">내용</td>\n");
      out.write("                              <td colspan=\"3\" rowspan=\"2\"><input type=\"text\" name=\"main_text\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                              <td>파일첨부</td>\n");
      out.write("                              <td colspan=\"3\"><input type=\"file\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                          </tbody>\n");
      out.write("                          </table>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"btn_box\">\n");
      out.write("                        <button type=\"submit\" id=\"submit-authority\" class=\"modal_btn active_btn\">저장</button>\n");
      out.write("                        <button type=\"button\" onclick=\"closeModal('modal1')\" class=\"modal_btn\">닫기</button>\n");
      out.write("                      </div>\n");
      out.write("                    </form>\n");
      out.write("                  </div>\n");
      out.write("                  <button tpye=\"button\" onclick=\"closeModal('modal1')\" class=\"close_btn\">\n");
      out.write("                    <iconify-icon icon=\"ph:x-light\" width=\"30px\"></iconify-icon>\n");
      out.write("                  </button>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"post_list\">\n");
      out.write("                <table class=\"board_list_wrap\">\n");
      out.write("                <thead class=\"board_list\">\n");
      out.write("                  <tr class=\"top\">\n");
      out.write("                    <th class=\"id\">번호</th>\n");
      out.write("                    <th class=\"title\">제목</th>\n");
      out.write("                    <th class=\"writer\">작성자</th>\n");
      out.write("                    <th class=\"whether\">작성일</th>\n");
      out.write("                    <th class=\"reg\">조회수</th>\n");
      out.write("                  </tr>\n");
      out.write("                </thead>\n");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(url, user, password);

    String selectNoticeQuery = "SELECT uid, notice_title AS title, notice_writer AS writer, notice_date AS date, notice_views AS views FROM notice ORDER BY uid DESC";
    PreparedStatement noticeStatement = conn.prepareStatement(selectNoticeQuery);
    ResultSet noticeResultSet = noticeStatement.executeQuery();

    String selectContactQuery = "SELECT uid, contact_title AS title, user_name AS writer, contact_reg_date AS date, contact_views AS views FROM contact_question INNER JOIN user_list ON contact_question.contact_writer_id = user_list.user_uid ORDER BY uid DESC";
    PreparedStatement contactStatement = conn.prepareStatement(selectContactQuery);
    ResultSet contactResultSet = contactStatement.executeQuery();

    // 두 결과를 합치기 위해 ArrayList에 순차적으로 데이터 추가
    ArrayList<HashMap<String, String>> combinedResults = new ArrayList<>();

    while (noticeResultSet.next()) {
        HashMap<String, String> data = new HashMap<>();
        data.put("uid", noticeResultSet.getString("uid"));
        data.put("title", "[공지사항] " + noticeResultSet.getString("title"));
        data.put("writer", noticeResultSet.getString("writer"));
        data.put("date", noticeResultSet.getString("date"));
        data.put("views", noticeResultSet.getString("views"));
        combinedResults.add(data);
    }

    // 게시판 쿼리 결과
    while (contactResultSet.next()) {
        HashMap<String, String> data = new HashMap<>();
        data.put("uid", contactResultSet.getString("uid"));
        data.put("title", "[게시판] " + contactResultSet.getString("title"));
        data.put("writer", contactResultSet.getString("writer"));
        data.put("date", contactResultSet.getString("date"));
        data.put("views", contactResultSet.getString("views"));
        combinedResults.add(data);
    }

    // 번호 매기기
    int postNumber = 1;

    // 결과 출력
    for (HashMap<String, String> data : combinedResults) {
        String uid = data.get("uid");
        String title = data.get("title");
        String writer = data.get("writer");
        String date = data.get("date");
        String views = data.get("views");

        
      out.write("\n");
      out.write("        <tbody class=\"board_list\">\n");
      out.write("            <tr>\n");
      out.write("                <td class=\"id\">");
      out.print( postNumber++ );
      out.write("</td>\n");
      out.write("                <td class=\"title\">\n");
      out.write("                    ");

                    // 공지사항이면 공지사항 페이지로, 게시판이면 게시판 페이지로 링크를 설정합니다.
                    String link = "";
                    if (title.startsWith("[공지사항]")) {
                        link = "notice_view.jsp?uid=" + uid.substring(uid.indexOf(" ") + 1);
                    } else {
                        link = "board_view.jsp?uid=" + uid.substring(uid.indexOf(" ") + 1);
                    }
                    
      out.write("\n");
      out.write("                    <a href=\"");
      out.print( link );
      out.write("\">\n");
      out.write("                        ");
      out.print( title );
      out.write("\n");
      out.write("                    </a>\n");
      out.write("                </td>\n");
      out.write("                <td class=\"writer\">");
      out.print( writer );
      out.write("</td>\n");
      out.write("                <td class=\"whether\">");
      out.print( date );
      out.write("</td>\n");
      out.write("                <td class=\"reg\">");
      out.print( views );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("        </tbody>\n");
      out.write("        ");

    }

    noticeResultSet.close();
    contactResultSet.close();
    noticeStatement.close();
    contactStatement.close();
    conn.close();
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}

      out.write("\n");
      out.write("                \n");
      out.write("                \n");
      out.write("              \n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </main>\n");
      out.write("	<!-- 아래 footer 하단 고정 -->\n");
      out.write("	<footer class=\"footer\">\n");
      out.write("		<div class=\"footer-content\">\n");
      out.write("			<h3>(주)Re:connect</h3>\n");
      out.write("			<span>대표 : Recycle</span>\n");
      out.write("			<span>사업자등록번호 : 999-99-99999</span>\n");
      out.write("			<span>주소 : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span>\n");
      out.write("			<span>Tel.042-222-2402</span>\n");
      out.write("			<ul class=\"footer-socials\">\n");
      out.write("				<li>\n");
      out.write("					<a href=\"index_logout.jsp\"><img src=\"../images/ico_image.svg\" alt=\"ico_image\" /></a>\n");
      out.write("					<!-- 임시로 로그아웃 넣어 놨음 -->\n");
      out.write("				</li>\n");
      out.write("				<li>\n");
      out.write("					<a href=\"account_manager.jsp\"><img src=\"../images/ico_instagram.svg\" alt=\"ico_instagram\" /></a>\n");
      out.write("					<!-- 임시로 커플매니저페이지 넣어 놨음 -->\n");
      out.write("				</li>\n");
      out.write("				<li>\n");
      out.write("					<a href=\"admin_manager_management.jsp\"><img src=\"../images/ico_youtube.svg\"\n");
      out.write("							alt=\"ico_youtube\" /></a>\n");
      out.write("					<!-- 임시로 관리자페이지 넣어 놨음 -->\n");
      out.write("				</li>\n");
      out.write("			</ul>\n");
      out.write("			<div class=\"footer-menu\">\n");
      out.write("				<p>\n");
      out.write("					copyright &copy;2023 by\n");
      out.write("					<a href=\"../index.jsp\">Re:connect.</a>\n");
      out.write("					All pictures cannot be copied without permission.\n");
      out.write("				</p>\n");
      out.write("				<ul class=\"f-menu\">\n");
      out.write("					<li><a href=\"../index.jsp\">Home</a></li>\n");
      out.write("					<li><a href=\"dash.jsp\">About</a></li>\n");
      out.write("					<li><a href=\"estimate.jsp\">Contact</a></li>\n");
      out.write("					<li><a href=\"FAQ.jsp\">FAQ</a></li>\n");
      out.write("				</ul>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</footer>\n");
      out.write("	<script src=\"../script/admin_post_management.js\"></script>\n");
      out.write("	<script src=\"https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js\"></script>\n");
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

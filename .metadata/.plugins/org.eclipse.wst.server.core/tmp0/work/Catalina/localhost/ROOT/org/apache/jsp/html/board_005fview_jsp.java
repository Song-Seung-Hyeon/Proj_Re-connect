/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-19 08:25:00 UTC
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

public final class board_005fview_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write('\n');

String url = "jdbc:mysql://192.168.0.71:3306/recycle";
String user = "recycle";
String password = "1234";

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ko\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("<title>자유게시판 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>\n");
      out.write("<meta charset=\"UTF-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("<meta name=\"keyworeds\"\n");
      out.write("	content=\"결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,\" />\n");
      out.write("<meta name=\"description\"\n");
      out.write("	content=\"안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다.\" />\n");
      out.write("<link rel=\"icon\" href=\"../images/favicon.png\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/board_view.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/reset.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/header_footer_noside.css\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("	<!-- 헤더 -->\n");
      out.write("	<header>\n");
      out.write("		<div class=\"header\">\n");
      out.write("			<div class=\"air\"></div>\n");
      out.write("			<a href=\"../index.jsp\" id=\"logo\"> <img src=\"../images/logo.svg\"\n");
      out.write("				alt=\"로고\" />\n");
      out.write("			</a>\n");
      out.write("			<div class=\"login_menu\">\n");
      out.write("				<div id=\"loginStatus\"></div>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("		<nav class=\"nav\">\n");
      out.write("			<a href=\"../index.jsp\" id=\"logo2\"> <img src=\"../images/logo.svg\"\n");
      out.write("				alt=\"로고\" width=\"95\" />\n");
      out.write("			</a>\n");
      out.write("			<ul class=\"gnb\">\n");
      out.write("				<!-- <div id=\"test\"></div> -->\n");
      out.write("				<li class=\"gnb-menu\"><a href=\"#\" class=\"menu-btn\">회사소개</a>\n");
      out.write("					<ul class=\"sub-menu\">\n");
      out.write("						<li><a href=\"dash.jsp\">Dash란?</a></li>\n");
      out.write("						<li><a href=\"greeting.jsp\">인사말</a></li>\n");
      out.write("						<li><a href=\"manager.jsp\">커플 매니저 소개</a></li>\n");
      out.write("					</ul></li>\n");
      out.write("\n");
      out.write("				<li class=\"gnb-menu\"><a href=\"#\" class=\"menu-btn\">커뮤니티</a>\n");
      out.write("					<ul class=\"sub-menu\">\n");
      out.write("						<li><a href=\"notice.jsp\">공지사항</a></li>\n");
      out.write("						<li><a href=\"board_main.jsp\">문의하기</a></li>\n");
      out.write("						<li><a href=\"event.jsp\">이벤트</a></li>\n");
      out.write("						<li><a href=\"FAQ.jsp\">FAQ</a></li>\n");
      out.write("					</ul></li>\n");
      out.write("\n");
      out.write("				<li class=\"gnb-menu\"><a href=\"#\" class=\"menu-btn\">이용안내</a>\n");
      out.write("					<ul class=\"sub-menu\">\n");
      out.write("\n");
      out.write("						<li><a href=\"estimate.jsp\">상담예약</a></li>\n");
      out.write("						<li><a href=\"price.jsp\">이용요금</a></li>\n");
      out.write("					</ul></li>\n");
      out.write("\n");
      out.write("				<li class=\"gnb-menu\"><a href=\"#\" class=\"menu-btn\">후기정보</a>\n");
      out.write("					<ul class=\"sub-menu\">\n");
      out.write("						<li><a href=\"mgr_reviews.jsp\">매니저 후기</a></li>\n");
      out.write("						<li><a href=\"interview.jsp\">인터뷰</a></li>\n");
      out.write("					</ul></li>\n");
      out.write("\n");
      out.write("				<li class=\"gnb-menu\"><a href=\"#\" class=\"menu-btn\">매칭하기</a>\n");
      out.write("					<ul class=\"sub-menu\">\n");
      out.write("						<li><a href=\"matching.jsp\">Dash매칭</a></li>\n");
      out.write("						<li><a href=\"bestmember.jsp\">This Is Me</a></li>\n");
      out.write("					</ul></li>\n");
      out.write("			</ul>\n");
      out.write("			<button class=\"nav-icon\">\n");
      out.write("				<iconify-icon icon=\"ph:list-fill\"></iconify-icon>\n");
      out.write("			</button>\n");
      out.write("\n");
      out.write("		</nav>\n");
      out.write("		<div class=\"dim-layer\"></div>\n");
      out.write("	</header>\n");
      out.write("\n");

try {
    HttpSession boardSession = request.getSession(false);
    String userUID = (String) session.getAttribute("userUID");

    if (userUID != null) {
        String getUid = request.getParameter("uid");
        int uid = Integer.parseInt(getUid);

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, password);

        String selectQuery = "SELECT cq.*, ul.* " +
            "FROM contact_question cq " +
            "INNER JOIN user_list ul ON cq.contact_writer_id = ul.user_uid " +
            "WHERE uid =?";

        PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
        preparedStatement.setInt(1, uid);
        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
        	int userAuth = (int) session.getAttribute("userAuth");
            String requestedUID = resultSet.getString("contact_writer_id");

            if (userAuth == 1) {
                if (userUID.equals(requestedUID)) {
                	 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                     Timestamp contactDate = resultSet.getTimestamp("contact_reg_date");
                     String formatNoticeDate = dateFormat.format(contactDate);
                	
      out.write("\n");
      out.write("                		<main>\n");
      out.write("		<div id=\"box\"></div>\n");
      out.write("		<div class=\"board_wrap\">\n");
      out.write("			<div class=\"board_title\">\n");
      out.write("				<strong><a href=\"board_main.jsp\">문의하기</a></strong>\n");
      out.write("				<p>문의하기</p>\n");
      out.write("			</div>\n");
      out.write("			<table class=\"view\">\n");
      out.write("				<thead>\n");
      out.write("					<tr>\n");
      out.write("						<th colspan=\"8\" class=\"title\">");
      out.print(resultSet.getString("contact_title"));
      out.write("</th>\n");
      out.write("					</tr>\n");
      out.write("				</thead>\n");
      out.write("				<tbody>\n");
      out.write("					<tr class=\"info\">\n");
      out.write("						<th>번호</th>\n");
      out.write("						<td>");
      out.print(resultSet.getString("uid"));
      out.write("</td>\n");
      out.write("						<th>작성자</th>\n");
      out.write("						<td>");
      out.print(resultSet.getString("user_name"));
      out.write("</td>\n");
      out.write("						<th>작성일</th>\n");
      out.write("						<td>");
      out.print(formatNoticeDate);
      out.write("</td>\n");
      out.write("						<th>조회</th>\n");
      out.write("						<td>");
      out.print(resultSet.getString("contact_views"));
      out.write("</td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						<td colspan=\"8\" class=\"content\"><textarea id=\"textarea\"\n");
      out.write("								oninput=\"autoResize()\" readonly>");
      out.print(resultSet.getString("contact_content"));
      out.write("</textarea></td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						");

					    String photoURL = resultSet.getString("photo_url");
					    if (photoURL != null && !photoURL.isEmpty()) {
					        String imageName = new File(photoURL).getName();
					    
      out.write("\n");
      out.write("						<td colspan=\"8\" class=\"content\"><img\n");
      out.write("							src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\"\n");
      out.write("							alt=\"게시글 이미지\" class=\"boardImg\" /></td>\n");
      out.write("						");

					    }
					    
      out.write("\n");
      out.write("					</tr>\n");
      out.write("				</tbody>\n");
      out.write("			</table>\n");
      out.write("			");

			String answerQuery = "SELECT ca.*, ul.* " +
			        "FROM contact_answer ca " +
			        "INNER JOIN user_list ul ON ca.answer_writer = ul.user_uid " +
			        "WHERE ca.uid = ?"; // 여기서 ?에는 문의 글의 uid를 넣어주세요.
			PreparedStatement answerStatement = conn.prepareStatement(answerQuery);
			answerStatement.setInt(1, uid); // 여기에는 문의 글의 uid를 넣어주세요.
			ResultSet resultSet2 = answerStatement.executeQuery();
			if (resultSet2.next()) {
           	 SimpleDateFormat answerDateFormat = new SimpleDateFormat("yyyy-MM-dd");
             Timestamp answerDate = resultSet2.getTimestamp("answer_reg_date");
             String formatAnswerDate = dateFormat.format(answerDate);
			
      out.write("\n");
      out.write("			<br>\n");
      out.write("			<br>\n");
      out.write("			<br>\n");
      out.write("			<br>\n");
      out.write("			<br>\n");
      out.write("			<br>\n");
      out.write("			\n");
      out.write("			<table class=\"view\">\n");
      out.write("				<tbody>\n");
      out.write("					<tr class=\"info\">\n");
      out.write("\n");
      out.write("						<th>답변자</th>\n");
      out.write("						<td>");
      out.print(resultSet2.getString("user_name"));
      out.write("</td>\n");
      out.write("						<th>작성일</th>\n");
      out.write("						<td>");
      out.print(formatAnswerDate);
      out.write("</td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						<td colspan=\"8\" class=\"content\"><textarea id=\"textarea\"\n");
      out.write("								oninput=\"autoResize()\" readonly>");
      out.print(resultSet2.getString("answer_content"));
      out.write("</textarea></td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						");

					    String photoURL2 = resultSet2.getString("photo_url");
					    if (photoURL2 != null && !photoURL2.isEmpty()) {
					        String imageName = new File(photoURL2).getName();
					    
      out.write("\n");
      out.write("						<td colspan=\"8\" class=\"content\"><img\n");
      out.write("							src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\"\n");
      out.write("							alt=\"게시글 이미지\" class=\"boardImg\" /></td>\n");
      out.write("						");

					    }
					    
      out.write("\n");
      out.write("					</tr>\n");
      out.write("				</tbody>\n");
      out.write("			</table>\n");
      out.write("			");
 
			 }
			
      out.write("\n");
      out.write("			<div class=\"btn_box\">\n");
      out.write("				<a href=\"board_correction.jsp?uid=");
      out.print(uid);
      out.write("\" class=\"btn_correction\">수정</a>\n");
      out.write("				<a href=\"board_main.jsp\" class=\"btn_back\">목록</a>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</main>\n");
      out.write("                	");

                } else {
                	
      out.write("\n");
      out.write("				    <script>\n");
      out.write("				        // 접근 권한이 없는 경우 처리\n");
      out.write("				        alert('접근권한이 없습니다.');\n");
      out.write("				        location.href = \"../html/board_main.jsp\";\n");
      out.write("				    </script>\n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("                ");

            } else if (userAuth == 2 || userAuth == 3) {
            	 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                 Timestamp contactDate = resultSet.getTimestamp("contact_reg_date");
                 String formatNoticeDate = dateFormat.format(contactDate);
            	
      out.write("\n");
      out.write("            		<main>\n");
      out.write("		<div id=\"box\"></div>\n");
      out.write("		<div class=\"board_wrap\">\n");
      out.write("			<div class=\"board_title\">\n");
      out.write("				<strong><a href=\"board_main.jsp\">문의하기</a></strong>\n");
      out.write("				<p>문의하기</p>\n");
      out.write("			</div>\n");
      out.write("			<table class=\"view\">\n");
      out.write("				<thead>\n");
      out.write("					<tr>\n");
      out.write("						<th colspan=\"8\" class=\"title\">");
      out.print(resultSet.getString("contact_title"));
      out.write("</th>\n");
      out.write("					</tr>\n");
      out.write("				</thead>\n");
      out.write("				<tbody>\n");
      out.write("					<tr class=\"info\">\n");
      out.write("						<th>번호</th>\n");
      out.write("						<td>");
      out.print(resultSet.getString("uid"));
      out.write("</td>\n");
      out.write("						<th>작성자</th>\n");
      out.write("						<td>");
      out.print(resultSet.getString("user_name"));
      out.write("</td>\n");
      out.write("						<th>작성일</th>\n");
      out.write("						<td>");
      out.print(formatNoticeDate);
      out.write("</td>\n");
      out.write("						<th>조회</th>\n");
      out.write("						<td>");
      out.print(resultSet.getString("contact_views"));
      out.write("</td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						<td colspan=\"8\" class=\"content\"><textarea id=\"textarea\"\n");
      out.write("								oninput=\"autoResize()\" readonly>");
      out.print(resultSet.getString("contact_content"));
      out.write("</textarea></td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						");

					    String photoURL = resultSet.getString("photo_url");
					    if (photoURL != null && !photoURL.isEmpty()) {
					        String imageName = new File(photoURL).getName();
					    
      out.write("\n");
      out.write("						<td colspan=\"8\" class=\"content\"><img\n");
      out.write("							src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\"\n");
      out.write("							alt=\"게시글 이미지\" class=\"boardImg\" /></td>\n");
      out.write("						");

					    }
					    
      out.write("\n");
      out.write("					</tr>\n");
      out.write("				</tbody>\n");
      out.write("			</table>\n");
      out.write("			");

			String answerQuery = "SELECT ca.*, ul.* " +
			        "FROM contact_answer ca " +
			        "INNER JOIN user_list ul ON ca.answer_writer = ul.user_uid " +
			        "WHERE ca.uid = ?"; // 여기서 ?에는 문의 글의 uid를 넣어주세요.
			PreparedStatement answerStatement = conn.prepareStatement(answerQuery);
			answerStatement.setInt(1, uid); // 여기에는 문의 글의 uid를 넣어주세요.
			ResultSet resultSet2 = answerStatement.executeQuery();
			if (resultSet2.next()) {
           	 SimpleDateFormat answerDateFormat = new SimpleDateFormat("yyyy-MM-dd");
             Timestamp answerDate = resultSet2.getTimestamp("answer_reg_date");
             String formatAnswerDate = dateFormat.format(answerDate);
			
      out.write("\n");
      out.write("			<br>\n");
      out.write("			<br>\n");
      out.write("			<br>\n");
      out.write("			\n");
      out.write("			<table class=\"view\">\n");
      out.write("				<tbody>\n");
      out.write("					<tr class=\"info\">\n");
      out.write("\n");
      out.write("						<th>답변자</th>\n");
      out.write("						<td>");
      out.print(resultSet2.getString("user_name"));
      out.write("</td>\n");
      out.write("						<th>작성일</th>\n");
      out.write("						<td>");
      out.print(formatAnswerDate);
      out.write("</td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						<td colspan=\"8\" class=\"content\"><textarea id=\"textarea\"\n");
      out.write("								oninput=\"autoResize()\" readonly>");
      out.print(resultSet2.getString("answer_content"));
      out.write("</textarea></td>\n");
      out.write("					</tr>\n");
      out.write("					<tr>\n");
      out.write("						");

					    String photoURL2 = resultSet2.getString("photo_url");
					    if (photoURL2 != null && !photoURL2.isEmpty()) {
					        String imageName = new File(photoURL2).getName();
					    
      out.write("\n");
      out.write("						<td colspan=\"8\" class=\"content\"><img\n");
      out.write("							src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\"\n");
      out.write("							alt=\"게시글 이미지\" class=\"boardImg\" /></td>\n");
      out.write("						");

					    }
					    
      out.write("\n");
      out.write("					</tr>\n");
      out.write("				</tbody>\n");
      out.write("			</table>\n");
      out.write("			");
 
			 }
			
      out.write("\n");
      out.write("			<div class=\"btn_box\">\n");
      out.write("				<a href=\"board_answer.jsp?contact_title=");
      out.print(resultSet.getString("contact_title"));
      out.write("\" class=\"btn_correction\">답변</a>\n");
      out.write("				<a href=\"post_management.jsp\" class=\"btn_back\">목록</a>\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("	</main>\n");
      out.write("                ");
 } else { 
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    alert('접근권한이 없습니다.');\n");
      out.write("                    location.href = \"../html/board_main.jsp\";\n");
      out.write("                </script>\n");
      out.write("                ");
 }
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    
      out.write("\n");
      out.write("	<!-- 아래 footer 하단 고정 -->\n");
      out.write("	<footer class=\"footer\">\n");
      out.write("		<div class=\"footer-content\">\n");
      out.write("			<h3>(주)Re:connect</h3>\n");
      out.write("			<span>대표 : Recycle</span> <span>사업자등록번호 : 999-99-99999</span> <span>주소\n");
      out.write("				: (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span> <span>Tel.042-222-2402</span>\n");
      out.write("			<ul class=\"footer-socials\">\n");
      out.write("				<li><a href=\"index_logout.jsp\"><img\n");
      out.write("						src=\"../images/ico_image.svg\" alt=\"ico_image\" /></a> <!-- 임시로 로그아웃 넣어 놨음 -->\n");
      out.write("				</li>\n");
      out.write("				<li><a href=\"account_manager.jsp\"><img\n");
      out.write("						src=\"../images/ico_instagram.svg\" alt=\"ico_instagram\" /></a> <!-- 임시로 커플매니저페이지 넣어 놨음 -->\n");
      out.write("				</li>\n");
      out.write("				<li><a href=\"admin_manager_management.jsp\"><img\n");
      out.write("						src=\"../images/ico_youtube.svg\" alt=\"ico_youtube\" /></a> <!-- 임시로 관리자페이지 넣어 놨음 -->\n");
      out.write("				</li>\n");
      out.write("			</ul>\n");
      out.write("			<div class=\"footer-menu\">\n");
      out.write("				<p>\n");
      out.write("					copyright &copy;2023 by <a href=\"../index.jsp\">Re:connect.</a> All\n");
      out.write("					pictures cannot be copied without permission.\n");
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
      out.write("	<script src=\"../script/loginSession2.js\"></script>\n");
      out.write("	<script src=\"../script/header.js\"></script>\n");
      out.write("	<script src=\"../script/view.js\"></script>\n");
      out.write("	<script\n");
      out.write("		src=\"https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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

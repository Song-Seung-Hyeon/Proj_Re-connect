/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-19 07:03:50 UTC
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

public final class user_005festimate_005fmanager_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
request.setCharacterEncoding("utf-8");
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../jsp/user_list_component.jsp", out, false);
      out.write("  \r\n");
      out.write("\r\n");

String userName = (String) request.getAttribute("userName");
String userPhotoURL = (String) request.getAttribute("userPhotoURL");
String imageName = (String) request.getAttribute("imageName");

      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    ");

    String url = "jdbc:mysql://192.168.0.71:3306/recycle";
    String user = "recycle";
    String password = "1234";    
    
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <title>커플매니저 상담예약 확인 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>\r\n");
      out.write("  <meta charset=\"UTF-8\" />\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("  <meta name=\"keyworeds\" content=\"결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,\" />\r\n");
      out.write("  <meta name=\"description\" content=\"안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다.\" />\r\n");
      out.write("  <link rel=\"icon\" href=\"../images/favicon.png\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/user_estimate_manager.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/footer_style.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"../CSS/reset.css\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
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
      out.write("						<img src=\"");
      out.print( request.getContextPath() );
      out.write("/images/");
      out.print( imageName );
      out.write("\" alt=\"user_img\" />\r\n");
      out.write("          </figure>\r\n");
      out.write("        </div>\r\n");
      out.write("      </button>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"layer_member\">\r\n");
      out.write("        <ul>\r\n");
      out.write("          <li>\r\n");
      out.write("			<img src=\"");
      out.print( request.getContextPath() );
      out.write("/images/");
      out.print( imageName );
      out.write("\" alt=\"user_img\" /><span>");
      out.print(userName );
      out.write("</span>\r\n");
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
      out.write("  <div class=\"nav\">\r\n");
      out.write("    <a href=\"../index.jsp\" id=\"logo2\">\r\n");
      out.write("      <img src=\"../images/logo.svg\" alt=\"logo\" />\r\n");
      out.write("    </a>\r\n");
      out.write("    <ul class=\"gnb\">\r\n");
      out.write("      <li class=\"gnb-menu\">\r\n");
      out.write("        <a href=\"account_manager.jsp\" class=\"menu-btn\">마이페이지</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"gnb-menu\">\r\n");
      out.write("        <a href=\"post_management.jsp\" class=\"menu-btn\">게시물 관리</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"gnb-menu\">\r\n");
      out.write("        <a href=\"user_management.jsp\" class=\"menu-btn\">회원관리</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"gnb-menu\">\r\n");
      out.write("        <a href=\"user_estimate_manager.jsp\" class=\"menu-btn\">상담예약 확인</a>\r\n");
      out.write("      </li>\r\n");
      out.write("      <li class=\"gnb-menu\">\r\n");
      out.write("        <a href=\"matching_management.jsp\" class=\"menu-btn\">DASH 매칭</a>\r\n");
      out.write("      </li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    <button type=\"button\" class=\"nav-icon\">\r\n");
      out.write("      <iconify-icon icon=\"ph:list-fill\"></iconify-icon>\r\n");
      out.write("    </button>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <main>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"container_main\">\r\n");
      out.write("        <div class=\"content\">\r\n");
      out.write("          <h1>상담예약 확인</h1>\r\n");
      out.write("          <div class=\"authority\">\r\n");
      out.write("            <div class=\"search-box\">\r\n");
      out.write("                <select name=\"user_search\" class=\"user_search\">\r\n");
      out.write("                  <option value=\"성함\">성함</option>\r\n");
      out.write("                  <option value=\"ID\">ID</option>\r\n");
      out.write("                  <option value=\"사용권한\">사용권한</option>\r\n");
      out.write("                </select>\r\n");
      out.write("                <input type=\"search\">\r\n");
      out.write("              <button type=\"button\" class=\"search-btn\">조회</button>\r\n");
      out.write("              <button type=\"button\" onclick=\"openModal('modal1')\" class=\"add_btn\">등록</button>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div id=\"modal1\" class=\"modal\">\r\n");
      out.write("              <div class=\"modal-content\">\r\n");
      out.write("                <h3 class=\"modal-heder\">관리자 등록</h3>\r\n");
      out.write("                <div class=\"modal-text\">\r\n");
      out.write("                    <form action=\"#\" method=\"post\" id=\"add_administrator\" enctype=\"multipart/form-data\">\r\n");
      out.write("                      <div class=\"add_info\">\r\n");
      out.write("                        <table class=\"info\">\r\n");
      out.write("                          <thead>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                              <td>* 사용자 ID</td>\r\n");
      out.write("                              <td><input type=\"text\" name=\"userId\" required></td>\r\n");
      out.write("                              <td>* 사용자명</td>\r\n");
      out.write("                              <td><input type=\"text\" name=\"userName\" required></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                          </thead>\r\n");
      out.write("                          <tbody>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                              <td>* 암호</td>\r\n");
      out.write("                              <td><input type=\"password\" name=\"userPassword\" required></td>\r\n");
      out.write("                              <td>이메일</td>\r\n");
      out.write("                              <td><input type=\"text\" name=\"userEmail\"></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                              <td>연락처</td>\r\n");
      out.write("                              <td><input type=\"text\" name=\"userNumber\"></td>\r\n");
      out.write("                              <td>비상연락처</td>\r\n");
      out.write("                              <td><input type=\"text\" name=\"userNumber2\"></td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                            <tr>\r\n");
      out.write("                              <td>* 사용여부</td>\r\n");
      out.write("                              <td>\r\n");
      out.write("                                <select name=\"userUse\" id=\"userUse\">\r\n");
      out.write("                                <option value=\"사용여부\" selected>사용여부</option>\r\n");
      out.write("                                <option value=\"--------------------------------------------\" disabled>--------------------------------------------</option>\r\n");
      out.write("                                <option value=\"Y\">사용</option>\r\n");
      out.write("                                <option value=\"N\">미사용</option>\r\n");
      out.write("                              </select>\r\n");
      out.write("                            </td>\r\n");
      out.write("                              <td>사용자권한</td>\r\n");
      out.write("                              <td>\r\n");
      out.write("                                <select name=\"userGroup\" id=\"userGroup\">\r\n");
      out.write("                                  <option value=\"사용자권한\" selected>사용자권한</option>\r\n");
      out.write("                                  <option value=\"--------------------------------------------\" disabled>--------------------------------------------</option>\r\n");
      out.write("                                  <option value=\"관리자\">관리자</option>\r\n");
      out.write("                                  <option value=\"커플매니저\">커플매니저</option>\r\n");
      out.write("                                  <option value=\"일반\">일반</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                              </td>\r\n");
      out.write("                            </tr>\r\n");
      out.write("                          </tbody>\r\n");
      out.write("                          </table>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"btn_box\">\r\n");
      out.write("                        <button type=\"submit\" id=\"submit-authority\" class=\"modal_btn active_btn\">저장</button>\r\n");
      out.write("                        <button type=\"button\" onclick=\"closeModal('modal1')\" class=\"modal_btn\">닫기</button>\r\n");
      out.write("                      </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <button tpye=\"button\" onclick=\"closeModal('modal1')\" class=\"close_btn\">\r\n");
      out.write("                    <iconify-icon icon=\"ph:x-light\" width=\"30px\"></iconify-icon>\r\n");
      out.write("                  </button>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div id=\"modal2\" class=\"modal\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("                  <h3 class=\"modal-heder\">관리자 등록</h3>\r\n");
      out.write("                  <div class=\"modal-text\">\r\n");
      out.write("                      <form action=\"#\" method=\"post\" id=\"add_administrator\" enctype=\"multipart/form-data\">\r\n");
      out.write("                        <div class=\"add_info\">\r\n");
      out.write("                          <table class=\"info\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                              <tr>\r\n");
      out.write("                                <td>* 사용자 ID</td>\r\n");
      out.write("                                <td><input type=\"text\" name=\"userId\" required value=\"tpsk0415\"></td>\r\n");
      out.write("                                <td>* 사용자명</td>\r\n");
      out.write("                                <td><input type=\"text\" name=\"userName\" required value=\"유세나\"></td>\r\n");
      out.write("                              </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                              <tr>\r\n");
      out.write("                                <td>* 암호</td>\r\n");
      out.write("                                <td><input type=\"password\" name=\"userPassword\" required value=\"tpsk0415\"></td>\r\n");
      out.write("                                <td>이메일</td>\r\n");
      out.write("                                <td><input type=\"text\" name=\"userEmail\" value=\"tpsk0415@naver.com\"></td>\r\n");
      out.write("                              </tr>\r\n");
      out.write("                              <tr>\r\n");
      out.write("                                <td>연락처</td>\r\n");
      out.write("                                <td><input type=\"text\" name=\"userNumber\"></td>\r\n");
      out.write("                                <td>비상연락처</td>\r\n");
      out.write("                                <td><input type=\"text\" name=\"userNumber2\"></td>\r\n");
      out.write("                              </tr>\r\n");
      out.write("                              <tr>\r\n");
      out.write("                                <td>* 사용여부</td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                  <select name=\"userUse\" id=\"userUse\">\r\n");
      out.write("                                  <option value=\"사용여부\">사용여부</option>\r\n");
      out.write("                                  <option value=\"--------------------------------------------\" disabled>--------------------------------------------</option>\r\n");
      out.write("                                  <option value=\"Y\" selected >사용</option>\r\n");
      out.write("                                  <option value=\"N\">미사용</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                              </td>\r\n");
      out.write("                                <td>사용자권한</td>\r\n");
      out.write("                                <td>\r\n");
      out.write("                                  <select name=\"userGroup\" id=\"userGroup\">\r\n");
      out.write("                                    <option value=\"사용자권한\" selected>사용자권한</option>\r\n");
      out.write("                                    <option value=\"--------------------------------------------\" disabled>--------------------------------------------</option>\r\n");
      out.write("                                    <option value=\"관리자\">관리자</option>\r\n");
      out.write("                                    <option value=\"커플매니저\" selected >커플매니저</option>\r\n");
      out.write("                                    <option value=\"일반\">일반</option>\r\n");
      out.write("                                  </select>\r\n");
      out.write("                                </td>\r\n");
      out.write("                              </tr>\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"btn_box\">\r\n");
      out.write("                          <button type=\"submit\" id=\"submit-authority\" class=\"modal_btn active_btn\">수정</button>\r\n");
      out.write("                          <button type=\"button\" onclick=\"closeModal('modal2')\" class=\"modal_btn\">닫기</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                      </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <button tpye=\"button\" onclick=\"closeModal('modal2')\" class=\"close_btn\">\r\n");
      out.write("                      <iconify-icon icon=\"ph:x-light\" width=\"30px\"></iconify-icon>\r\n");
      out.write("                    </button>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- 유세나 모달 -->\r\n");
      out.write("              <div id=\"modal3\" class=\"modal\">\r\n");
      out.write("                  <div class=\"modal-content\">\r\n");
      out.write("                    <h3 class=\"modal-heder\">관리자 등록</h3>\r\n");
      out.write("                    <div class=\"modal-text\">\r\n");
      out.write("                        <form action=\"#\" method=\"post\" id=\"add_administrator\" enctype=\"multipart/form-data\">\r\n");
      out.write("                          <div class=\"add_info\">\r\n");
      out.write("                            <table class=\"info\">\r\n");
      out.write("                              <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                  <td>* 사용자 ID</td>\r\n");
      out.write("                                  <td><input type=\"text\" name=\"userId\" required value=\"admin\"></td>\r\n");
      out.write("                                  <td>* 사용자명</td>\r\n");
      out.write("                                  <td><input type=\"text\" name=\"userName\" required value=\"안영태\"></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                              </thead>\r\n");
      out.write("                              <tbody>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                  <td>* 암호</td>\r\n");
      out.write("                                  <td><input type=\"password\" name=\"userPassword\" required value=\"tpsk0415\"></td>\r\n");
      out.write("                                  <td>이메일</td>\r\n");
      out.write("                                  <td><input type=\"text\" name=\"userEmail\" value=\"admin@nate.com\"></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                  <td>연락처</td>\r\n");
      out.write("                                  <td><input type=\"text\" name=\"userNumber\"></td>\r\n");
      out.write("                                  <td>비상연락처</td>\r\n");
      out.write("                                  <td><input type=\"text\" name=\"userNumber2\"></td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                  <td>* 사용여부</td>\r\n");
      out.write("                                  <td>\r\n");
      out.write("                                    <select name=\"userUse\" id=\"userUse\">\r\n");
      out.write("                                    <option value=\"사용여부\">사용여부</option>\r\n");
      out.write("                                    <option value=\"--------------------------------------------\" disabled>--------------------------------------------</option>\r\n");
      out.write("                                    <option value=\"Y\" selected >사용</option>\r\n");
      out.write("                                    <option value=\"N\">미사용</option>\r\n");
      out.write("                                  </select>\r\n");
      out.write("                                </td>\r\n");
      out.write("                                  <td>사용자권한</td>\r\n");
      out.write("                                  <td>\r\n");
      out.write("                                    <select name=\"userGroup\" id=\"userGroup\">\r\n");
      out.write("                                      <option value=\"사용자권한\" selected>사용자권한</option>\r\n");
      out.write("                                      <option value=\"--------------------------------------------\" disabled>--------------------------------------------</option>\r\n");
      out.write("                                      <option value=\"관리자\">관리자</option>\r\n");
      out.write("                                      <option value=\"커플매니저\" selected >커플매니저</option>\r\n");
      out.write("                                      <option value=\"일반\">일반</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                  </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                              </tbody>\r\n");
      out.write("                              </table>\r\n");
      out.write("                          </div>\r\n");
      out.write("                          <div class=\"btn_box\">\r\n");
      out.write("                            <button type=\"submit\" id=\"submit-authority\" class=\"modal_btn active_btn\">수정</button>\r\n");
      out.write("                            <button type=\"button\" onclick=\"closeModal('modal3')\" class=\"modal_btn\">닫기</button>\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <button tpye=\"button\" onclick=\"closeModal('modal3')\" class=\"close_btn\">\r\n");
      out.write("                        <iconify-icon icon=\"ph:x-light\" width=\"30px\"></iconify-icon>\r\n");
      out.write("                      </button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              <div class=\"manager_list\">\r\n");
      out.write("                <table class=\"board_list_wrap\">\r\n");
      out.write("                  <thead class=\"board_list\">\r\n");
      out.write("                    <tr class=\"top\">\r\n");
      out.write("                      <th>상담일정</th>\r\n");
      out.write("                      <th>성별</th>\r\n");
      out.write("                      <th>이름</th>\r\n");
      out.write("                      <th>출생년도</th>\r\n");
      out.write("                      <th>직업</th>\r\n");
      out.write("                      <th>학력</th>\r\n");
      out.write("                      <th>지역</th>\r\n");
      out.write("                      <th>연락처</th>\r\n");
      out.write("                      <th>이메일</th>\r\n");
      out.write("                      <th colspan=\"2\"></th>\r\n");
      out.write("                      <!-- <th></th> -->\r\n");
      out.write("                    </tr>\r\n");
      out.write("                  </thead>\r\n");
      out.write("                  <tbody class=board_list>\r\n");
      out.write("                  ");

                    try {
                      Class.forName("com.mysql.cj.jdbc.Driver");
                      Connection conn = DriverManager.getConnection(url, user, password);
                      String selectQuery = "SELECT * FROM estimate";
                      PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
                      ResultSet resultSet = preparedStatement.executeQuery();

                      while (resultSet.next()) {
                    	  
                    	  String userGender = resultSet.getString("estimate_gender");
                    	  String genderString = (userGender != null && userGender.equals("0")) ? "남자" : "여자";

                  
      out.write("\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_date") );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( genderString );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_name") );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_birth") );
      out.write("년</td>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_job") );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_education") );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_country") );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_phone") );
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print( resultSet.getString("estimate_email") );
      out.write("</td>\r\n");
      out.write("                    <td><button>삭제</button></td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  ");
 
                      }
                      resultSet.close();
                      preparedStatement.close();
                      conn.close();
                    } catch (Exception e) {
                      out.println("Error: " + e.getMessage());
                    }
                  
      out.write("\r\n");
      out.write("                  </tbody>\r\n");
      out.write("                  </table>\r\n");
      out.write("              </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
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
      out.write("  <script src=\"../script/user_estimate_manager.js\"></script>\r\n");
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

/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-19 07:06:44 UTC
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

public final class profil_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");

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


      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<title>마이프로필 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>\r\n");
      out.write("<meta charset=\"UTF-8\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("<meta name=\"keyworeds\"\r\n");
      out.write("   content=\"결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연,\" />\r\n");
      out.write("<meta name=\"description\"\r\n");
      out.write("   content=\"안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다.\" />\r\n");
      out.write("<link rel=\"icon\" href=\"../images/favicon.png\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/profil.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/footer_style.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../CSS/reset.css\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script\r\n");
      out.write("   src=\"https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js\"></script>\r\n");
      out.write("<script\r\n");
      out.write("   src=\"https://cdn.anychart.com/releases/8.10.0/js/anychart-bundle.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("   <!-- 마이페이지 헤더 -->\r\n");
      out.write("   <header class=\"account_header\">\r\n");
      out.write("      <div class=\"header_btn\">\r\n");
      out.write("         <div class=\"message_badge\">\r\n");
      out.write("            <button type=\"button\" class=\"btn_messenger\" onclick=\"\">메신저</button>\r\n");
      out.write("            <span class=\"push_num\" style=\"display: none\">0</span>\r\n");
      out.write("         </div>\r\n");
      out.write("         <div class=\"alarm_badge\">\r\n");
      out.write("            <button type=\"button\" class=\"btn_alarm\" onclick=\"\">알림</button>\r\n");
      out.write("            <span class=\"push_num\" style=\"display: none\">0</span>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"member\">\r\n");
      out.write("         <button type=\"button\" class=\"btn_member\">\r\n");
      out.write("            <div class=\"user_photo\">\r\n");
      out.write("               <figure class=\"user_img\">\r\n");
      out.write("                  <img src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\"\r\n");
      out.write("                     alt=\"user_img\" />\r\n");
      out.write("               </figure>\r\n");
      out.write("            </div>\r\n");
      out.write("         </button>\r\n");
      out.write("\r\n");
      out.write("         <div class=\"layer_member\">\r\n");
      out.write("            <ul>\r\n");
      out.write("               <li><img\r\n");
      out.write("                  src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\"\r\n");
      out.write("                  alt=\"user_img\" /><span>");
      out.print(userName);
      out.write("</span> <!-- 유저이미지, 이름 입력 --></li>\r\n");
      out.write("               <li><a href=\"account.jsp\"><span>개인정보 수정</span> <iconify-icon\r\n");
      out.write("                        icon=\"la:edit-solid\" width=\"30\"></iconify-icon></a></li>\r\n");
      out.write("               <li><a href=\"../jsp/logout.jsp\"><span>로그아웃</span> <iconify-icon\r\n");
      out.write("                        icon=\"material-symbols:logout\" width=\"25\"></iconify-icon></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("   </header>\r\n");
      out.write("\r\n");
      out.write("   <!-- 마이페이지 사이드메뉴 -->\r\n");
      out.write("   <div class=\"nav\">\r\n");
      out.write("      <a href=\"../index.jsp\" id=\"logo2\"> <img src=\"../images/logo.svg\"\r\n");
      out.write("         alt=\"logo\" />\r\n");
      out.write("      </a>\r\n");
      out.write("      <ul class=\"gnb\">\r\n");
      out.write("         <li class=\"gnb-menu\"><a href=\"profil.jsp\" class=\"menu-btn\">마이프로필</a>\r\n");
      out.write("         </li>\r\n");
      out.write("         <li class=\"gnb-menu\"><a href=\"account.jsp\" class=\"menu-btn\">개인정보수정</a>\r\n");
      out.write("         </li>\r\n");
      out.write("         <li class=\"gnb-menu\"><a href=\"authored_content.jsp\"\r\n");
      out.write("            class=\"menu-btn\">내가 작성한 글</a></li>\r\n");
      out.write("         <li class=\"gnb-menu\"><a href=\"Likestatus.jsp\" class=\"menu-btn\">좋아요\r\n");
      out.write("               현황</a></li>\r\n");
      out.write("         <li class=\"gnb-menu\"><a href=\"matching_current.jsp\"\r\n");
      out.write("            class=\"menu-btn\">매칭현황</a></li>\r\n");
      out.write("         <li class=\"gnb-menu\"><a href=\"member_ship.jsp\" class=\"menu-btn\">멤버십</a>\r\n");
      out.write("         </li>\r\n");
      out.write("         <li class=\"gnb-menu\"><a href=\"account_withdrawal.jsp\"\r\n");
      out.write("            class=\"menu-btn secession\">회원탈퇴</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("      <button type=\"button\" class=\"nav-icon\">\r\n");
      out.write("         <iconify-icon icon=\"ph:list-fill\"></iconify-icon>\r\n");
      out.write("      </button>\r\n");
      out.write("   </div>\r\n");
      out.write("   <main>\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("         <div class=\"container_main\">\r\n");
      out.write("            <div class=\"content\">\r\n");
      out.write("               <h1>마이프로필</h1>\r\n");
      out.write("               <div class=\"my_profil\">\r\n");
      out.write("                  <div class=\"my_profil_header\">\r\n");
      out.write("                     <div class=\"photo_wrap\">\r\n");
      out.write("                        <span class=\"photo\" id=\"myhome_profile_photo\"> <img\r\n");
      out.write("                           src=\"");
      out.print(request.getContextPath());
      out.write("/images/");
      out.print(imageName);
      out.write("\"\r\n");
      out.write("                           alt=\"프로필 이미지\">\r\n");
      out.write("                        </span> <span class=\"photo_border\"></span>\r\n");
      out.write("                        <div class=\"photo_edit_btn\" id=\"edit_menu\">\r\n");
      out.write("                           <input type=\"file\" id=\"profile_picture_input\" accept=\"image/*\"\r\n");
      out.write("                              style=\"display: none\" />\r\n");
      out.write("                        </div>\r\n");
      out.write("                     </div>\r\n");
      out.write("                     <div id=\"wordcloud-container\" style=\"width: 450px;\"></div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"information\">\r\n");
      out.write("                     <table class=\"information_table\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>* 이름</th>\r\n");
      out.write("                           <td>");
      out.print(userName);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>* 성별</th>\r\n");
      out.write("                           <td>");
      out.print(genderString);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>* 나이</th>\r\n");
      out.write("                           <td>");
      out.print(userBirth);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>* 아이디</th>\r\n");
      out.write("                           <td>");
      out.print(userId);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>* 전화번호</th>\r\n");
      out.write("                           <td>");
      out.print(userPhone);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>* 이메일</th>\r\n");
      out.write("                           <td>");
      out.print(userEmail);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>* 학력</th>\r\n");
      out.write("                           <td>");
      out.print(userEducation);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>직업</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userCareer != null ? userCareer : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                     </table>\r\n");
      out.write("                     <table class=\"information_table\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>거주지역</th>\r\n");
      out.write("                           <td>");
      out.print(userCountry);
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>키</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userHeight != null ? userHeight : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>체형</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userBody != null ? userBody : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>연봉</th>\r\n");
      out.write("                           <td>\r\n");
      out.write("                              ");

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
                              
      out.write("\r\n");
      out.write("                           </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>혼인여부</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userMarital == 0 ? '초혼' : (userMarital == 1 ? '기혼' : '')}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>자녀여부</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userChildren == 0 ? '자녀 무' : (userChildren == 1 ? '자녀 유' : '')}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>자녀 수</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userChildrenCount != null ? userChildrenCount : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>관심사</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userHobbies != null ? userHobbies : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>혈액형</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userBlood != null ? userBlood : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>MBTI</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userMBTI != null ? userMBTI : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>종교</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userReligion != null ? userReligion : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>음주</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userAlcohol == 0 ? '비음주' : (userAlcohol == 1 ? '음주' : '')}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>주량</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userAlcoholCount != null ? userAlcoholCount : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" 병</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>흡연</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userSmoking == 0 ? '비흡연' : (userSmoking == 1 ? '흡연' : '')}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>성격</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userPersonality != null ? userPersonality : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>결혼가치관</th>\r\n");
      out.write("                           <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userMarriageValues != null ? userMarriageValues : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                           <th>자기소개</th>\r\n");
      out.write("                           <td><textarea class=\"about_me\" maxlength=\"500\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userIntroduce != null ? userIntroduce : ''}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</textarea>\r\n");
      out.write("                           </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                     </table>\r\n");
      out.write("\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"amend_box\">\r\n");
      out.write("                     <a href=\"account.jsp\"><button type=\"button\" class=\"amend_btn\">수정하기</button></a>\r\n");
      out.write("                  </div>\r\n");
      out.write("               </div>\r\n");
      out.write("            </div>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("   </main>\r\n");
      out.write("   <!-- 아래 footer 하단 고정 -->\r\n");
      out.write("   <footer class=\"footer\">\r\n");
      out.write("      <div class=\"footer-content\">\r\n");
      out.write("         <h3>(주)Re:connect</h3>\r\n");
      out.write("         <span>대표 : Recycle</span> <span>사업자등록번호 : 999-99-99999</span> <span>주소\r\n");
      out.write("            : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span> <span>Tel.042-222-2402</span>\r\n");
      out.write("         <ul class=\"footer-socials\">\r\n");
      out.write("            <li><a href=\"index_logout.jsp\"><img\r\n");
      out.write("                  src=\"../images/ico_image.svg\" alt=\"ico_image\" /></a> <!-- 임시로 로그아웃 넣어 놨음 -->\r\n");
      out.write("            </li>\r\n");
      out.write("            <li><a href=\"account_manager.jsp\"><img\r\n");
      out.write("                  src=\"../images/ico_instagram.svg\" alt=\"ico_instagram\" /></a> <!-- 임시로 커플매니저페이지 넣어 놨음 -->\r\n");
      out.write("            </li>\r\n");
      out.write("            <li><a href=\"admin_manager_management.jsp\"><img\r\n");
      out.write("                  src=\"../images/ico_youtube.svg\" alt=\"ico_youtube\" /></a> <!-- 임시로 관리자페이지 넣어 놨음 -->\r\n");
      out.write("            </li>\r\n");
      out.write("         </ul>\r\n");
      out.write("         <div class=\"footer-menu\">\r\n");
      out.write("            <p>\r\n");
      out.write("               copyright &copy;2023 by <a href=\"../index.jsp\">Re:connect.</a> All\r\n");
      out.write("               pictures cannot be copied without permission.\r\n");
      out.write("            </p>\r\n");
      out.write("            <ul class=\"f-menu\">\r\n");
      out.write("               <li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("               <li><a href=\"dash.jsp\">About</a></li>\r\n");
      out.write("               <li><a href=\"estimate.jsp\">Contact</a></li>\r\n");
      out.write("               <li><a href=\"FAQ.jsp\">FAQ</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("         </div>\r\n");
      out.write("      </div>\r\n");
      out.write("   </footer>\r\n");
      out.write("   <script src=\"../script/profil.js\"></script>\r\n");
      out.write("\r\n");
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

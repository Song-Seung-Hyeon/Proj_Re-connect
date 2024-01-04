/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.82
 * Generated at: 2023-12-20 05:26:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public final class pwFind_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");

    // 사용자로부터 받은 입력값 가져오기
    String userName = request.getParameter("user_name");
    String userBirth = request.getParameter("user_birth");
    String userNumber = request.getParameter("user_number");
    
    try {
        String url = "jdbc:mysql://192.168.0.71:3306/recycle";
        String user = "recycle"; // 데이터베이스 사용자명
        String password = "1234"; // 데이터베이스 비밀번호
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, password);

        
        
        // 입력된 정보와 일치하는 아이디 찾기 쿼리
        String findIdQuery = "SELECT user_id FROM user_list WHERE user_name = ? AND user_birth = ? AND user_phone = ?";
        PreparedStatement findIdStatement = conn.prepareStatement(findIdQuery);
        findIdStatement.setString(1, userName);
        findIdStatement.setString(2, userBirth);
        findIdStatement.setString(3, userNumber);
        ResultSet result = findIdStatement.executeQuery();
        
        if (result.next()) {
		String foundId = result.getString("user_id");
		
      out.write("\r\n");
      out.write("		out.println(\"<script>\r\n");
      out.write("					var yn = confirm('");
      out.print(userName);
      out.write("님의 아이디는 <");
      out.print(foundId);
      out.write("> 입니다.\\n로그인페이지로 이동하시겠습니까?');\r\n");
      out.write("					if(yn) {\r\n");
      out.write("						location.href=\"../html/login.jsp\";\r\n");
      out.write("					}\r\n");
      out.write("					</script>\");\r\n");
      out.write("		out.println(\"<script>window.history.back();</script>\");\r\n");
      out.write("        ");
	
        } else {
        
      out.write("\r\n");
      out.write("		out.println(\"<script>alert('일치하는 정보로 등록된 아이디가 없습니다.');</script>\");\r\n");
      out.write("		out.println(\"<script>window.history.back();</script>\");\r\n");
      out.write("		");

        }
        
        result.close();
        findIdStatement.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

      out.write('\r');
      out.write('\n');
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

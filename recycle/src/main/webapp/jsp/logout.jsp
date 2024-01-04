<%@ page import="javax.servlet.http.*,java.io.*,java.sql.*" %>
<%@ page import="java.sql.*, java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
    request.getSession(false);
    if (session != null) {
        session.invalidate(); // 세션 종료
    }
    response.sendRedirect("../index.jsp"); // 로그인 페이지로 리다이렉트
%>
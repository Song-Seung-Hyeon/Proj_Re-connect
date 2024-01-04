<%@ page import="javax.servlet.http.*,java.io.*,java.sql.*"%>
<%@ page import="java.sql.*, java.io.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
request.setCharacterEncoding("utf-8");
%>


<%
String sessionValue = "";
if (session != null && session.getAttribute("userAuth") != null) {
	int userAuth = (int) session.getAttribute("userAuth");

	if (userAuth == 3) {
		// userAuth가 1인 경우의 처리
		sessionValue = "admin"; 
	} else if (userAuth == 2) {
		// userAuth가 2인 경우의 처리
		sessionValue = "manager";
	} else {
		// 다른 userAuth 값에 대한 처리
		sessionValue = "user"; 
	}
} else {
	// 세션이 없거나 userAuth 속성이 없는 경우, 세션이 만료된 상태로 가정
	sessionValue = "expired";
}
response.getWriter().write(sessionValue);
%>
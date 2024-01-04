<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%request.setCharacterEncoding("utf-8");%>

<%
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
		%>
		out.println("<script>
					var yn = confirm('<%=userName%>님의 아이디는 <<%=foundId%>> 입니다.\n로그인페이지로 이동하시겠습니까?');
					if(yn) {
						location.href="../html/login.jsp";
					}
					</script>");
		out.println("<script>window.history.back();</script>");
        <%	
        } else {
        %>
		out.println("<script>alert('일치하는 정보로 등록된 아이디가 없습니다.');</script>");
		out.println("<script>window.history.back();</script>");
		<%
        }
        
        result.close();
        findIdStatement.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
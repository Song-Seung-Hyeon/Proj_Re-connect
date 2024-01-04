package recyclePackage;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;

@WebServlet("/html/updateAuthoredServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50    // 50MB
)

public class updateAuthoredServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://192.168.0.71:3306/recycle";
    private static final String DB_USER = "recycle";
    private static final String DB_PASS = "1234";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        request.setCharacterEncoding("utf-8");

        String uploadPath = request.getServletContext().getRealPath("/images");
        Part filePart = request.getPart("image");
        String fileName = getFileName(filePart);

        Connection conn = null;
        PreparedStatement pstmt = null;

        OutputStream out = null;
        InputStream fileContent = null;

        HttpSession session = request.getSession(false);

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            String userUID = (String) session.getAttribute("userUID");

            String fullPath = null;
            String storedFilePath = null;

            if (filePart != null && filePart.getSize() > 0) {
                // 새 파일이 선택된 경우에만 업데이트
                fullPath = uploadPath + File.separator + fileName;

                out = new FileOutputStream(new File(fullPath));
                fileContent = filePart.getInputStream();

                int read;
                final byte[] bytes = new byte[1024];

                while ((read = fileContent.read(bytes)) != -1) {
                    out.write(bytes, 0, read);
                }
                response.getWriter().println("파일 업로드 완료: " + fileName);
            } else {
                // 기존 파일을 그대로 유지하기 위해 기존 파일 경로를 가져옴
                String getUid = request.getParameter("board_uid");
                int uid = Integer.parseInt(getUid);

                String selectQuery = "SELECT photo_url FROM contact_question WHERE uid=?";
                PreparedStatement selectStatement = conn.prepareStatement(selectQuery);
                selectStatement.setInt(1, uid);
                ResultSet resultSet = selectStatement.executeQuery();

                if (resultSet.next()) {
                    storedFilePath = resultSet.getString("photo_url");
                }
            }

            if (userUID != null) {
                String getUid = request.getParameter("board_uid");
                int uid = Integer.parseInt(getUid);

                String selectQuery = "SELECT cq.*, ul.user_name " +
                        "FROM contact_question cq " +
                        "INNER JOIN user_list ul ON cq.contact_writer_id = ul.user_uid " +
                        "WHERE uid =?";

                PreparedStatement preparedStatement = conn.prepareStatement(selectQuery);
                preparedStatement.setInt(1, uid);
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    String requestedUID = resultSet.getString("contact_writer_id");
                    if (userUID.equals(requestedUID)) {
                        // 여기에 권한이 있는 경우 게시글을 수정하는 코드 추가
                        String title = request.getParameter("title");
                        String writer = request.getParameter("writer");
                        String content = request.getParameter("content");
                        String pw = request.getParameter("password");

                        // 게시글 수정을 위한 UPDATE 쿼리
                        String updateQuery = "UPDATE contact_question SET contact_title=?, contact_writer_id=?, contact_content=?, question_pw=?, photo_url=?, contact_reg_date=now()  WHERE uid=?";
                        PreparedStatement updateStatement = conn.prepareStatement(updateQuery);
                        updateStatement.setString(1, title);
                        updateStatement.setString(2, userUID);
                        updateStatement.setString(3, content);
                        updateStatement.setString(4, pw);

                        if (fullPath != null) {
                            updateStatement.setString(5, fullPath); // 새 파일로 업데이트
                        } else if (storedFilePath != null) {
                            updateStatement.setString(5, storedFilePath); // 기존 파일 경로 유지
                        } else {
                            updateStatement.setString(5, null); // 파일 정보 없음
                        }
                        updateStatement.setInt(6, uid);

                        int rowsAffected = updateStatement.executeUpdate();

                        if (rowsAffected > 0) {
                            response.sendRedirect("authored_content_view.jsp?uid=" + uid);
                        } else {
                            // 수정 실패 시 처리할 코드
                            response.getWriter().println("게시글 수정에 실패했습니다.");
                        }
                        updateStatement.close();
                    } else {
                        // 권한이 없는 경우 처리할 코드
                        response.getWriter().println("접근 권한이 없습니다.");
                    }
                } else {
                    // 게시글을 찾을 수 없는 경우 처리할 코드
                    response.getWriter().println("게시글을 찾을 수 없습니다.");
                }

                resultSet.close();
                preparedStatement.close();
                conn.close();
            } else {
                // 세션이 없는 경우 처리할 코드
                response.sendRedirect("login.jsp");
            }
        } catch (Exception e) {
            response.getWriter().println("Error: " + e.getMessage());
        } finally {
            // 리소스 정리
            if (out != null) {
                out.close();
            }
            if (fileContent != null) {
                fileContent.close();
            }
        }
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : partHeader.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}

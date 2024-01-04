
package recyclePackage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.catalina.Session;

@WebServlet("/html/accountManagerUpload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class accountManagerUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://192.168.0.71:3306/recycle?useUnicode=true&characterEncoding=UTF-8";
	private static final String DB_USER = "recycle";
	private static final String DB_PASS = "1234";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		String userUID = (String) session.getAttribute("userUID");



		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		String user_email = request.getParameter("user_mail");
		String user_gender = request.getParameter("user_gender");
		String user_birth = request.getParameter("user_age");
		String user_phone = request.getParameter("user_phone");
		String user_career = request.getParameter("user_occupation");
		String user_country = request.getParameter("user_country");
		String user_height = request.getParameter("user_height");
		String user_body = request.getParameter("user_body");
		String user_salary = request.getParameter("user_annual_income");
		String user_marital = request.getParameter("marital_status");
		String user_children = request.getParameter("children");
		String user_children_count = request.getParameter("child_count");
		String[] user_hobbies = request.getParameterValues("hobby");
		String user_blood = request.getParameter("bloodType");
		String user_mbti = request.getParameter("user_mbti");
		String user_religion = request.getParameter("religion");
		String user_alcohol = request.getParameter("alcohol");
		String user_alcohol_count = request.getParameter("alcohol_count");
		String user_smoking = request.getParameter("smoking");
		String[] user_personality = request.getParameterValues("personality");
		String[] user_marriage_values = request.getParameterValues("marriage");
		String user_introduct = request.getParameter("about_me_text");

		
		String defaultImagePath = request.getServletContext().getRealPath("/images/default_image.jpg");
		Part photo_url = request.getPart("manager_image");
		String imageName = getFileName(photo_url);
		String uploadPath = request.getServletContext().getRealPath("/images"); // 이미지 업로드 경로 설정
		String fullPath = uploadPath + File.separator + imageName;
		
		


		OutputStream out = null;
		InputStream fileContent = null;

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);


			response.sendRedirect("account_manager.jsp");

			// MySQL에 사용자 정보 업데이트 (JOIN 사용)
			String updateQuery = "UPDATE user_list SET user_email=?, user_phone=?, user_introduce=? WHERE user_uid=?";

			pstmt = conn.prepareStatement(updateQuery);

			if (user_email != null) {
				setNullableStringParameter(pstmt, 1, user_email);
//				pstmt.setString(1, user_phone);
			} else {
				pstmt.setNull(1, java.sql.Types.VARCHAR);
			}

			if (user_phone != null) {
				setNullableStringParameter(pstmt, 2, user_phone);
//				pstmt.setString(1, user_phone);
			} else {
				pstmt.setNull(2, java.sql.Types.VARCHAR);
			}

			if (user_introduct != null) {
				setNullableStringParameter(pstmt, 3, user_introduct);
//				pstmt.setString(2, user_introduct);
			} else {
				setNullableStringParameter(pstmt, 2, "");
				pstmt.setNull(3, java.sql.Types.VARCHAR);
			}

			pstmt.setString(4, userUID);

			// 업데이트 쿼리 실행
			pstmt.executeUpdate();

			int affectedRows = pstmt.executeUpdate();

			if (affectedRows > 0) {
				
				// photo_url 업데이트
				String existingPhotoUrlQuery = "SELECT photo_url FROM user_list WHERE user_uid=?";
				try (PreparedStatement existingPhotoUrlStatement = conn.prepareStatement(existingPhotoUrlQuery)) {
				    existingPhotoUrlStatement.setString(1, userUID);

				    try (ResultSet existingPhotoUrlResultSet = existingPhotoUrlStatement.executeQuery()) {
				        if (existingPhotoUrlResultSet.next()) {
				            // 데이터베이스에 이미 photo_url이 있으면 가져옴
				            String existingPhotoUrl = existingPhotoUrlResultSet.getString("photo_url");

				            // photoUrl 업데이트
				            out = new FileOutputStream(new File(fullPath));
				               fileContent = photo_url.getInputStream();

				               int read;
				               final byte[] bytes = new byte[1024];

				               while ((read = fileContent.read(bytes)) != -1) {
				                   out.write(bytes, 0, read);
				               }
				            String photoUpdateQuery = "UPDATE user_list SET photo_url=? WHERE user_uid=?";
				            try (PreparedStatement updateStatement = conn.prepareStatement(photoUpdateQuery)) {

				                // 새 이미지가 제공되면 photo_url 업데이트, 그렇지 않으면 기존 경로 유지
				                if (photo_url != null && photo_url.getSize() > 0) {
				                    updateStatement.setString(1, fullPath);
				                } else {
				                    updateStatement.setString(1, existingPhotoUrl);
				                }

				                updateStatement.setString(2, userUID);

				                // 업데이트 쿼리 실행
				                updateStatement.executeUpdate();
				            }
				        }
				    }
				}				
				
				// user_country 업데이트
				String checkCountryExistenceQuery = "SELECT user_country FROM user_list WHERE user_uid=?";

				try (PreparedStatement countryExistenceStatement = conn.prepareStatement(checkCountryExistenceQuery)) {
				    countryExistenceStatement.setString(1, userUID);

				    try (ResultSet countryResultSet = countryExistenceStatement.executeQuery()) {
				        if (countryResultSet.next()) { 
				            // 이미 레코드가 존재하면 기존 값을 유지하도록 처리
				            if (user_country != null) {
				                // 기존 값이 null이 아니면 업데이트
				            	String updateCountryQuery = "UPDATE user_list SET user_country=? WHERE user_uid=?";
				                try (PreparedStatement updateCountryStatement = conn.prepareStatement(updateCountryQuery)) {
				                    updateCountryStatement.setString(1, user_country);
				                    updateCountryStatement.setString(2, userUID);
				                    updateCountryStatement.executeUpdate();
				                }
				            }
				            // 기존 값이 null이면 업데이트하지 않고 그대로 유지
				        } else { 
				            // 레코드가 없으면 새로운 값으로 삽입
				            // user_country가 null이 아닌 경우에만 삽입
				            if (user_country != null) {
				            	String updateCountryQuery = "UPDATE user_list SET user_country=? WHERE user_uid=?";
				                try (PreparedStatement updateCountryStatement = conn.prepareStatement(updateCountryQuery)) {
				                    updateCountryStatement.setString(1, user_country);
				                    updateCountryStatement.setString(2, userUID);
				                    updateCountryStatement.executeUpdate();
				                }
				            }
				        }
				    }
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				out.close();
			}
			if (fileContent != null) {
				fileContent.close();
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	private String getFileName(final Part part) {
		final String partHeader = part.getHeader("content-disposition");
		for (String content : partHeader.split(";")) {
			if (content.trim().startsWith("filename")) {
				String fileName = content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
				if (!fileName.isEmpty()) {
					return fileName;
				}
			}
		}
		return null;
	}

	// Nullable string 매개변수를 설정하기 위한 도우미 메서드
	private void setNullableStringParameter(PreparedStatement statement, int index, String value) throws SQLException {
		if (value != null && !value.isEmpty()) {
			statement.setString(index, value);
		} else {
			statement.setNull(index, Types.VARCHAR);
		}
	}

	public static boolean isMultipartContent(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return false;
	}
}
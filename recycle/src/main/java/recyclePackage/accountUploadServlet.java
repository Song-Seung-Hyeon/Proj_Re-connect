
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

@WebServlet("/html/accountUpload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class accountUploadServlet extends HttpServlet {
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
		Part photo_url = request.getPart("user_image");
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


			response.sendRedirect("account.jsp");
			//response.getWriter().println("<a href='javascript:history.back()'>뒤로 가기</a>");

			// MySQL에 사용자 정보 업데이트 (JOIN 사용)
			String updateQuery = "UPDATE user_list SET  user_phone=?, user_introduce=? WHERE user_uid=?";

			pstmt = conn.prepareStatement(updateQuery);

			if (user_phone != null) {
				setNullableStringParameter(pstmt, 1, user_phone);
//				pstmt.setString(1, user_phone);
			} else {
				pstmt.setNull(1, java.sql.Types.VARCHAR);
			}



			if (user_introduct != null) {
				setNullableStringParameter(pstmt, 2, user_introduct);
//				pstmt.setString(2, user_introduct);
			} else {
				setNullableStringParameter(pstmt, 2, "");
				pstmt.setNull(2, java.sql.Types.VARCHAR);
			}

			pstmt.setString(3, userUID);

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
				
				// user_detail 테이블 업데이트 또는 삽입
				String checkExistenceQuery = "SELECT * FROM user_detail WHERE user_uid=?";
				try (PreparedStatement existenceStatement = conn.prepareStatement(checkExistenceQuery)) {
					existenceStatement.setString(1, user_id);
					try (ResultSet resultSet = existenceStatement.executeQuery()) {
						if (resultSet.next()) {
							// 이미 레코드가 존재하면 업데이트
							String updateDetailQuery = "UPDATE user_detail SET user_career=?, user_height=?, user_body=?, user_salary=?, user_marital=?, user_children=?, user_children_count=?, user_blood=?, user_mbti=?, user_religion=?, user_alcohol=?, user_alcohol_count=?, user_smoking=? WHERE user_uid=?";
							try (PreparedStatement detailStatement = conn.prepareStatement(updateDetailQuery)) {

								if (!user_career.equals(resultSet.getString("user_career"))) {
									detailStatement.setString(1, user_career);
								} else {
									detailStatement.setNull(1, Types.VARCHAR);
								}

								if (!user_height.equals(resultSet.getString("user_height"))) {
									detailStatement.setString(2, user_height);
								} else {
									detailStatement.setNull(2, Types.VARCHAR);
								}

								if (!user_body.equals(resultSet.getString("user_body"))) {
									detailStatement.setString(3, user_body);
								} else {
									detailStatement.setNull(3, Types.VARCHAR);
								}

								if (!user_salary.equals(resultSet.getString("user_salary"))) {
									detailStatement.setString(4, user_salary);
								} else {
									detailStatement.setNull(4, Types.VARCHAR);
								}

								if (!user_marital.equals(resultSet.getString("user_marital"))) {
									detailStatement.setString(5, user_marital);
								} else {
									detailStatement.setNull(5, Types.VARCHAR);
								}

								if (!user_children.equals(resultSet.getString("user_children"))) {
									detailStatement.setString(6, user_children);
								} else {
									detailStatement.setNull(6, Types.VARCHAR);
								}

								if (!user_children_count.equals(resultSet.getString("user_children_count"))) {
									detailStatement.setString(7, user_children.equals("0") ? "0" : user_children_count);
								} else {
									detailStatement.setNull(7, Types.VARCHAR);
								}

								if (!user_blood.equals(resultSet.getString("user_blood"))) {
									detailStatement.setString(8, user_blood);
								} else {
									detailStatement.setNull(8, Types.VARCHAR);
								}

								if (!user_mbti.equals(resultSet.getString("user_mbti"))) {
									detailStatement.setString(9, user_mbti);
								} else {
									detailStatement.setNull(9, Types.VARCHAR);
								}

								if (!user_religion.equals(resultSet.getString("user_religion"))) {
									detailStatement.setString(10, user_religion);
								} else {
									detailStatement.setNull(10, Types.VARCHAR);
								}

								if (!user_alcohol.equals(resultSet.getString("user_alcohol"))) {
									detailStatement.setString(11, user_alcohol);
								} else {
									detailStatement.setNull(11, Types.VARCHAR);
								}

								if (!user_alcohol_count.equals(resultSet.getString("user_alcohol_count"))) {
									detailStatement.setString(12, user_alcohol.equals("0") ? "0" : user_alcohol_count);
								} else {
									detailStatement.setNull(12, Types.VARCHAR);
								}

								if (!user_smoking.equals(resultSet.getString("user_smoking"))) {
									detailStatement.setString(13, user_smoking);
								} else {
									detailStatement.setNull(13, Types.VARCHAR);
								}

								detailStatement.setString(14, userUID);

								detailStatement.executeUpdate();
							}
						} else { // 레코드가 없으면 삽입
							String insertDetailQuery = "INSERT INTO user_detail (user_uid, user_career, user_height, user_body, user_salary, user_marital, user_children, user_children_count, user_blood, user_mbti, user_religion, user_alcohol, user_alcohol_count, user_smoking) "
									+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) " + "ON DUPLICATE KEY UPDATE "
									+ "user_career = IFNULL(VALUES(user_career), user_career), "
									+ "user_height = IFNULL(VALUES(user_height), user_height), "
									+ "user_body = IFNULL(VALUES(user_body), user_body), "
									+ "user_salary = IFNULL(VALUES(user_salary), user_salary), "
									+ "user_marital = IFNULL(VALUES(user_marital), user_marital), "
									+ "user_children = IFNULL(VALUES(user_children), user_children), "
									+ "user_children_count = IFNULL(VALUES(user_children_count), user_children_count), "
									+ "user_blood = IFNULL(VALUES(user_blood), user_blood), "
									+ "user_mbti = IFNULL(VALUES(user_mbti), user_mbti), "
									+ "user_religion = IFNULL(VALUES(user_religion), user_religion), "
									+ "user_alcohol = IFNULL(VALUES(user_alcohol), user_alcohol), "
									+ "user_alcohol_count = IFNULL(VALUES(user_alcohol_count), user_alcohol_count), "
									+ "user_smoking = IFNULL(VALUES(user_smoking), user_smoking)";

							try (PreparedStatement insertOrUpdateStatement = conn.prepareStatement(insertDetailQuery)) {
								insertOrUpdateStatement.setString(1, userUID);// userUID는 user_list 테이블의 외래 키값

								setNullableStringParameter(insertOrUpdateStatement, 2, user_career);
						        // "cm" 제거 및 숫자만 추출
						        String userHeight = user_height.replaceAll("[^0-9]", "");
						        
								setNullableStringParameter(insertOrUpdateStatement, 3, userHeight);
								setNullableStringParameter(insertOrUpdateStatement, 4, user_body);
								setNullableStringParameter(insertOrUpdateStatement, 5, user_salary);
								setNullableStringParameter(insertOrUpdateStatement, 6, user_marital);

//								setNullableStringParameter(insertOrUpdateStatement, 7, user_children);
//								setNullableStringParameter(insertOrUpdateStatement, 8, user_children_count);

								if (user_children == null) {
									insertOrUpdateStatement.setNull(7, java.sql.Types.TINYINT);
								} else {
									insertOrUpdateStatement.setInt(7, Integer.parseInt(user_children));
								}

								// user_children_count에 대해서도 동일한 방식으로 처리합니다.
								if (user_children_count == null) {
									insertOrUpdateStatement.setNull(8, java.sql.Types.TINYINT);
								} else {
									insertOrUpdateStatement.setString(8, user_children == null ? null : user_children.equals("0") ? "0" : user_children_count);

								}

								setNullableStringParameter(insertOrUpdateStatement, 9, user_blood);
								setNullableStringParameter(insertOrUpdateStatement, 10, user_mbti);
								setNullableStringParameter(insertOrUpdateStatement, 11, user_religion);

//								setNullableStringParameter(insertOrUpdateStatement, 12, user_alcohol);
//								setNullableStringParameter(insertOrUpdateStatement, 13, user_alcohol_count);

								if (user_alcohol == null) {
									insertOrUpdateStatement.setNull(12, java.sql.Types.TINYINT);
								} else {
									insertOrUpdateStatement.setInt(12, Integer.parseInt(user_alcohol));
								}

								// user_alcohol_count에 대해서도 동일한 방식으로 처리합니다.
								if (user_alcohol_count == null) {
									insertOrUpdateStatement.setNull(13, java.sql.Types.TINYINT);
								} else {
									//insertOrUpdateStatement.setInt(13, Integer.parseInt(user_alcohol.equals("0") ? "0" : user_alcohol_count));
									insertOrUpdateStatement.setString(13, user_alcohol == null ? null : user_alcohol.equals("0") ? "0" : user_alcohol_count);
								}

								setNullableStringParameter(insertOrUpdateStatement, 14, user_smoking);

								insertOrUpdateStatement.executeUpdate();

							}
						}

					}
				}

				// user_hobbies 테이블 업데이트 또는 삽입
				String checkHobbiesExistenceQuery = "SELECT * FROM user_hobbies WHERE user_id=?";
				try (PreparedStatement hobbiesExistenceStatement = conn.prepareStatement(checkHobbiesExistenceQuery)) {
					hobbiesExistenceStatement.setString(1, userUID);

					try (ResultSet hobbiesResultSet = hobbiesExistenceStatement.executeQuery()) {
						if (hobbiesResultSet.next()) { // 이미 레코드가 존재하면 삭제 후 삽입
							// 기존 데이터 삭제
							String deleteHobbiesQuery = "DELETE FROM user_hobbies WHERE user_id=?";
							try (PreparedStatement deleteHobbiesStatement = conn.prepareStatement(deleteHobbiesQuery)) {
								deleteHobbiesStatement.setString(1, userUID);
								deleteHobbiesStatement.executeUpdate();
							}

							// user_hobbies를 개별 취미로 나누기

							// 삽입할 취미 수를 3개로 제한
							int numHobbiesToInsert = Math.min(user_hobbies.length, 3);

							// 각 취미를 user_hobbies 테이블에 삽입
							String insertHobbiesQuery = "INSERT INTO user_hobbies (user_id, hobby_id) VALUES (?, ?)";
							try (PreparedStatement insertHobbiesStatement = conn.prepareStatement(insertHobbiesQuery)) {
								for (int i = 0; i < numHobbiesToInsert; i++) {
									insertHobbiesStatement.setString(1, userUID);
									insertHobbiesStatement.setInt(2, Integer.parseInt(user_hobbies[i]));
									insertHobbiesStatement.executeUpdate();
								}
							}
						} else { // 레코드가 없으면 삽입
							// user_hobbies를 개별 취미로 나누기

							// 삽입할 취미 수를 3개로 제한
							int numHobbiesToInsert = Math.min(user_hobbies.length, 3);

							// 각 취미를 user_hobbies 테이블에 삽입
							String insertHobbiesQuery = "INSERT INTO user_hobbies (user_id, hobby_id) VALUES (?, ?)";
							try (PreparedStatement insertHobbiesStatement = conn.prepareStatement(insertHobbiesQuery)) {
								for (int i = 0; i < numHobbiesToInsert; i++) {
									insertHobbiesStatement.setString(1, userUID);
									insertHobbiesStatement.setInt(2, Integer.parseInt(user_hobbies[i]));
									insertHobbiesStatement.executeUpdate();
								}
							}
						}
					}
				}

				// user_personality 테이블 업데이트 또는 삽입
				String checkPersonalityExistenceQuery = "SELECT * FROM user_personality WHERE user_id=?";
				try (PreparedStatement personalityExistenceStatement = conn.prepareStatement(checkPersonalityExistenceQuery)) {
					personalityExistenceStatement.setString(1, userUID);

					try (ResultSet personalityResultSet = personalityExistenceStatement.executeQuery()) {
						if (personalityResultSet.next()) { 
							// 이미 레코드가 존재하면 삭제 후 삽입
							// 기존 데이터 삭제
							String deletePersonalityQuery = "DELETE FROM user_personality WHERE user_id=?";
							try (PreparedStatement deletePersonalityStatement = conn
									.prepareStatement(deletePersonalityQuery)) {
								deletePersonalityStatement.setString(1, userUID);
								deletePersonalityStatement.executeUpdate();
							}

							// user_personality를 개별로 나누기

							// 삽입할 성격 수를 3개로 제한
							int numPersonalityToInsert = Math.min(user_personality.length, 3);

							// 각 데이터를 user_persnality 테이블에 삽입
							String insertPersonalityQuery = "INSERT INTO user_personality (user_id, personality_id) VALUES (?, ?)";
							try (PreparedStatement insertPersonalityStatement = conn
									.prepareStatement(insertPersonalityQuery)) {
								for (int i = 0; i < numPersonalityToInsert; i++) {
									insertPersonalityStatement.setString(1, userUID);
									insertPersonalityStatement.setInt(2, Integer.parseInt(user_personality[i]));
									insertPersonalityStatement.executeUpdate();
								}
							}
						} else { // 레코드가 없으면 삽입
							// user_persnality를 개별로 나누기

							// 삽입할 성격 수를 3개로 제한
							int numPersonalityToInsert = Math.min(user_personality.length, 3);

							// 각 성격를 user_persnality 테이블에 삽입
							String insertPersonalityQuery = "INSERT INTO user_personality (user_id, personality_id) VALUES (?, ?)";
							try (PreparedStatement insertPersonalityStatement = conn
									.prepareStatement(insertPersonalityQuery)) {
								for (int i = 0; i < numPersonalityToInsert; i++) {
									insertPersonalityStatement.setString(1, userUID);
									insertPersonalityStatement.setInt(2, Integer.parseInt(user_personality[i]));
									insertPersonalityStatement.executeUpdate();
								}
							}
						}
					}
				}

				// user_marriage_values 테이블 업데이트 또는 삽입
				String checkMarriageValuesExistenceQuery = "SELECT * FROM user_marriage_values WHERE user_id=?";
				try (PreparedStatement marriageValuesExistenceStatement = conn
						.prepareStatement(checkMarriageValuesExistenceQuery)) {
					marriageValuesExistenceStatement.setString(1, userUID);

					try (ResultSet marriageValuesResultSet = marriageValuesExistenceStatement.executeQuery()) {
						if (marriageValuesResultSet.next()) { 
							// 이미 레코드가 존재하면 삭제 후 삽입
							// 기존 데이터 삭제
							String deleteMarriageValuesQuery = "DELETE FROM user_marriage_values WHERE user_id=?";
							try (PreparedStatement deleteMarriageValuesStatement = conn
									.prepareStatement(deleteMarriageValuesQuery)) {
								deleteMarriageValuesStatement.setString(1, userUID);
								deleteMarriageValuesStatement.executeUpdate();
							}

							// user_marriage_values를 개별로 나누기

							// 삽입할 결혼 가치관 수 5개로 제한
							int numMarriageValuesToInsert = Math.min(user_marriage_values.length, 5);

							// 각 데이터를 user_marriage_values 테이블에 삽입
							String insertMarriageValuesQuery = "INSERT INTO user_marriage_values (user_id, values_id) VALUES (?, ?)";
							try (PreparedStatement insertMarriageValuesStatement = conn
									.prepareStatement(insertMarriageValuesQuery)) {
								for (int i = 0; i < numMarriageValuesToInsert; i++) {
									insertMarriageValuesStatement.setString(1, userUID);
									insertMarriageValuesStatement.setInt(2, Integer.parseInt(user_marriage_values[i]));
									insertMarriageValuesStatement.executeUpdate();
								}
							}
						} else { // 레코드가 없으면 삽입
							// user_marriage_values를 개별로 나누기

							// 삽입할 결혼가치관 수를 5개로 제한
							int numMarriageValuesToInsert = Math.min(user_personality.length, 5);

							// 각 성격를 user_marriage_values 테이블에 삽입
							String insertMarriageValuesQuery = "INSERT INTO user_marriage_values (user_id, values_id) VALUES (?, ?)";
							try (PreparedStatement insertMarriageValuesStatement = conn
									.prepareStatement(insertMarriageValuesQuery)) {
								for (int i = 0; i < numMarriageValuesToInsert; i++) {
									insertMarriageValuesStatement.setString(1, userUID);
									insertMarriageValuesStatement.setInt(2, Integer.parseInt(user_marriage_values[i]));
									insertMarriageValuesStatement.executeUpdate();
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
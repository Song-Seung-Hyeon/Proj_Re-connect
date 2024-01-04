package recyclePackage;

import java.io.IOException;
import java.sql.*;
import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@ServerEndpoint("/ChatHandler")
public class ChatHandler {
    private static Set<Session> sessions = Collections.synchronizedSet(new HashSet<>());
    private static final String URL = "jdbc:mysql://192.168.0.71:3306/recycle";
    private static final String USERNAME = "recycle";
    private static final String PASSWORD = "1234";

    // 드라이버 로드
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @OnOpen
    public void onOpen(Session session) {
        sessions.add(session);
    }

    @OnMessage
    public void onMessage(String message, Session session) throws IOException {
        broadcast(message); // 받은 메시지를 모든 클라이언트에 전송
        saveToDatabase(message); // 받은 메시지를 데이터베이스에 저장
    }

    private void broadcast(String message) {
        for (Session session : sessions) {
            if (session.isOpen()) {
                try {
                    session.getBasicRemote().sendText(message);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private void saveToDatabase(String message) {
        Connection connection = null;
        PreparedStatement statement = null;

        try {
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            String sql = "INSERT INTO message (chat_room_id, message_content, is_from_send, is_read, send_time) VALUES (?, ?, ?, ?, now())";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, 1); // 예시로 chat_room_id를 1로 설정
            statement.setString(2, message);
            statement.setInt(3, 1); // TINYINT로 1은 true를 나타냄
            statement.setInt(4, 0); // TINYINT로 0은 false를 나타냄
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

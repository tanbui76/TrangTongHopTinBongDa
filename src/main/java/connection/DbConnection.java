package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection connection() {
		Connection conn = null;
		String url = "jdbc:sqlserver://localhost:1433;databaseName=trangTongHopTinTucBongDa;encrypt=true;trustServerCertificate=true;";
		String user = "sa";
        String password = "123";
        try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(url,user,password);
			if (conn != null) {
                System.out.println("Kết nối tới CSDL thành công!");
            }
			return conn;
		} catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
//            try {
//                if (conn != null && !conn.isClosed()) {
//                    conn.close();
//                }
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
        }
        return conn;
	}
	public static void main(String[] args) {
		connection();
	}
}

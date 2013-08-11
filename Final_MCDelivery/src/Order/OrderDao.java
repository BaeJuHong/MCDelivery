package Order;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class OrderDao {
	// 데이터베이스 연결 관련 변수 선언
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	private String Driver = "oracle.driver.OracleDriver";
	private String URI = "jdbc:oracle:thin:@oracle.hotsun0428.cafe24.com:1521:orcl";
	private String ID = "hotsun0428";
	private String PW = "rudah0428";

	// Initialization
	private OrderDao() {
		try {
			Class.forName(Driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Share Driver Instance
	static OrderDao instance;

	static public OrderDao getInstance() {
		if (instance == null) {
			instance = new OrderDao();
		}
		return instance;
	}

	// Connection
	public void connect() {
		try {
			conn = DriverManager.getConnection(URI, ID, PW);
			System.out.println("connection success");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("connection fail");
		}
	}

	// Disconnection
	public void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (rs != null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}

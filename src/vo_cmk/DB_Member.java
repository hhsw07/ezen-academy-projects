package vo_cmk;

import java.sql.*;

public class DB_Member {
	private Connection conn;
	private Statement stat;
	private ResultSet rs;
	
	public void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상접속성공");
	}
	// 회원정보 출력
	public VO_Member getInfo(VO_Member mem) {
		VO_Member m = null;
		try {
			setConn();
			String sql = "SELECT mem_id, mem_name, mem_mail,mem_nickname,mem_birth,mem_phone\r\n" + 
					"FROM P04_MEMBER\r\n" + 
					"WHERE MEM_ID = 'himan1'";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()) {
				m = new VO_Member(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getString(6));
			}
			rs.close();
			stat.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return m;
	}
	
	// 회원정보 수정
	public void updateInfo(VO_Member upt) {
		try {
			setConn();
			String sql = "UPDATE P04_MEMBER \r\n" + 
					"SET MEM_NICKNAME='"+upt.getMem_nickname()+"', MEM_MAIL='"+upt.getMem_mail()+"', MEM_PHONE='"+upt.getMem_phone()+"'\r\n" + 
					"WHERE MEM_ID='himan1'";
			System.out.println(sql);
			conn.setAutoCommit(false);
			stat = conn.createStatement();
			stat.executeQuery(sql);
			conn.commit();
			stat.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DB_Member db = new DB_Member();

	}

}

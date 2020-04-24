package khj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import z01_vo.Notice;

public class A02_serviceCenterDao {
//	0) 전역 field 객체 선언
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

//	1) 연결 공통 메서드 선언	
	private void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공!");
	}
	// 공지리스트 불러오기
	public ArrayList<Notice> nlist() {
		ArrayList<Notice> nlist = new ArrayList<Notice>();
		try {
			setConn();
			String sql = "SELECT * FROM p5_notice\r\n" + 
							"ORDER BY noti_no desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				nlist.add(new Notice(
							rs.getInt("noti_no"), 
							rs.getString("noti_name"),
							rs.getString("noti_detail"), 
							rs.getDate("noti_date") ));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nlist;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}

}

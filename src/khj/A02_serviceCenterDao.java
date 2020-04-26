package khj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Notice;

public class A02_serviceCenterDao {
//	0) 전역 field 객체 선언
	private Connection con;
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
	
	public Notice ndetail(int noti_no) {
		Notice noti = new Notice();
		try {
			setConn();
			String sql = "SELECT noti_no, noti_name,\r\n" + 
					"REPLACE(noti_detail,'\\n', '<br>') noti_detail, noti_date\r\n" + 
					"FROM p5_notice\r\n" + 
					"WHERE noti_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, noti_no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				noti = new Notice(
							rs.getInt("noti_no"), 
							rs.getString("noti_name"),
							rs.getString("noti_detail"), 
							rs.getDate("noti_date"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return noti;
	}
	public void insertNotice(Notice noti) {
		try {
			setConn();
			String sql = "INSERT INTO p5_notice VALUES (p5_notice_seq.nextval,?,?,sysdate)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, noti.getNoti_name());
			pstmt.setString(2, noti.getNoti_detail());
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("등록성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	public void updateNotice(Notice noti) {
		try {
			setConn();
			String sql = "UPDATE p5_notice\r\n" + 
					"SET noti_name = ?,\r\n" + 
					"	noti_detail = ?\r\n" + 
					"WHERE noti_no = ?";
			System.out.println(noti.getNoti_name());
			System.out.println(noti.getNoti_detail());
			System.out.println(noti.getNoti_no());
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, noti.getNoti_name());
			pstmt.setString(2, noti.getNoti_detail());
			pstmt.setInt(3, noti.getNoti_no());
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("수정성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}


}

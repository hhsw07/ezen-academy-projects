package khj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import z01_vo.Member;

public class A03_myPageDao {

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
	
	
	
	// 회원정보 불러오기
	public Member getMember(String mem_id) {
		Member mem = new Member();
		try {
			setConn();
			String sql = "SELECT * FROM p5_member WHERE mem_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mem= new Member(rs.getString("mem_id"),
								rs.getString("mem_pw"), 
								rs.getString("mem_name"),
								rs.getDate("mem_birth"),
								rs.getString("mem_email"),
								rs.getString("mem_tel"),
								rs.getDate("mem_jdate"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mem;
	}
	
	
	// 비밀번호 업데이트
	public void uptPw(Member upt) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "UPDATE P5_MEMBER \r\n" + 
						"SET mem_pw = ?\r\n" + 
						"WHERE mem_id= ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getMem_pw());
			pstmt.setString(2, upt.getMem_id());
			// 실행
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("수정 성공!!");
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 입력시, 문제 발생시, 이전 데이터 원복 처리.
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	
	// 회원정보 삭제
	public void deleteMember(Member del) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "DELETE FROM p5_member \r\n" + 
							"WHERE mem_id = ? \r\n" + 
							"AND mem_pw = ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, del.getMem_id());
			pstmt.setString(2, del.getMem_pw());
			// 실행
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("삭제 성공!!");
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 입력시, 문제 발생시, 이전 데이터 원복 처리.
			try {
				con.rollback();
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

	}

}

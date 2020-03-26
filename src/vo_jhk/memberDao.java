package vo_jhk;

import java.sql.*;
import java.util.ArrayList;

import z01_vo.Member;

public class memberDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public void setCon() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공");
		
	}
	
	public Boolean checkId(String schid){
		boolean isValid = false;
		try {
			setCon();
			String sql = "SELECT * FROM p04_member where mem_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, schid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) isValid = true;
			rs.close(); pstmt.close(); con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isValid;
	}
	
	public void insertMember(Member ins) {
		try {
			setCon();

			String sql = "INSERT INTO p04_member VALUES (?, p04_member_seq.nextval, ?, ?, ?, ?,"
					+ " to_date(?,'YYYY-MM-DD'), ?,'M')";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getMem_id());
			pstmt.setString(2, ins.getMem_pass());
			pstmt.setString(3, ins.getMem_name());
			pstmt.setString(4, ins.getMem_mail()); //이메일
			pstmt.setString(5, ins.getMem_nickname()); //닉네임
			pstmt.setString(6, ins.getMem_birth()); //생년월일
			pstmt.setString(7, ins.getMem_phone()); //휴대폰
			
			pstmt.close(); con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		
	}

}

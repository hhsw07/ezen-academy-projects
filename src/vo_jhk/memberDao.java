package vo_jhk;

import java.sql.*;
import java.util.ArrayList;

import z01_vo.Member;
import z01_vo.Notice;

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
	//아이디 중복확인 기능
	public Boolean checkId(String schid){
		boolean isValid = false; //중복인지, 아닌지 알려주는 
		try {
			setCon();
			String sql = "SELECT * FROM p04_member where mem_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, schid);
			rs = pstmt.executeQuery();
			//rs.next() 값은 true(중복일때) or false(중복아닐때)
			if(rs.next()) isValid = true;
			rs.close(); pstmt.close(); con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return isValid;
	}
	
	public String findId(String schid){
		String id = ""; //중복인지, 아닌지 알려주는 
		try {
			setCon();
			String sql = "SELECT mem_id FROM p04_member where mem_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, schid);
			rs = pstmt.executeQuery();
			//rs.next() 값은 true(중복일때) or false(중복아닐때)
			while(rs.next()) {
				id = rs.getString(1);
			}
			rs.close(); pstmt.close(); con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}
	
	public static void main(String[] args) {
		
	}

}

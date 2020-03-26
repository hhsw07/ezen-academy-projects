package vo_jhk;

import java.sql.*;
import java.util.ArrayList;

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
	
	public static void main(String[] args) {
		
	}

}

package vo_hsw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import z01_vo.Member;

public class A01_Admin {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	private void setCon() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
	}
	
	private ArrayList<Member> mList(){
		ArrayList<Member> mList = new ArrayList<Member>();
		
		try {
			setCon();
			String sql = "select * from p04_member";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				mList.add(new Member(
						rs.getString(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7),
						rs.getString(8),
						rs.getString(9)
						));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mList;
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

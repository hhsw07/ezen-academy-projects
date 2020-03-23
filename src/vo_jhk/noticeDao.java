package vo_jhk;
import java.sql.*;
import java.util.ArrayList;

import z01_vo.*;

public class noticeDao {
	
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	public void setCon() throws SQLException {
		//사용할 드라이버명
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//사용할 DB
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		//사용할 db에 해당하는 계정, 비밀번호
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공"); //DB접속 확인 알람
	}
	
	public ArrayList<Notice> mlist(){
		ArrayList<Notice> nlist = new ArrayList<Notice>();
		try {
			setCon();
			String sql = "SELECT * FROM p04_notice";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				nlist.add(new Notice(rs.getInt("noti_no"),
									rs.getString("noti_title"),
									rs.getString("noti_detail"),
									rs.getString("noti_date"),
									rs.getString("noti_code")
						)
						);
			}
			rs.close(); stmt.close(); con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nlist;
	}
	
	public static void main(String[] args) {
		noticeDao ndao = new noticeDao();
	}

}

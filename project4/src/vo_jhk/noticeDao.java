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
	
	public ArrayList<Notice> nlist(){
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
									rs.getDate("noti_date"),
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
	
	public Notice nlist(int cn){
		Notice sch = new Notice();
		try {
			setCon();
			String sql = "SELECT noti_no, noti_title,\r\n" + 
					"REPLACE(noti_detail,'\\n', '<br>') noti_detail, noti_date, noti_code\r\n" + 
					"FROM p04_notice\r\n" + 
					"WHERE noti_no = "+cn;
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				sch = new Notice(rs.getInt("noti_no"),
									rs.getString("noti_title"),
									rs.getString("noti_detail"),
									rs.getDate("noti_date"),
									rs.getString("noti_code")
						);
			}
			rs.close(); stmt.close(); con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sch;
	}

	public static void main(String[] args) {
		noticeDao ndao = new noticeDao();
		Notice n = ndao.nlist(18);
		System.out.print(n.getNoti_no()+"\t");
		System.out.print(n.getNoti_title()+"\t");
		System.out.print(n.getNoti_detail()+"\t");
		System.out.print(n.getNoti_date()+"\t");
		System.out.print(n.getNoti_code()+"\n");
		
	}

}

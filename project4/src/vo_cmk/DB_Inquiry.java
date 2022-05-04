package vo_cmk;

import java.sql.*;
import java.util.ArrayList;

public class DB_Inquiry {
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
		String info="jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공.");
	}
	
	public ArrayList<VO_Inquiry> getInqlist(){
		ArrayList<VO_Inquiry> inqlist = new ArrayList<VO_Inquiry>();
		try {
			setConn();
			String sql = "SELECT inquiry_date, inquiry_detail, inquiry_re\r\n" + 
					"FROM P04_INQUIRY\r\n" + 
					"WHERE MEM_ID = 'himan1'\r\n" + 
					"ORDER BY INQUIRY_NO DESC";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()) {
				inqlist.add(new VO_Inquiry(rs.getDate(1), rs.getString(2), rs.getString(3)));
			}
			rs.close();
			stat.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return inqlist;	
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DB_Inquiry db = new DB_Inquiry();

	}

}

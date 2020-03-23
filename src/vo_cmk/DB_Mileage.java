package vo_cmk;

import java.sql.*;
import java.util.ArrayList;

public class DB_Mileage {
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
	
	public ArrayList<VO_Mileage> getPtlist(){
		ArrayList<VO_Mileage> ptlist = new ArrayList<VO_Mileage>();
		try {
			setConn();
			String sql = "SELECT point_date, point_detail, point_mileage\r\n" + 
					"FROM P04_POINT\r\n" + 
					"WHERE MEM_ID = 'himan1'\r\n" + 
					"ORDER BY point_no DESC";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			//ptlist = null;
			while(rs.next()) {
				ptlist.add(new VO_Mileage(rs.getDate(1),rs.getString(2), rs.getInt(3)));
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
		
		return ptlist;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DB_Mileage db = new DB_Mileage();

	}

}

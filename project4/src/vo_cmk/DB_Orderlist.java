package vo_cmk;

import java.sql.*;
import java.util.ArrayList;

public class DB_Orderlist {
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
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상접속성공");
	}
	public ArrayList<VO_Orderlist> getOrderlist(){
		ArrayList<VO_Orderlist> olist = new ArrayList<VO_Orderlist>();
		try {
			setConn();
			String sql = 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return olist;
		
	}
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

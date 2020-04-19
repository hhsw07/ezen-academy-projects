package cmk;

import java.sql.*;
import java.util.ArrayList;

import z01_vo.As;

public class AsDao {
	private Connection con;
	private PreparedStatement pstmt;
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
		System.out.println("정상 접속 성공!");
	}
	
	public ArrayList<As> asList(){
		ArrayList<As> asList = new ArrayList<As>();
		try {
			setCon();
			String sql = "SELECT as_no, as_cate, mem_id, as_date\r\n" + 
					"FROM p5_as a, P5_ORDER b \r\n" + 
					"WHERE a.ORD_NO = b.ORD_NO\r\n" + 
					"ORDER BY as_no DESC";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				asList.add(new As(rs.getInt("as_no"),rs.getString("as_cate"),rs.getDate("as_date"),rs.getString("mem_id")));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return asList;
	}
	
	public As getAs(int as_no) {
		As as = new As();
		try {
			setCon();
			String sql = "";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return as;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AsDao dao = new AsDao();

	}

}
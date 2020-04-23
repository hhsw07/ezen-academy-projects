package cmk;

import java.sql.*;
import java.util.ArrayList;

import z01_vo.Point;

public class PointDao {
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
	
	public ArrayList<Point> ptList(){
		ArrayList<Point> ptList = new ArrayList<Point>();
		try {
			setCon();
			String sql = "SELECT point_date, point_detail, point_pt\r\n" + 
					"FROM p5_point\r\n" + 
					"WHERE mem_id = 'ezen01' \r\n" + 
					"ORDER BY point_no DESC";
			pstmt = con.prepareStatement(sql);
			//pstmt.setString(1, id.getMem_id());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ptList.add(new Point(rs.getDate("point_date"),rs.getString("point_detail"),rs.getInt("point_pt")));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ptList;
	}
	
	public Point calPoint() {
		Point cal = new Point();
		try {
			setCon();
			String sql = "SELECT a.tot, b.pl, c.mi\r\n" + 
					"FROM (SELECT sum(point_pt) tot FROM P5_POINT\r\n" + 
					"WHERE mem_id = 'ezen01') a,\r\n" + 
					"(SELECT sum(point_pt) pl FROM P5_POINT\r\n" + 
					"WHERE mem_id = 'ezen01'\r\n" + 
					"AND POINT_PT>=0) b,\r\n" + 
					"(SELECT sum(point_pt) mi FROM P5_POINT\r\n" + 
					"WHERE mem_id = 'ezen01'\r\n" + 
					"AND POINT_PT<0) c";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
				cal = new Point(rs.getInt(1), rs.getInt(2), rs.getInt(3));
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cal;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PointDao dao = new PointDao();
	}

}

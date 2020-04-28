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
	
	public ArrayList<Point> ptList(String mem_id){
		ArrayList<Point> ptList = new ArrayList<Point>();
		try {
			setCon();
			String sql = "SELECT point_date, point_detail, point_pt\r\n" + 
					"FROM p5_point\r\n" + 
					"WHERE mem_id = ? \r\n" + 
					"ORDER BY point_no DESC";
			System.out.println(sql);
			System.out.println(mem_id);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
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
	
	public ArrayList<Myorder> olist(String mem_id){
		ArrayList<Myorder> olist = new ArrayList<Myorder>();
		try {
			setCon();
			String sql = "SELECT pr.ord_no, a.parts_img, a.parts_name, pr.req_cnt, (pr.req_cnt*a.parts_price) req, d.total, c.ord_date, c.ord_stat \r\n" + 
					"FROM p5_request pr, \r\n" + 
					"	(SELECT parts_no, parts_img, parts_name, PARTS_PRICE FROM p5_parts\r\n" + 
					"	UNION SELECT com_no, com_img, com_name, com_price FROM p5_computer) a, P5_ORDER c,\r\n" + 
					"	(SELECT pr.ord_no, sum(pr.req_cnt*a.parts_price) total FROM p5_request pr, \r\n" + 
					"		(SELECT parts_no, parts_name, PARTS_PRICE FROM p5_parts\r\n" + 
					"		UNION\r\n" + 
					"		SELECT com_no, com_name, com_price FROM p5_computer) a\r\n" + 
					"	WHERE pr.REQ_NO = a.parts_no\r\n" + 
					"	GROUP BY ord_no\r\n" + 
					"	ORDER BY ord_no ASC) d\r\n" + 
					"WHERE pr.REQ_NO = a.parts_no AND c.ord_no = pr.ord_no AND d.ord_no = pr.ord_no \r\n" + 
					"AND c.mem_id=?\r\n" + 
					"ORDER BY ord_no DESC";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				olist.add(new Myorder(rs.getInt(1),
									  rs.getString(2),
									  rs.getString(3),rs.getInt(4),rs.getInt(5),rs.getInt(6),
									  rs.getDate(7),rs.getString(8)));
			}
			System.out.println("dao단 확인");
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return olist;
	}
	
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PointDao dao = new PointDao();
	}

}

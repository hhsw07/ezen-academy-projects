package cmk;

import java.sql.*;

import z01_vo.Cart;

public class PayDao {
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
	
	public Cart getCart(int req_no) {
		Cart cart = new Cart();
		try {
			setCon();
			String sql = "SELECT parts_no, parts_img, parts_name, parts_price \r\n" + 
					"FROM (SELECT parts_no, parts_img, parts_name, PARTS_PRICE FROM p5_parts\r\n" + 
					"	UNION SELECT com_no, com_img, com_name, com_price FROM p5_computer) \r\n" + 
					"WHERE parts_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, req_no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cart = new Cart(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return cart;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

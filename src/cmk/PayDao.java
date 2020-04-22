package cmk;

import java.sql.*;


import z01_vo.Cart;
import z01_vo.Order;
import z01_vo.Pay;
import z01_vo.Request;

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
	
	public Cart getCart(int req_no, int req_cnt) {
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
				cart = new Cart(rs.getInt(1),rs.getString(2),rs.getString(3), req_cnt ,rs.getInt(4));
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
	
	// 주문하기
	public void insertOrder(Order ins) {
		try {
			setCon();
			String sql = "INSERT INTO p5_order VALUES (to_date(sysdate,'yymmdd')||p5_order_seq.nextval,?, to_date(sysdate,'YYYY-MM-DD'),?,?,?,?,?,'','결제완료','')";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getMem_id());
			pstmt.setString(2, ins.getOrd_name());
			pstmt.setString(3, ins.getOrd_tel());
			pstmt.setString(4, ins.getOrd_post());
			pstmt.setString(5, ins.getOrd_addr1());
			pstmt.setString(6, ins.getOrd_addr2());
			pstmt.setString(7, ins.getOrd_req());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	public int getOrdno(String mem_id) {
		int no = 0;
		try {
			setCon();
			String sql = "SELECT max(ord_no) FROM p5_order\r\n" + 
					"WHERE MEM_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				no = rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return no;
	}
	
	public void insertRequest(Request ins) {
		try {
			setCon();
			String sql = "INSERT INTO p5_request VALUES (?, ?, ?, ?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getOrd_no());
			pstmt.setInt(2, ins.getReq_no());
			pstmt.setInt(3, ins.getReq_cnt());
			pstmt.setInt(4, ins.getReq_opt());
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insertPay(Pay ins) {
		try {
			setCon();
			String sql = "INSERT INTO p5_pay VALUES (p5_pay_seq.nextval,?,?,?,?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getOrd_no());
			pstmt.setString(2, ins.getPay_method());
			pstmt.setInt(3, ins.getPay_point());
			pstmt.setInt(4, ins.getPay_price());
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 재고 관리
	public void uptPartsCnt(int req_no, int req_cnt){
		try {
			setCon();
			String sql = "UPDATE P5_PARTS\r\n" + 
					"SET PARTS_STOCK = PARTS_STOCK - ?\r\n" + 
					"WHERE PARTS_NO = ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, req_cnt);
			pstmt.setInt(2, req_no);
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
			System.out.println("재고수량 수정성공!");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	
	}


	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

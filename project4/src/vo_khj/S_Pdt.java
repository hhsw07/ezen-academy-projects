package vo_khj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import sun.font.CreatedFontTracker;
import z01_vo.Store;

public class S_Pdt {

	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	// 1) 연결 공통 메서드 선언
	public void setCon() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공");
	}
/*
 	private int store_no; // 상품번호
	private String mem_id;     // 호스트
	private String store_title;     // 상품명
	private String store_code;     // 승인상태
	private int store_price;     // 가격
	private int store_totCnt;     // 총갯수
	private String store_detail;     // 상품설명
	private String strore_date;     // 신청일
	private String store_img;      // 상품이미지
	private String store_category;	// 상품분류	
 */
	public ArrayList<Store> getStoreList(){
		ArrayList<Store> sList = new ArrayList<Store>();
		try {
			setCon();
			String sql ="SELECT * \r\n" + 
					"FROM p04_store\r\n" + 
					"ORDER BY store_no";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				sList.add(new Store(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
										rs.getInt(5),rs.getInt(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10)));
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		return sList;
	}	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		S_Pdt dao = new S_Pdt();
		System.out.println(dao.getStoreList().size());
	}

}

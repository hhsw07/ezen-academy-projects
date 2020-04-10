package hsw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import z01_vo.Parts;

public class A01_AssemblyDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setcon() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info,"Scott","tiger");
	}
	
	// 대분류별 조회 화면
	public ArrayList<Parts> pList(Parts sch){
		ArrayList<Parts> pList = new ArrayList<Parts>();
		
		try {
			setcon();
			String sql = "SELECT parts_img, parts_name, part_price, parts_no FROM product2\r\n" + 
					"WHERE parts_mc = ?\r\n" + 
					"AND parts_sc1 LIKE '%'||?||'%'\r\n" + 
					"AND parts_sc2 LIKE '%'||?||'%'\r\n" + 
					"AND parts_sc3 LIKE '%'||?||'%'\r\n" + 
					"AND parts_sc4 LIKE '%'||?||'%'\r\n" + 
					"AND parts_sc5 LIKE '%'||?||'%'\r\n" + 
					"AND parts_sc6 LIKE '%'||?||'%'";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, sch.getParts_mc());
			pstmt.setString(2, sch.getParts_sc1());
			pstmt.setString(3, sch.getParts_sc2());
			pstmt.setString(4, sch.getParts_sc3());
			pstmt.setString(5, sch.getParts_sc4());
			pstmt.setString(6, sch.getParts_sc5());
			pstmt.setString(7, sch.getParts_sc6());
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pList.add(new Parts());
				
			}
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pList;
	}
	
	
	// 리스트에서 선택된 부품을 카트에 담기
	
	// 카트에서 선택된 부품을 카트에서 제거
	
	// 
}

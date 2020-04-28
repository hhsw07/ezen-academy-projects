package khj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import cmk.Myorder;
import z01_vo.As;
import z01_vo.Member;
<<<<<<< HEAD
import z01_vo.Mgr;
=======
import z01_vo.Notice;
>>>>>>> 6be964aed4b341ec41f5b97e0c3fbdc8eb745eb5

public class A04_adminDao {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

//	1) 연결 공통 메서드 선언	
	private void setConn() throws SQLException {
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
	
	public Member getMember(String mem_name){
		Member mem=null;
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * \r\n" + 
					"FROM p5_member\r\n" + 
					"WHERE mem_name= ? ";
					System.out.println("##sql##");
					System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_name );
			rs=stmt.executeQuery(sql);
			if(rs.next()) {
				mem = new Member(rs.getString("mem_id"),
								   rs.getString("mem_pw"),
								   rs.getString("mem_name"),
								   rs.getDate("mem_birth"),
								   rs.getString("mem_email"),
								   rs.getString("mem_tel"),
								   rs.getDate("mem_jdate"));
			}
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return mem;
	}
	public ArrayList<Member> mlist() {
		ArrayList<Member> mlist = new ArrayList<Member>();
		try {
			setConn();
			String sql = "SELECT * FROM p5_member";
			pstmt = con.prepareStatement(sql);
			System.out.println(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mlist.add(new Member(
						   rs.getString("mem_id"),
						   rs.getString("mem_name"),
						   rs.getString("mem_email"),
						   rs.getString("mem_tel")));
			}
			System.out.print(rs.getString("mem_id")+"\t");
			System.out.print(rs.getString("mem_name")+"\t");
			System.out.print(rs.getString("mem_email")+"\t");
			System.out.print(rs.getString("mem_tel")+"\t");
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mlist;
	}
	
<<<<<<< HEAD
	public ArrayList<Mgr> mgrList(){
		ArrayList<Mgr> mgrList = new ArrayList<Mgr>();
		try {
			setConn();
			// int mgr_no, int as_no, Date as_date, String as_cate,
			// String mem_id, Date mgr_date, String mgr_stat
			String sql = "SELECT a.MGR_NO, b.AS_NO, b.AS_DATE, b.AS_CATE, c.MEM_ID, a.MGR_DATE , a.MGR_STAT \r\n" + 
					"FROM P5_MGR a, P5_AS b, P5_ORDER c\r\n" + 
					"WHERE a.AS_NO = b.AS_NO \r\n" + 
					"AND b.ORD_NO = c.ORD_NO\r\n" + 
					"ORDER BY a.MGR_NO DESC";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				mgrList.add(new Mgr(rs.getInt(1),
									rs.getInt(2),
									rs.getDate(3),
									rs.getString(4),
									rs.getString(5),
									rs.getDate(6),
									rs.getString(7)));
=======
	public Member mdetail(String mem_id) {
		Member mem = new Member();
		try {
			setConn();
			String sql = "SELECT mem_id, mem_name, mem_birth, mem_jdate,\r\n" + 
					"		mem_email, mem_tel FROM p5_member";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mem = new Member(
							rs.getString("mem_id"), 
							rs.getString("mem_name"),
							rs.getDate("mem_birth"), 
							rs.getString("mem_email"),
							rs.getString("mem_tel"),
							rs.getDate("mem_jdate")
							);
>>>>>>> 6be964aed4b341ec41f5b97e0c3fbdc8eb745eb5
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
<<<<<<< HEAD
		
		return mgrList;
	}

	public Mgr mgrDetail(int mgr_no){
		Mgr mgrDetail = new Mgr();
		try {
			setConn();
			// 관리번호mgr_no, 신청번호 as_no, 신청일as_date, 분류as_cate, 신청자mem_id, 입고일mgr_date, 진행사항mgr_stat
			// 주문번호ord_no, 구매날짜ord_date, 신청내용as_detail, 처리비용mgr_price, 비고mgr_note
			String sql = "SELECT a.MGR_NO, b.AS_NO, b.AS_DATE, b.AS_CATE, c.MEM_ID, a.MGR_DATE , a.MGR_STAT,\r\n" + 
					"		b.ORD_NO, c.ORD_DATE, b.AS_DETAIL, a.MGR_PRICE, a.MGR_NOTE\r\n" + 
					"FROM P5_MGR a, P5_AS b, P5_ORDER c\r\n" + 
					"WHERE a.AS_NO = b.AS_NO \r\n" + 
					"AND b.ORD_NO = c.ORD_NO\r\n" + 
					"AND a.MGR_NO = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mgr_no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
				mgrDetail = new Mgr(rs.getInt(1),rs.getInt(2),
									rs.getDate(3),rs.getString(4),
									rs.getString(5),rs.getDate(6),rs.getString(7),
									rs.getInt(8),rs.getDate(9),rs.getString(10),
									rs.getInt(11), rs.getString(12));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mgrDetail;
	}

	public ArrayList<Mgr> reqList(int mgr_no){
		ArrayList<Mgr> reqList = new ArrayList<Mgr>();
		try {
			setConn();
			String sql = "SELECT a.MGR_NO , c.REQ_NO, d.parts_img, d.parts_name, c.REQ_CNT\r\n" + 
					"FROM P5_MGR a, P5_AS b, P5_REQUEST c,\r\n" + 
					"(SELECT parts_no, parts_name, PARTS_IMG\r\n" + 
					"FROM P5_PARTS\r\n" + 
					"UNION\r\n" + 
					"SELECT COM_NO, COM_NAME,com_img FROM P5_COMPUTER) d\r\n" + 
					"WHERE a.AS_NO = b.AS_NO \r\n" + 
					"AND b.ORD_NO = c.ORD_NO\r\n" + 
					"AND c.REQ_NO = d.parts_no\r\n" + 
					"AND a.MGR_NO = ?\r\n" + 
					"ORDER BY req_no desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, mgr_no);
			rs = pstmt.executeQuery();
			// mgr_no, req_no, parts_img, parts_name, req_cnt
			while(rs.next()) {
				reqList.add(new Mgr(rs.getInt(1),rs.getInt(2),
						rs.getString(3),rs.getString(4), rs.getInt(5) ));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return reqList;
	}

	public void uptMgr(Mgr upt) {
		try {
			setConn(); 
			String sql = "UPDATE P5_MGR \r\n" + 
					"SET MGR_STAT =?, \r\n" + 
					"	MGR_NOTE =?, \r\n" + 
					"	MGR_PRICE = ? \r\n" + 
					"WHERE MGR_NO = ?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getMgr_stat());
			pstmt.setString(2, upt.getMgr_note());
			pstmt.setInt(3, upt.getMgr_price());
			pstmt.setInt(4, upt.getMgr_no());
			// 실행
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("as 수정!!");
	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 입력시, 문제 발생시, 이전 데이터 원복 처리.
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

=======
		return mem;
	}
>>>>>>> 6be964aed4b341ec41f5b97e0c3fbdc8eb745eb5
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A04_adminDao dao = new A04_adminDao();
		
		System.out.println("데이터건수"+dao.mlist().size());
		
	}

}

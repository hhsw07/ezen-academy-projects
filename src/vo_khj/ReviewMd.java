package vo_khj;

import java.sql.*;
import java.util.ArrayList;

import vo_khj.Review_VO;


public class ReviewMd {
	
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
	
	public ArrayList<Review_VO> rlist() {
		ArrayList<Review_VO> rlist = new ArrayList<Review_VO>();
//		- 연결메서드 호출(예외처리)
		try {
			setConn();
//			- Connection객체에 의해 만들어진 Statement로 sql 대화 처리
			String sql = "SELECT po.order_no, mem_id, preview_date,\r\n" + 
							"preview_detail\r\n" + 
							"FROM p04_addr pa, p04_order po, p04_pReview ppr\r\n" + 
							"WHERE pa.addr_no = po.addr_no\r\n" + 
							"AND po.order_no = ppr.order_no\r\n" + 
							"AND store_no =''";
			stmt = con.createStatement();
//			- sql 대화의 결과로 ResultSet 받기.
			rs = stmt.executeQuery(sql);
//			ResultSet의 주요메서드
//			.next() : 행단위이동하면 다음 행에 데이터 있는지 여부(true/false)를 return
//			.getXXXX("컬럼명") .getXXXX(1) select의 순서 1,2,3
//			- while()을 활용하여 ArrayList<VO>에 담기와 return
			while (rs.next()) {
				rlist.add(new Review_VO(rs.getInt("order_no"), rs.getString("mem_id"), 
						rs.getString("pReview_date"), rs.getString("preview_detail")));
						
			}
//			- 자원(객체메모리)의 반납 
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rlist;
	}


	public void insertReview_VO (String mem_id, String detail) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "INSERT INTO p04_pReview values(p04_PREVIEW_seq.nextval,?,sysdete,?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			// ?에 대한 mapping
			pstmt.setString(1, mem_id);
			pstmt.setString(2, detail);
			// 실행
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("등록 성공!!");

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

	public Review_VO getProduct(int order_no) {
		Review_VO rvvo = new Review_VO();
		try {
			setConn();

			String sql = "SELECT * FROM p04_pReview WHERE store_no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rvvo = new Review_VO(rs.getInt("store_no"), rs.getString("mem_id"), 
						rs.getString("pReview_date"), rs.getString("pReview_detail"));
						
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rvvo;
	}

	public void updateReview_VO(Review_VO upt) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "UPDATE P04_PREVIEW \r\n" + 
						"	SET PREVIEW_DETAIL = ? \r\n" + 
						"	WHERE order_no = ?";
							
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getpReview_detail());
			
			// 실행
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("수정 성공!!");
	
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

	public void deleteReview_VO(int order_no) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "DELETE FROM P04_PREVIEW\r\n" + 
					"	WHERE order_no = ?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_no);
			// 실행
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("삭제 성공!!");
	
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

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ReviewMd dao = new ReviewMd();
		System.out.println("사이즈:"+dao.rlist().size());
		
	}

}

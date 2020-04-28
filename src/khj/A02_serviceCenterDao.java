package khj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Notice;
import z01_vo.Quecomm;
import z01_vo.Question;

public class A02_serviceCenterDao {
//	0) 전역 field 객체 선언
	private Connection con;
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
	// 공지리스트 불러오기
	public ArrayList<Notice> nlist() {
		ArrayList<Notice> nlist = new ArrayList<Notice>();
		try {
			setConn();
			String sql = "SELECT * FROM p5_notice\r\n" + 
							"ORDER BY noti_no desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				nlist.add(new Notice(
							rs.getInt("noti_no"), 
							rs.getString("noti_name"),
							rs.getString("noti_detail"), 
							rs.getDate("noti_date") ));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nlist;
	}
	
	public Notice ndetail(int noti_no) {
		Notice noti = new Notice();
		try {
			setConn();
			String sql = "SELECT noti_no, noti_name,\r\n" + 
					"REPLACE(noti_detail,'\\n', '<br>') noti_detail, noti_date\r\n" + 
					"FROM p5_notice\r\n" + 
					"WHERE noti_no = ?";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, noti_no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				noti = new Notice(
							rs.getInt("noti_no"), 
							rs.getString("noti_name"),
							rs.getString("noti_detail"), 
							rs.getDate("noti_date"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return noti;
	}
	public void insertNotice(Notice noti) {
		try {
			setConn();
			String sql = "INSERT INTO p5_notice VALUES (p5_notice_seq.nextval,?,?,sysdate)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, noti.getNoti_name());
			pstmt.setString(2, noti.getNoti_detail());
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("등록성공");
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
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	public void updateNotice(Notice noti) {
		try {
			setConn();
			String sql = "UPDATE p5_notice\r\n" + 
					"SET noti_name = ?,\r\n" + 
					"	noti_detail = ?\r\n" + 
					"WHERE noti_no = ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, noti.getNoti_name());
			pstmt.setString(2, noti.getNoti_detail());
			pstmt.setInt(3, noti.getNoti_no());
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("수정성공");
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
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	public void deleteNotice(int noti_no) {
		try {
			setConn();
			String sql = "DELETE FROM p5_notice\r\n" + 
					"WHERE noti_no= ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, noti_no);
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("수정성공");
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
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	// 공지리스트 불러오기
	public ArrayList<Question> qlist() {
		ArrayList<Question> qlist = new ArrayList<Question>();
		try {
			setConn();
			String sql = "SELECT * FROM p5_question\r\n" + 
							"ORDER BY que_no desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				qlist.add(new Question(
							rs.getInt("que_no"), 
							rs.getString("mem_id"),
							rs.getString("que_name"), 
							rs.getString("que_detail"), 
							rs.getDate("que_date")
						));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qlist;
	}
	
	public Question qdetail(int que_no) {
		Question que = new Question();
		try {
			setConn();
			String sql = "SELECT que_no, mem_id, que_name,\r\n" + 
					"REPLACE(que_detail,'\\n', '<br>') que_detail, que_date\r\n" + 
					"FROM p5_question\r\n" + 
					"WHERE que_no = ?";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, que_no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				que = new Question(
							rs.getInt("que_no"), 
							rs.getString("mem_id"),
							rs.getString("que_name"),
							rs.getString("que_detail"), 
							rs.getDate("que_date"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return que;
	}
	
	// 문의댓글리스트 불러오기
	public ArrayList<Quecomm> qclist(int que_no) {
		ArrayList<Quecomm> qclist = new ArrayList<Quecomm>();
		try {
			setConn();
			String sql = "SELECT quec_no, que_no, mem_id,\r\n" + 
					"REPLACE(quec_detail,'\\n', '<br>') quec_detail, quec_date\r\n" + 
					"FROM p5_quecomm\r\n" + 
					"WHERE que_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, que_no);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				qclist.add(new Quecomm(
							rs.getInt("quec_no"), 
							rs.getInt("que_no"), 
							rs.getString("mem_id"),
							rs.getString("quec_detail"), 
							rs.getDate("quec_date")
						));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qclist;
	}
	
	public void insertQuestion(Question que) {
		try {
			setConn();
			String sql = "INSERT INTO p5_question VALUES (p5_question_seq.nextval, ?, ?, ?, sysdate)";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, que.getMem_id());
			pstmt.setString(2, que.getQue_name());
			pstmt.setString(3, que.getQue_detail());
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("등록성공");
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
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	//여기서부터 수정
	public void updateQuestion(Question que) {
		try {
			setConn();
			String sql = "UPDATE p5_question\r\n" + 
					"SET que_name = ?,\r\n" + 
					"	que_detail = ?\r\n" + 
					"WHERE que_no = ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, que.getQue_name());
			pstmt.setString(2, que.getQue_detail());
			pstmt.setInt(3, que.getQue_no());
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("수정성공");
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
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}

	public void deleteQuestion(int que_no) {
		try {
			setConn();
			String sql = "DELETE FROM p5_question\r\n" + 
					"WHERE que_no= ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, que_no);
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("수정성공");
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
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	public void deleteQuecommAll(int que_no) {
		try {
			setConn();
			String sql = "DELETE FROM p5_quecomm\r\n" + 
					"WHERE que_no= ?";
			System.out.println(sql);
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, que_no);
			pstmt.executeUpdate();
			
			con.commit();
			
			pstmt.close();
			con.close();
			
			System.out.println("수정성공");
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
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	}

	
}

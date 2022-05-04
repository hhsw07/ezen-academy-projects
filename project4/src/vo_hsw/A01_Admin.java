package vo_hsw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class A01_Admin {
	private Connection con;
	private Statement stmt;
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
	}
	
	public ArrayList<Adm_Mem> getMList(){
		ArrayList<Adm_Mem> mList = new ArrayList<Adm_Mem>();
		
		try {
			setCon();
			String sql = "select * from p04_member ORDER BY MEM_NO";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				mList.add(new Adm_Mem(
						rs.getString(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getDate(7),
						rs.getString(8),
						rs.getString(9)
						));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return mList;
	}
	
	
	
	public Adm_Mem getMember(String mem_id){
		Adm_Mem m = new Adm_Mem();
		
		try {
			setCon();
			String sql = "SELECT DISTINCT a.* ,(SELECT sum(b.POINT_MILEAGE ) FROM P04_POINT b\r\n" + 
					"WHERE b.MEM_ID = ?) \"mem_mileage\" FROM P04_MEMBER a, P04_POINT b\r\n" + 
					"WHERE b.MEM_ID = ?\r\n" + 
					"AND a.MEM_ID = b.MEM_ID";
			pstmt = con.prepareStatement(sql);
			// ?의 순서에 따른 데이터 입력 처리
			// sql을 먼저 넘기고 param로 값을 매핑처리
			pstmt.setString(1, mem_id);
			pstmt.setString(2, mem_id);

			rs = pstmt.executeQuery();
			
			// MEM_ID		|MEM_NO		|MEM_PASS	|MEM_NAME|MEM_MAIL
			// MEM_NICKNAME	|MEM_BIRTH	|MEM_PHONE  |MEM_CODE|mem_mileage
			/*if(rs.next()) {
				m = new Adm_Mem();
				m.setMem_id (rs.getString(1));
				m.setMem_no (rs.getInt(2));
				m.setMem_pass(rs.getString(3));
				m.setMem_name(rs.getString(4));
				m.setMem_mail(rs.getString(5));
				m.setMem_nickname(rs.getString(6));
				m.setMem_birth(rs.getDate(7));
				m.setMem_phone(rs.getString(8));
				m.setMem_code(rs.getString(9));
				m.setMem_mileage(rs.getInt(10));
			}*/
			// String mem_id, int mem_no, String mem_pass, String mem_name, 
			// String mem_mail, String mem_nickname,
			// Date mem_birth, String mem_phone, String mem_code, int mem_mileage
			if(rs.next()) {
				m = new Adm_Mem( rs.getString(1),
				rs.getInt(2),
				rs.getString(3),
				rs.getString(4),
				rs.getString(5),
				rs.getString(6),
				rs.getDate(7),
				rs.getString(8),
				rs.getString(9),
				rs.getInt(10));
			}
			
			
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return m;
	}

	
	/*
	# CRUD ( create, read, update, delete)
			    등록	 읽기		수정		삭제
	1. sql 만들기
	2. Connection 객체의 autocommit 방지
	3. Statement로 등록 처리
	4. commit 수행
	5. 자원해제
	6. 예외처리에서 rollback 처리 
	*/
	public void updateMem(Adm_Mem upt){
		try {
			setCon();
			
			String sql = "UPDATE P04_MEMBER \r\n" + 
						"SET mem_id = '"+upt.getMem_id()+"',\r\n" + 
						"	mem_no = "+upt.getMem_no()+",\r\n" + 
						"	MEM_PASS = '"+upt.getMem_pass()+"',\r\n" + 
						"	mem_name = '"+upt.getMem_name()+"',\r\n" + 
						"	mem_mail = '"+upt.getMem_mail()+"',\r\n" + 
						"	mem_nickname = '"+upt.getMem_nickname()+"',\r\n" + 
						"	mem_birth = to_date('"+ upt.getMem_birth() +"','YYYY-MM-DD'),\r\n" + 
						"	mem_phone = '"+upt.getMem_phone() +"',\r\n" + 
						"	mem_code = '"+upt.getMem_code()+"'\r\n" + 
						"WHERE mem_no = "+upt.getMem_no();
			System.out.println("##update sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정코드");
			System.out.println(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void deleteMem(int del){
		try {
			setCon();
			
			String sql = "DELETE P04_MEMBER\r\n" + 
					"WHERE mem_no = "+del;
			System.out.println("##delete sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public ArrayList<Adm_Cou> getCList(){
		ArrayList<Adm_Cou> cList = new ArrayList<Adm_Cou>();
		
		try {
			setCon();
			String sql = "select * from p04_course order by COURSE_NO";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				cList.add(new Adm_Cou(
						rs.getInt(1),
						rs.getString(2),
						rs.getDate(3),
						rs.getString(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7)
						));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cList;
	}

	
	public Adm_Cou getCourse(int course_no){
		Adm_Cou m = null;
		
		try {
			setCon();
			String sql = "SELECT * FROM p04_course\r\n" + 
					"WHERE COURSE_NO ="+course_no;
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			// COURSE_NO|MEM_ID|COURSE_INPUTDATE   |COURSE_TITLE|
			// COURSE_DETAIL |COURSE_IMG    |CORUSE_CATEGORY|
			
			if(rs.next()) {
				m = new Adm_Cou(rs.getInt(1),
								rs.getString(2),
								rs.getDate(3),
								rs.getString(4),
								rs.getString(5),
								rs.getString(6),
								rs.getString(7)
						);
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return m;
	}

	public void insertCourse(Adm_Cou ins){
		
		try {
			setCon();
			// COURSE_NO|MEM_ID|COURSE_INPUTDATE   |COURSE_TITLE|
			// COURSE_DETAIL |COURSE_IMG    |CORUSE_CATEGORY|
			String sql = "INSERT INTO p04_course values(p04_course_seq.nextval,'"+ins.getMem_id()+
					"',sysdate,'"+ins.getCourse_title()+"','"+ins.getCourse_detail()+"','"+
					ins.getCourse_img()+"','"+ins.getCourse_category()+"')";
			System.out.println("##insert sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void updateCou(Adm_Cou upt){
		try {
			setCon();
			
			String sql = "UPDATE p04_course \r\n" + 
					"SET mem_id = '"+upt.getMem_id()+"',\r\n" + 
					"course_title = '"+upt.getCourse_title()+"', \r\n" + 
					"course_detail = '"+upt.getCourse_detail()+"', \r\n" + 
					"course_img = '"+upt.getCourse_img()+"', \r\n" + 
					"coruse_category = '"+upt.getCourse_category()+"' \r\n" + 
					"WHERE course_no = "+upt.getCourse_no()+"";
			System.out.println("##update sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정코드");
			System.out.println(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void deleteCou(int del){
		try {
			setCon();
			
			String sql = "DELETE p04_course\r\n" + 
					"WHERE course_no = "+del;
			System.out.println("##delete sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public ArrayList<Adm_Sto> getSList(){
		ArrayList<Adm_Sto> sList = new ArrayList<Adm_Sto>();
		try {
			setCon();
			String sql = "select * from p04_store order by store_no";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			// STORE_NO		  |MEM_ID |STORE_TITLE|STORE_CODE|STORE_PRICE|STORE_TOTCNT|
			// STORE_DETAIL   |STRORE_DATE        |STORE_IMG     |STORE_CATEGORY
			while(rs.next()) {
				sList.add(new Adm_Sto(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getString(7),
						rs.getDate(8),
						rs.getString(9),
						rs.getString(10)
						));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return sList;
	}

	public Adm_Sto getStore(int store_no){
		Adm_Sto s = null;
		
		try {
			setCon();
			String sql = "SELECT * FROM p04_store\r\n" + 
					"WHERE STORE_NO ="+store_no;
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			// STORE_NO		  |MEM_ID |STORE_TITLE|STORE_CODE|STORE_PRICE|STORE_TOTCNT|
			// STORE_DETAIL   |STRORE_DATE        |STORE_IMG     |STORE_CATEGORY
			if(rs.next()) {
				s = new Adm_Sto(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getString(7),
						rs.getDate(8),
						rs.getString(9),
						rs.getString(10)
						);
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s;
	}

	public void insertStore(Adm_Sto ins){
		
		try {
			setCon();
			// STORE_NO		  |MEM_ID |STORE_TITLE|STORE_CODE|STORE_PRICE|STORE_TOTCNT|
			// STORE_DETAIL   |STRORE_DATE        |STORE_IMG     |STORE_CATEGORY
			String sql = "INSERT INTO p04_store values(p04_store_seq.nextval,'"+
					ins.getMem_id()+"','"+ins.getStore_title()+"','"+
					ins.getStore_code()+"',"+ins.getStore_price()+","+
					ins.getStore_totCnt()+",'"+ins.getStore_detail()+"',sysdate,'"+
					ins.getStore_img()+"','"+ins.getStore_category()+"'";
			
			System.out.println("##insert sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void updateSto(Adm_Sto upt){
		try {
			setCon();
			// STORE_NO		  |MEM_ID |STORE_TITLE|STORE_CODE|STORE_PRICE|STORE_TOTCNT|
			// STORE_DETAIL   |STRORE_DATE        |STORE_IMG     |STORE_CATEGORY
			String sql = "UPDATE p04_store \r\n" + 
						"SET store_code = '"+upt.getStore_code()+"'\r\n" + 
						"WHERE store_no = "+upt.getStore_no();
			System.out.println("##update sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정코드");
			System.out.println(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void deleteSto(int del){
		try {
			setCon();
			// STORE_NO		  |MEM_ID |STORE_TITLE|STORE_CODE|STORE_PRICE|STORE_TOTCNT|
			// STORE_DETAIL   |STRORE_DATE        |STORE_IMG     |STORE_CATEGORY
			String sql = "DELETE p04_store\r\n" + 
					"WHERE store_no = "+del;
			System.out.println("##delete sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public ArrayList<Adm_Not> getNotiList(){
		ArrayList<Adm_Not> notiList = new ArrayList<Adm_Not>();
		
		try {
			setCon();
			String sql = "select * from p04_notice order by noti_no";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				notiList.add(new Adm_Not(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDate(4),
						rs.getString(5)
						));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return notiList;
	}

	public Adm_Not getNotice(int notice_no){
		Adm_Not noti = null;
		
		try {
			setCon();
			String sql = "SELECT * FROM p04_notice\r\n" + 
					"WHERE noti_no = "+notice_no+"";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				noti = new Adm_Not(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getDate(4),
								rs.getString(5)
						);
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return noti;
	}

	public void insertNot(Adm_Not ins){
		try {
			setCon();
			
			String sql = "INSERT INTO p04_notice values(p04_notice_seq.nextval,'"+
					ins.getNoti_title()+"','"+ins.getNoti_detail()+"',sysdate,'"+
					ins.getNoti_code()+"')";
			System.out.println("##insert sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void updateNoti(Adm_Not upt){
		try {
			setCon();
			
			String sql = "UPDATE p04_notice\r\n" + 
					"SET noti_no = "+upt.getNoti_no()+", \r\n" + 
					"	noti_title = '"+upt.getNoti_title()+"',\r\n" + 
					"	noti_detail = '"+upt.getNoti_detail()+"',\r\n" + 
					"	noti_code = '"+upt.getNoti_code()+"' \r\n" + 
					"WHERE noti_no = "+upt.getNoti_no()+"";
			System.out.println("##update sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정코드");
			System.out.println(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void deleteNoti(int del){
		try {
			setCon();
			
			String sql = "DELETE p04_notice\r\n" + 
					"WHERE noti_no = "+del;
			System.out.println("##delete sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public ArrayList<Adm_Inq> getInquList(){
		ArrayList<Adm_Inq> inquList = new ArrayList<Adm_Inq>();
		
		try {
			setCon();
			String sql = "select * from p04_inquiry";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			//INQUIRY_NO|MEM_ID|INQUIRY_DETAIL |INQUIRY_DATE   |INQUIRY_RE
			while(rs.next()) {
				inquList.add(new Adm_Inq(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDate(4),
						rs.getString(5)
						));
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return inquList;
	}

	public Adm_Inq getInquiry(int inquiry_no){
		Adm_Inq inqu = null;
		
		try {
			setCon();
			String sql = "SELECT * FROM p04_inquiry\r\n" + 
					"WHERE inquiry_no ="+inquiry_no;
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			//INQUIRY_NO  |MEM_ID  |INQUIRY_DETAIL |INQUIRY_DATE   |INQUIRY_RE
			if(rs.next()) {
				inqu = new Adm_Inq(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getDate(4),
								rs.getString(5)
						);
			}
			
			rs.close();
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return inqu;
	}

	public void insertInq(Adm_Inq ins){
		try {
			setCon();
			//INQUIRY_NO|MEM_ID|INQUIRY_DETAIL  |INQUIRY_DATE       |INQUIRY_RE
			String sql = "INSERT INTO p04_inquiry values(p04_inquiry_seq.nextval,'"+
					ins.getMem_id()+"','"+ins.getInquiry_detail()+"',sysdate,'"+
					ins.getInquiry_re()+"')";
			System.out.println("##insert sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void updateInq(Adm_Inq upt){
		try {
			setCon();
			// INQUIRY_NO|MEM_ID|INQUIRY_DETAIL   |INQUIRY_DATE       |INQUIRY_RE
			String sql = "UPDATE p04_inquiry \r\n" + 
					"SET inquiry_re = '"+upt.getInquiry_re()+"'\r\n" + 
					"WHERE inquiry_no = "+upt.getInquiry_no();
			System.out.println("##update sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			System.out.println("수정코드");
			System.out.println(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void deleteInq(int del){
		try {
			setCon();
			 
			String sql = "DELETE p04_inquiry\r\n" + 
					"WHERE inquiry_no = "+del;
			System.out.println("##delete sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			stmt = con.createStatement();
			// 실행 및 commit
			stmt.executeQuery(sql);
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public ArrayList<Adm_Ckind> getCkList(int course_no){
		ArrayList<Adm_Ckind> ckList = new ArrayList<Adm_Ckind>();
		
		try {
			setCon();
			String sql = "SELECT b.* FROM p04_course a, p04_ckind b\r\n" + 
					"where a.COURSE_NO = b.COURSE_NO\r\n" + 
					"AND a.COURSE_NO = ? order by ckind_no";
			// CKIND_NO|COURSE_NO|COURSE_KIND|COURSE_OPENDATE    |COURSE_PRICE|COURSE_TOTCNT|COURSE_CURCNT|
			pstmt = con.prepareStatement(sql);
			// ?의 순서에 따른 데이터 입력 처리
			// sql을 먼저 넘기고 param로 값을 매핑처리
			pstmt.setInt(1, course_no);

			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ckList.add(new Adm_Ckind(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3),
						rs.getDate(4),
						rs.getInt(5),
						rs.getInt(6),
						rs.getInt(7)
						));
			}
			
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ckList;
	}

	public void insertCkind(Adm_Ckind ins){
		
		try {
			setCon();
			// COURSE_NO|MEM_ID|COURSE_INPUTDATE   |COURSE_TITLE|
			// COURSE_DETAIL |COURSE_IMG    |CORUSE_CATEGORY|
			String sql = "INSERT INTO p04_ckind\r\n" + 
					"values(p04_ckind_seq.nextval, ?,?,?,?,?,0)";
			System.out.println("##insert sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getCourse_no());
			pstmt.setString(2, ins.getCourse_kind());
			java.util.Date utilDate = ins.getCourse_opendate();
		    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			pstmt.setDate(3,sqlDate);
			pstmt.setInt(4, ins.getCourse_price());
			pstmt.setInt(5, ins.getCourse_totcnt());
			
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("수정완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void updateCkind(Adm_Ckind upt){
		try {
			setCon();
			
			String sql = "UPDATE P04_CKIND\r\n" + 
					"SET COURSE_KIND = ?,\r\n" + 
					"COURSE_OPENDATE = ?,\r\n" + 
					"COURSE_PRICE =?,\r\n" + 
					"COURSE_TOTCNT = ?\r\n" + 
					"WHERE CKIND_NO = ?";
			System.out.println("##update sql##");
			// autocommit 방식
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getCourse_kind());
			java.util.Date utilDate = upt.getCourse_opendate();
		    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			pstmt.setDate(2,sqlDate);
			pstmt.setInt(3, upt.getCourse_price());
			pstmt.setInt(4, upt.getCourse_totcnt());
			pstmt.setInt(5, upt.getCkind_no());
			
			System.out.println(sql);
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			pstmt.close();
			con.close();
			System.out.println("해제");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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

	public void deleteCkind(int del){
		try {
			setCon();
			
			String sql = "DELETE p04_ckind\r\n" + 
					"WHERE ckind_no = ?";
			System.out.println("##delete sql##");
			System.out.println(sql);
			// autocommit 방식
			con.setAutoCommit(false);
			pstmt= con.prepareStatement(sql);
			pstmt.setInt(1, del);
			
			pstmt.executeUpdate();
			con.commit();
			// 자원해제
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			// 문제 발생시 rollback 처리
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
		A01_Admin db = new A01_Admin();
		System.out.println("데이터 건수: "+db.getMList().size());
		
	}

}

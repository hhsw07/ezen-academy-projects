package vo_hsw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class A01_Admin {
	private Connection con;
	private Statement stmt;
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
		Adm_Mem m = null;
		
		try {
			setCon();
			String sql = "SELECT DISTINCT a.* ,(SELECT sum(b.POINT_MILEAGE ) FROM P04_POINT b\r\n" + 
					"WHERE b.MEM_ID = '"+ mem_id +"') \"mem_mileage\" FROM P04_MEMBER a, P04_POINT b \r\n" + 
					"WHERE b.MEM_ID = '"+ mem_id +"'\r\n" + 
					"AND a.MEM_ID = b.MEM_ID";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			// MEM_ID		|MEM_NO		|MEM_PASS	|MEM_NAME|MEM_MAIL
			// MEM_NICKNAME	|MEM_BIRTH	|MEM_PHONE  |MEM_CODE|mem_mileage
			
			while(rs.next()) {
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
			String sql = "select * from p04_course";
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
	public void updateCou(Adm_Cou upt){
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

	public void deleteCou(int del){
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

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A01_Admin db = new A01_Admin();
		System.out.println("데이터 건수: "+db.getMList().size());
		
	}

}

package vo_hsw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import z01_vo.Course;

public class A02_Course {
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
	
	public ArrayList<Course> getMList(){
		ArrayList<Course> cList = new ArrayList<Course>();
		
		try {
			setCon();
			String sql = "";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			// COURSE_NO	|MEM_ID		   |COURSE_INPUTDATE   |
			// COURSE_TITLE	|COURSE_DETAIL |COURSE_IMG    	   |CORUSE_CATEGORY|
			while(rs.next()) {
				cList.add(new Course(
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
	
	
	
	public Course getCourse(int course_no){
		Course c = null;
		
		try {
			setCon();
			String sql = "";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			// COURSE_NO	|MEM_ID		   |COURSE_INPUTDATE   |
			// COURSE_TITLE	|COURSE_DETAIL |COURSE_IMG    	   |CORUSE_CATEGORY|
			
			while(rs.next()) {
				c = new Course(
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
		
		return c;
	}

	
	public void updateMem(Member upt){
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

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A02_Course db = new A02_Course();
		System.out.println("데이터 건수: "+db.getMList().size());
		
	}

}

package jspexp.b01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.z01_vo.Dept;
import jspexp.z01_vo.Emp;

public class A02_Database {
/*
ex) SELECT * FROM dept를 통해서,
DB 접근과 List 데이터 처리
a02_deptList.jsp
 * */
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setCon() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info="jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상 접속 성공.");
	}
	public ArrayList<Dept> getDeptList(){
		ArrayList<Dept> dList=new ArrayList<Dept>();
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM dept77 ORDER BY deptno DESC ";
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				dList.add(new Dept(rs.getInt(1),rs.getString(2),rs.getString(3)));
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
		
		return dList;
	}	
	public void insertDept(Dept ins){
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "INSERT INTO dept77 values("+ins.getDeptno()
						+",'"+ins.getDname()+"','"+ins.getLoc()+"')";
			System.out.println(sql);
			con.setAutoCommit(false);
			stmt = con.createStatement();
			stmt.executeUpdate(sql);
			con.commit();
			stmt.close(); con.close();
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
			
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

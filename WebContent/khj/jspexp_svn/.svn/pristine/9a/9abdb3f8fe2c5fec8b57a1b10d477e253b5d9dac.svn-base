package jspexp.b01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.z01_vo.Member;

public class A04_MemberDao {
/*
회원가입현황리스트
회원id, 비밀번호, 이름, 포인트, 권한, 등록일
*/
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

	public ArrayList<Member> getMemberList(){
		ArrayList<Member> mList=new ArrayList<Member>();
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM member2 ";
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				mList.add(new Member(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getInt(4),
							rs.getString(5),
							rs.getDate(6)
						));
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
		
		return mList;
	}	
	// A04_MemberDao.login(Member mem)	
	public Member login(Member mem){
		Member m=null;
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM member2 "
					+ "WHERE id = '"+mem.getId()+"' "
					+ "AND pass='"+mem.getPass()+"' ";
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()) {
				m = new Member(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getInt(4),
							rs.getString(5),
							rs.getDate(6) );
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
		
		return m;
	}
	// member가 등록된 여부 check
	public boolean memberCk(String id){
		boolean isMember=false;
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM member2\r\n" + 
						 "		WHERE id=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();		
			// rs.next() : 데이터가 있을 때, true
			// if(rs.next()) rs.getString("id") (X)
			isMember=rs.next();
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
		
		return isMember;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

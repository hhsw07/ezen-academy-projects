package khj;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import z01_vo.Member;
import z01_vo.Nk;

public class A01_loginDao {
	
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
//!! ()괄호 안에 쓰이는 코드가 왜 어떻게 쓰이는지 이해부족
	
	
	// public ArrayList<Member>는 Member VO를 ArrayList로 선언한다는 의미 getMemberList의 이름으로(?)
	public ArrayList<Member> getMemberList(){
	// ArrayList<Member>를 mList로 선언(?)
		ArrayList<Member> mList=new ArrayList<Member>();
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM FROM p5_member ";
			pstmt = con.prepareStatement(sql);
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			// 위에 선언한 Member를 while 문 ResultSet.next로 추가될때마다 반복으로 생성(?)
			while(rs.next()) {
				mList.add(new Member(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDate(4),
						rs.getString(5),
						rs.getString(6),
						rs.getDate(7) 
						));
			}
			// 자원해제부분이 어떤 의미인지는 이해하지 못하고 사용
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
		// 위에 수행한 코드들을 mList는 반환한다는 의미(?)
		return mList;
	}	
	// A04_MemberDao.login(Member mem)	
	/*
	public Member login(Member mem){
		Member m=null;
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM p5_member "
					+ "WHERE mem_id = '"+mem.getMem_id()+"' "
					+ "AND mem_pw='"+mem.getMem_pw()+"' ";

			System.out.println(sql);
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()) {
				m = new Member(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getDate(4),
							rs.getString(5),
							rs.getString(6),
							rs.getDate(7) );
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
	*/
	// 로그인
	public Member login(Member mem){
		Member m=null;
		try {
			setCon(); // Connection 객체가 메모리 로딩.
			String sql = "SELECT * FROM p5_member "
					+ "WHERE mem_id = ? "
					+ "AND mem_pw= ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem.getMem_id());
			pstmt.setString(2, mem.getMem_pw());
			System.out.println(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				m = new Member(
							rs.getString(1),
							rs.getString(2),
							rs.getString(3),
							rs.getDate(4),
							rs.getString(5),
							rs.getString(6),
							rs.getDate(7) );
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
		
		return m;
	}
	// 아이디 찾기
	public Member findId(Member fid) {
		Member m=null;
		try {
			setCon();
			// sql문 작업수행
			String sql ="SELECT mem_id FROM p5_member\r\n" + 
					"WHERE mem_name = ?" + 
					"AND mem_email = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, fid.getMem_name());
			pstmt.setString(2, fid.getMem_email());
			System.out.println(sql);
			System.out.println("이름"+fid.getMem_name());
			System.out.println("메일"+fid.getMem_email());
			rs = pstmt.executeQuery();			
			
			if(rs.next()) {
				m = new Member(
						rs.getString("mem_id"));
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
		
		return m;
	}
	
	// 회원가입 
	public void insSignUpMember(Member ins) {
		try {
			setCon();
			String sql = "INSERT INTO p5_member VALUES (?,?,?,?,?,?,sysdate)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getMem_id());
			pstmt.setString(2, ins.getMem_pw());
			pstmt.setString(3, ins.getMem_name());
			pstmt.setDate(4, Nk.convert(ins.getMem_birth()));
			pstmt.setString(5, ins.getMem_email());
			pstmt.setString(6, ins.getMem_tel());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
			System.out.println("회원등록");
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
	// member가 등록된 여부 check
	public boolean memberCk(String mem_id){
		boolean isMember=false;
		try {
			setCon();
			String sql = "SELECT * FROM p5_member\r\n" + 
						 "		WHERE mem_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem_id);
			rs=pstmt.executeQuery();		
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

package hsw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import z01_vo.Assembly;
import z01_vo.Computer;
import z01_vo.Parts;

public class A01_AssemblyDao {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private void setcon() throws SQLException {
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
	
	
	public ArrayList<Parts> pList(){
		ArrayList<Parts> pList = new ArrayList<Parts>();
		
		try {
			setcon();
			String sql = "SELECT parts_no, parts_name, parts_price, parts_img FROM p5_parts\r\n" + 
					"WHERE parts_mc = 'CPU'";
			
			pstmt = con.prepareStatement(sql);
						
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pList.add(new Parts(rs.getInt(1),
								    rs.getString(2),
								    rs.getInt(3),
								    rs.getString(4)
						));
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
	
	
	// proc sch => 검색화면
	public ArrayList<Parts> pList(Parts sch){
		ArrayList<Parts> pList = new ArrayList<Parts>();
		
		try {
			setcon();
			String sql = "SELECT parts_no, parts_name, parts_price, parts_img FROM p5_parts\r\n" + 
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
				pList.add(new Parts(rs.getInt(1),
								    rs.getString(2),
								    rs.getInt(3),
								    rs.getString(4)));
				
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


	// proc ins => 견적 테이블에 추가(기본1개)
	public void insertCart(Assembly ins) {
		try {
			setcon(); // Connection 객체가 메모리 로딩.
			String sql = "insert into p5_assembly values (?,?,1)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getCom_no());
			pstmt.setInt(2, ins.getParts_no());
			
			pstmt.executeUpdate();
			
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
	
	
	public ArrayList<Parts> cartList(){
		ArrayList<Parts> cartList = new ArrayList<Parts>();
		
		try {
			setcon();
			String sql = "SELECT parts_no, parts_name, parts_price, parts_img FROM p5_parts\r\n" + 
					"WHERE parts_mc = 'CPU'";
			
			pstmt = con.prepareStatement(sql);
						
			rs = pstmt.executeQuery();
			while(rs.next()) {
				pList.add(new Parts(rs.getInt(1),
								    rs.getString(2),
								    rs.getInt(3),
								    rs.getString(4)
						));
			}
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cartList;
	}


	// proc del => 카트에서 제거
	public void deleteCart(Parts del) {
		try {
			setcon(); // Connection 객체가 메모리 로딩.
			String sql = "delete INTO @@조립목록@@ where 컴퓨터번호 = ? and 부품번호 = ?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "컴퓨터명");
			pstmt.setString(2, "부품명");
			
			pstmt.executeUpdate();
			con.commit();
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
	// proc delAll => 카트에서 모두제거
	public void deleteAllCart() {
		try {
			setcon(); // Connection 객체가 메모리 로딩.
			String sql = "DELETE @@조립목록@@ WHERE 컴퓨터번호 = ?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "컴퓨터명");
			pstmt.setString(2, "부품명");
			
			pstmt.executeUpdate();
			con.commit();
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
	// proc reg => 견적목록에 추가
	public void regEstimate(Parts reg) {
		try {
			setcon(); // Connection 객체가 메모리 로딩.
			String sql = "INSERT INTO @@견적목록@@ values(?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "컴퓨터명");
			
			pstmt.executeUpdate();
			con.commit();
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


	// proc ins => 테이블에 부품 추가
	public void insertCart(Parts ins) {
		try {
			setcon(); // Connection 객체가 메모리 로딩.
			String sql = "INSERT INTO p5_assembly values(?,?,?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getParts_com());
			pstmt.setInt(2, ins.getParts_no());
			pstmt.setInt(3, ins.getParts_cnt());
			
			pstmt.executeUpdate();
			con.commit();
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


	// proc first => 비회원member만들기
	public void regMem(String mem) {
		try {
			setcon(); // Connection 객체가 메모리 로딩.
			String sql = "INSERT INTO p5_member VALUES (?,'admin',' ',to_date('1990-01-01','YYYY-MM-DD'),' ',' ',to_date('2020-01-01','YYYY-MM-DD'))";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem);
			
			pstmt.executeUpdate();
			con.commit();
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


	// proc first => 비회원 견적용 computer만들기
	public void regCom(String mem) {
		try {
			setcon(); // Connection 객체가 메모리 로딩.
			String sql = "INSERT INTO p5_computer VALUES (p5_computer_seq.nextval, ?,'guest님의 컴퓨터','개인사양','PCCAT-USER01.jpg','',1000000)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem);
			
			pstmt.executeUpdate();
			con.commit();
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


	// proc first => 비회원 견적용 computer 번호 가져오기
	public int comNo(String mem){
		int com_no = 0;
		try {
			setcon();
			String sql = "SELECT max(com_no) FROM P5_COMPUTER  WHERE mem_id = ?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				com_no = rs.getInt(1);
			}
			
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return com_no;
	}	
		
	
	
	
	 
}

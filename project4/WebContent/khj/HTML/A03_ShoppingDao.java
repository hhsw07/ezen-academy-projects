package jspexp.b01_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.z01_vo.Emp;
import jspexp.z01_vo.Product;

/*
DAO(Database Access Object)
1. 온라인 쇼핑몰 물건 정보를 리스트 처리.
	1) 물건 물건 정보
		물건key, 종류, 물건명, 단가, 재고수량
2. 개발 순서
	1) 테이블 생성
	2) 물건 key를 위한 sequence 생성
	3) sql 만들기
	4) sql에 따른 VO 생성
	5) DB DAO 생성.
		0) 전역 field 객체 선언
			( Connection, Statement, ResultSet )
		1) 연결 공통 메서드 선언
		2) 조회하는 ArrayList<VO> 메서드 선언
			- 연결메서드 호출(예외처리)
			- Connection객체에 의해 만들어진 Statement로 sql 대화 처리
			- sql 대화의 결과로 ResultSet 받기.
			- while()을 활용하여 ArrayList<VO>에 담기와 return
			- 자원(객체메모리)의 반납 
				rs.close(), stmt.close(), conn.close();
		3) main()에서 테스트
	6) 웹 화면구현
		- import, 객체 DAO 생성
		- table에 for문으로 list 처리하기
		
		 
# 개발 처리하기.
1) 테이블 생성
	물건key, 종류, 물건명, 단가, 재고수량
	sno, kind, name, price, cnt
CREATE TABLE product(
	sno NUMBER,
	kind varchar2(30),
	name varchar2(100),
	price NUMBER,
	cnt NUMBER 
);	
2) 물건 key를 위한 sequence 생성	
CREATE SEQUENCE prod_seq
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	INCREMENT BY 1;

3) sql 만들기	
INSERT INTO product VALUES(prod_seq.nextval, '전자제품','삼성UHD TV', 1500000, 100);
INSERT INTO product VALUES(prod_seq.nextval, '식품류','사과', 2000, 3000);
INSERT INTO product VALUES(prod_seq.nextval, '식품류','바나나', 4000, 5000);
INSERT INTO product VALUES(prod_seq.nextval, '의류','남성 상의', 20000, 100);
SELECT * FROM product; 
4) sql에 따른 VO 생성		
*/
public class A03_ShoppingDao {
//	0) 전역 field 객체 선언
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

//	2) 조회하는 ArrayList<VO> 메서드 선언
	public ArrayList<Product> plist() {
		ArrayList<Product> plist = new ArrayList<Product>();
//		- 연결메서드 호출(예외처리)
		try {
			setConn();
//			- Connection객체에 의해 만들어진 Statement로 sql 대화 처리
			String sql = "SELECT * FROM product";
			stmt = con.createStatement();
//			- sql 대화의 결과로 ResultSet 받기.
			rs = stmt.executeQuery(sql);
//			ResultSet의 주요메서드
//			.next() : 행단위이동하면 다음 행에 데이터 있는지 여부(true/false)를 return
//			.getXXXX("컬럼명") .getXXXX(1) select의 순서 1,2,3
//			- while()을 활용하여 ArrayList<VO>에 담기와 return
			while (rs.next()) {
				plist.add(new Product(rs.getInt("sno"), rs.getString("kind"), rs.getString("name"), rs.getInt("price"),
						rs.getInt("cnt")));
			}
//			- 자원(객체메모리)의 반납 
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}

	public ArrayList<Product> plist(Product sch) {
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			setConn();

			/*
			 * # PreparedStatement 객체 활용.. 1. 목적. 1) 보안상 : sql injection의 방지.. sql을 동적인 문자열
			 * 조합에의 만들면 sql script를 통해 %, 또는 만들어지는 script를 입력하면 보안상에 문제가 발생한다. select * from
			 * member where id = 'himan' pass= 7777 ==> sql을 동적으로 변경시켜서 처리되게 하면 모든 계정과 데이터를
			 * 확인할 수 있게 된다. pass에 입력할 내용에 pass:[888 or 1=1] where id = 'himan' pass= 888 or
			 * 1=1 인증이 모두다 된다. 2) 속도개선. - db 서버 sql 컴파일 실행 새로운 sql 들어올 때, 동일한 sql은 기존 컴파일된
			 * 내용 을 실행. - select * from member where id = 'himan' pass= 7777 동적 query는 id,
			 * pass 바뀔 때 마다 재컴파일, select * from member where id = ? pass= ? 동일한 sql로 인식..
			 * param으로 컴파일 후, 데이터 전달 속도 개선 효과가 있다. 2. 사용방법. 1) sql에 변경될 데이터를 ?로 처리. 2)
			 * Statement ==> PreparedStatement로 처리. 3) ?의 갯수만큼 해당 내용에 들어 데이터
			 * pstmt.setXXX(?순위 index, 들어갈 데이터)
			 * 
			 */

//				stmt = con.createStatement();
			String sql = "SELECT * \r\n" + "FROM product\r\n" + "WHERE 1=1 \r\n" + "AND name LIKE '%'||?||'%'\r\n"
					+ "AND price BETWEEN ? AND ?\r\n" + "ORDER BY sno DESC ";
			pstmt = con.prepareStatement(sql);
			// ?에 순서에 따른 데이터 입력 처리.
			// sql를 먼저 넘기고, param으로 값을 매핑처리..
			pstmt.setString(1, sch.getName());
			pstmt.setInt(2, sch.getFrPrice());
			pstmt.setInt(3, sch.getToPrice());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				plist.add(new Product(rs.getInt("sno"), rs.getString("kind"), rs.getString("name"), rs.getInt("price"),
						rs.getInt("cnt")));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}

	public void insertProduct(Product ins) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "INSERT INTO product values(prod_seq.nextval,?,?,?,?)";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			// ?에 대한 mapping
			System.out.println("가격:" + ins.getPrice());
			pstmt.setString(1, ins.getKind());
			pstmt.setString(2, ins.getName());
			pstmt.setInt(3, ins.getPrice());
			pstmt.setInt(4, ins.getCnt());
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

	public Product getProduct(int sno) {
		Product pro = new Product();
		try {
			setConn();

			String sql = "SELECT * FROM product WHERE sno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				pro = new Product(rs.getInt("sno"), rs.getString("kind"), 
						rs.getString("name"), rs.getInt("price"),
						rs.getInt("cnt"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pro;
	}

	public void updateProduct(Product upt) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "UPDATE product \r\n" + 
					"	SET kind=?,\r\n" + 
					"		name=?,\r\n" + 
					"		price=?,\r\n" + 
					"		cnt=?\r\n" + 
					"	WHERE sno = ? ";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getKind());
			pstmt.setString(2, upt.getName());
			pstmt.setInt(3, upt.getPrice());
			pstmt.setInt(4, upt.getCnt());
			pstmt.setInt(5, upt.getSno());
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

	public void deleteProduct(int sno) {
		try {
			setConn(); // Connection 객체가 메모리 로딩.
			String sql = "DELETE FROM product WHERE sno=?";
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, sno);
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
		A03_ShoppingDao dao = new A03_ShoppingDao();
		System.out.println(dao.plist().size());
		// 바나나, 2000,4000
		Product sch = new Product(2000, 4000, "바나나");
		for (Product p : dao.plist(sch)) {
			System.out.print(p.getSno() + "\t");
			System.out.print(p.getKind() + "\t");
			System.out.print(p.getName() + "\t");
			System.out.print(p.getPrice() + "\t");
			System.out.print(p.getCnt() + "\n");
		}
	}

}

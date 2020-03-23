package vo_cmk;

import java.sql.*;
import java.util.ArrayList;

public class DB_Addr {
	private Connection conn;
	private Statement stat;
	private ResultSet rs;
	
	private void setConn() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		conn = DriverManager.getConnection(info, "scott", "tiger");
		System.out.println("정상접속성공");
	}
	// 배송지 목록 조회
	public ArrayList<VO_Addr> getAddrlist(){
		ArrayList<VO_Addr> addrlist = new ArrayList<VO_Addr>();
		try {
			setConn();
			String sql = "SELECT addr_no, addr_title, addr_name, addr_phone, \r\n" + 
					"	addr_mailAddr, addr_address, addr_address2\r\n" + 
					"FROM P04_ADDR\r\n" + 
					"WHERE MEM_ID = 'himan1'";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()) {
				addrlist.add(new VO_Addr(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6), rs.getString(7)));
			}
			rs.close();
			stat.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return addrlist;
	}
	
	// 배송지 추가
	public void insertAddr(VO_Addr ins) {
		try {
			setConn();
			String sql = "INSERT INTO p04_addr VALUES (p04_addr_seq.nextval,'himan1','"+ins.getAddr_title()+
					"','"+ins.getAddr_name()+"','"+ins.getAddr_phone()+"'," + "'"+ins.getAddr_phone2()+
					"','"+ins.getAddr_mailAddr()+"','"+ins.getAddr_address()+"','"+ins.getAddr_address2()+"')";
			conn.setAutoCommit(false);
			stat = conn.createStatement();
			
			stat.executeQuery(sql);
			conn.commit();
			
			stat.close();
			conn.close();
			System.out.println("등록성공!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	// 배송지 수정
	public VO_Addr getAddr(int addr_no) {
		VO_Addr addr = null;
		try {
			setConn();
			String sql = "SELECT addr_title, addr_name, addr_phone, addr_mailAddr, addr_address, addr_address2\r\n" + 
					"FROM P04_ADDR\r\n" + 
					"WHERE addr_no="+addr_no+"";
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);
			while(rs.next()) {
				addr = new VO_Addr(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getString(6),rs.getString(7));
			}
			rs.close();
			stat.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return addr;
	}
	public void updateAddr(VO_Addr upt) {
		try {
			setConn();
			String sql = "UPDATE P04_ADDR SET ADDR_TITLE='"+upt.getAddr_title()+"', ADDR_NAME='"+upt.getAddr_name()+"',\r\n" + 
					"	ADDR_PHONE='"+upt.getAddr_phone()+"', ADDR_PHONE2='"+upt.getAddr_phone2()+"',\r\n" + 
					"	ADDR_MAILADDR='"+upt.getAddr_mailAddr()+"', ADDR_ADDRESS='"+upt.getAddr_address()+"', ADDR_ADDRESS2='"+upt.getAddr_address2()+"'\r\n" + 
					"WHERE ADDR_NO="+upt.getAddr_no()+"";
			System.out.println(sql);
			conn.setAutoCommit(false);
			stat = conn.createStatement();
			stat.executeQuery(sql);
			conn.commit();
			stat.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	// 배송지 삭제
	public void deleteAddr(int addr_no) {
		try {
			setConn();
			String sql ="DELETE P04_ADDR \r\n" + 
					"WHERE addr_no="+addr_no+"";
			System.out.println(sql);
			conn.setAutoCommit(false);
			stat = conn.createStatement();
			stat.executeQuery(sql);
			conn.commit();
			stat.close();
			conn.close();
			System.out.println("삭제성공!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
			try {
				conn.rollback();
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
		DB_Addr db = new DB_Addr();
	}

}

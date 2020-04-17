package hsw;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Assembly;
import z01_vo.Nk;
import z01_vo.Parts;

public class A01_AssemblyService {
	private A01_AssemblyDao dao;
	
	public A01_AssemblyService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new A01_AssemblyDao();
	}
	// proc first => 비회원 member만들기
	public void regMem(String mem) {
		dao.regMem(mem);
	}
	// proc first => Computer 만들기
	public void regCom(String mem) {
		dao.regCom(mem);
	}
	// proc first => computer 번호 가져오기
	public int comNo(String mem) {
		return dao.comNo(mem);
	}
	// proc first => computer 마지막 번호가 임시인지,
	public boolean ckCom(int com_no) {
		return dao.ckCom(com_no);
	}
	
	
	// 초기화면
	public ArrayList<Parts> plist(){
		
		return dao.pList();
	}
	// proc sch => 검색화면
	public ArrayList<Parts> plist(HttpServletRequest request){
		String parts_mc = Nk.toStr(request.getParameter("parts_mc"),"CPU");
		String parts_sc1 = Nk.toStr(request.getParameter("parts_sc1"));
		String parts_sc2 = Nk.toStr(request.getParameter("parts_sc2"));
		String parts_sc3 = Nk.toStr(request.getParameter("parts_sc3"));
		String parts_sc4 = Nk.toStr(request.getParameter("parts_sc4"));
		String parts_sc5 = Nk.toStr(request.getParameter("parts_sc5"));
		String parts_sc6 = Nk.toStr(request.getParameter("parts_sc6"));
		
		return dao.pList(new Parts(parts_mc,parts_sc1,parts_sc2,parts_sc3,parts_sc4,parts_sc5,parts_sc6));
	}
	// 견적테이블에서 데이터유무 조회
	public boolean isCart(HttpServletRequest request, int com_no) {
		int parts_no = Nk.toInt(request.getParameter("parts_no"));
		Assembly ins = new Assembly(com_no, parts_no,1);
		
		return dao.cList(ins); 
	}
	
	// proc ins => 견적테이블에 추가
	public void insertCart(HttpServletRequest request, int com_no) {
		int parts_no = Nk.toInt(request.getParameter("parts_no"));
		Assembly ins = new Assembly(com_no, parts_no,1);
		dao.insertCart(ins);
	}
	// proc ins => 견적테이블 불러오기
	public ArrayList<Parts> cartList(int com_no){
		return dao.cartList(com_no);
	}

	// proc del => 견적테이블에서 제거
	public void deleteCart(int com_no,int parts_no) {
		dao.deleteCart(com_no,parts_no);
	}	
	
	// proc delAll => 견적테이블에서 모두제거
	public void deleteAllCart(int com_no) {
		dao.deleteAllCart(com_no);
	}
	// proc reg => 견적문의 테이블에 추가
	public void regEstimate(HttpServletRequest request) {
		int parts_com = Nk.toInt(request.getParameter("parts_com"));
		Parts reg = new Parts(parts_com,1);
		dao.regEstimate(reg);
	}
	// 수정 처리
	public void updateCart(HttpServletRequest request, int com_no) {
		int parts_no = Nk.toInt(request.getParameter("parts_no"));
		Assembly upt = new Assembly(com_no, parts_no,1);
		
		dao.updateCart(upt);
	}
	
	
}

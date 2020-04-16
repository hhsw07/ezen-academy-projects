package hsw;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Nk;
import z01_vo.Parts;

public class A01_AssemblyService {
	private A01_AssemblyDao dao;
	
	public A01_AssemblyService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new A01_AssemblyDao();
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
	// proc ins => 카트에 추가
	public void insertCart(HttpServletRequest request) {
		int parts_no = Nk.toInt(request.getParameter("parts_no"));
		int parts_com = Nk.toInt(request.getParameter("parts_com"));
		Parts ins = new Parts(parts_com, parts_no);
		
		dao.insertCart(ins);
	}
	// proc del => 카트에서 제거
	public void deleteCart(HttpServletRequest request) {
		int parts_no = Nk.toInt(request.getParameter("parts_no"));
		int parts_com = Nk.toInt(request.getParameter("parts_com"));
		Parts ins = new Parts(parts_com, parts_no);
		
		dao.insertCart(ins);
	}
	// proc delAll => 카트에서 모두제거
	public void deleteAllCart(HttpServletRequest request) {
		int parts_no = Nk.toInt(request.getParameter("parts_no"));
		int parts_com = Nk.toInt(request.getParameter("parts_com"));
		Parts ins = new Parts(parts_com, parts_no);
		
		dao.insertCart(ins);
	}
	// proc reg => 견적목록에 추가
	public void regEstimate(HttpServletRequest request) {
		int parts_com = Nk.toInt(request.getParameter("parts_com"));
		Parts reg = new Parts(parts_com,1);
		dao.regEstimate(reg);
	}
	
}

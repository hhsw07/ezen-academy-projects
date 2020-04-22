package khj;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Member;
import z01_vo.Nk;

public class A03_myPageService {

	private A03_myPageDao dao;
	
	public A03_myPageService() {
		super();
		dao = new A03_myPageDao();
	}
	// 수정 처리
	public void uptPw(HttpServletRequest request) {
		// 1. 수정할 요청값.
		String mem_id= Nk.toStr(request.getParameter("mem_id"));
		String mem_pw= Nk.toStr(request.getParameter("mem_pw"));
		// 2. VO에 요청값 할당.
		// 3. 수정 dao 호출 처리..
		dao.uptPw(new Member(mem_id, mem_pw));
	}	
	// 삭제처리 
	public void deleteMember(HttpServletRequest request) {
		String mem_id= Nk.toStr(request.getParameter("mem_id"));
		String mem_pw= Nk.toStr(request.getParameter("mem_pw"));
		
		dao.deleteMember(new Member(mem_id, mem_pw));
	}	
	// 상세화면 처리..
	public Member userInfo(HttpServletRequest request) {
		return dao.getMember(Nk.toStr(request.getParameter("mem_id")));
	}
}

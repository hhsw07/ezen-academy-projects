package khj;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Member;

public class A01_loginService {
	private A01_loginDao dao;
	public A01_loginService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new A01_loginDao();
	}
	// 로그인 했을 때, Member객체 return 처리하는 메서드 선언.
	public Member login(HttpServletRequest request) {
		String mem_id = request.getParameter("mem_id");
		if(mem_id==null) mem_id="";
		String mem_pw = request.getParameter("mem_pw");
		if(mem_pw==null) mem_pw="";
		// 요청값을 통한, db객체 확인
		return dao.login(new Member(mem_id,mem_pw));	
	}
}

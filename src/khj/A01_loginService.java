package khj;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import z01_vo.Member;
import z01_vo.Nk;

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
	public void insMem(HttpServletRequest request) {
		String mem_id = Nk.toStr(request.getParameter("mem_id"));
		String mem_pw = Nk.toStr(request.getParameter("mem_pw"));
		String mem_name = Nk.toStr(request.getParameter("mem_name"));
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		String birth = Nk.toStr(request.getParameter("mem_birth"));
		Date mem_birth = null;
		try {
			mem_birth = transFormat.parse(birth);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String mem_email= Nk.toStr(request.getParameter("mem_email"));
		String mem_tel= Nk.toStr(request.getParameter("mem_tel"));
		
		Member ins = new Member(mem_id, mem_pw, mem_name, mem_birth, mem_email, mem_tel);
				
		dao.insSignUpMember(ins);
	}
}

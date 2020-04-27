package khj;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
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
// public의 Member는 어디에 있는 Member를 얘기하는지 login은 어디에 있는 login을 말하는건지 이해가 되지 않음
// 다음 괄호안의 HttpServletRequest request는 HttpServletRequest서버에 요청한다(?)
	public Member login(HttpServletRequest request) {
		// mem_id는 getParameter로 요총한다 괄호안의 mem_id로(?)
		String mem_id = request.getParameter("mem_id");
		// mem_id가 null일 때, mem_id는 공백(?)
		if(mem_id==null) mem_id="";
		// 위 2줄의 코드는 String mem_id = Nk.toStr(request.getParameter("mem_id)); 와 같은의미
		String mem_pw = request.getParameter("mem_pw");
		if(mem_pw==null) mem_pw="";
		// 요청값을 통한, db객체 확인
		return dao.login(new Member(mem_id,mem_pw));	
	}
	// 회원가입
	// 위 로그인부분은 void를 사용하지 않고 회원가입부분은 왜 void를 사용하는지 어떤 차이가 있는건지
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
	// 아이디 찾기
	public Member findID(HttpServletRequest request) {
		String mem_name = request.getParameter("mem_name");
		if(mem_name==null) mem_name="";
		String mem_email = request.getParameter("mem_email");
		if(mem_email==null) mem_email="";
		return dao.findId(new Member(mem_name, mem_email));
	}
	// 회원가입 아이디 중복확인
	public boolean checkReg(String mem_id){
		return dao.memberCk(mem_id);
	}

}

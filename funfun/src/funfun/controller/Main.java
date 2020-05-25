package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.MainService;
import funfun.vo.MemberInfo;
import funfun.vo.MemberLogin;

@Controller
public class Main {
	
	@Autowired
	MainService service;
	
	
	// http://localhost:5080/funfun/main.do
	@RequestMapping("/main.do")
	public String moveMain(Model d) {
		System.out.println("메인화면 호출");
		return "WEB-INF\\views\\main/hj_main.jsp";
	}
	
	// http://localhost:5080/funfun/login.do
	@RequestMapping("/login.do")
	public String moveLogin() {
		
		return "WEB-INF\\views\\main\\hj_login.jsp";
	}
	
	// http://localhost:5080/funfun/signup.do
	@RequestMapping("/signup.do")
	public String moveSignUp() {
		
		return "WEB-INF\\views\\main\\hj_signup.jsp";
	}
	
	// http://localhost:5080/funfun/findaccount.do
	@RequestMapping("/findaccount.do")
	public String moveFindAccount() {
		return "WEB-INF\\views\\main\\hj_findAccount.jsp";
	}

	
	// http://localhost:5080/funfun/verification.do
	// 로그인 아이디비밀번호 정확한지 검증
	@RequestMapping("/verification.do")
	public String verificationId(MemberLogin m, Model d) {
		
		System.out.println("로그인 아이디 비밀번호 검증...");
		d.addAttribute("verification", service.verifyId(m));
		
		
		return "pageJsonReport";
	}
	
	//ȸ�����Խ� ���̵� �ߺ� üũ
	@RequestMapping("/signupIdCheck.do")
	public String signupIdCheck(@RequestParam("mem_email") String email, Model d) {
		d.addAttribute("verification", service.signupIdCheck(email));
		return "pageJsonReport";
	}
	
	@RequestMapping("/loginSuccess.do")
	public String loginSuccess(MemberLogin m, HttpServletRequest req) {
		HttpSession session = req.getSession();
		//로그인 성공 시 이메일로 멤버(이름, 이메일, 멤버코드, 메이커코드 정보 가져옴)
		//메이커가 아닌 경우 메이커코드에 -1 set
		MemberInfo memberInfo = service.getMemberInfo(m.getMem_email());
		System.out.println("메이커코드:"+memberInfo.getMaker_code());
		session.setAttribute("user", memberInfo);
		System.out.println("로그인성공");
		return "redirect:/main.do";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.removeAttribute("user");
		session.invalidate();
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/insertMember.do")
	public String createMember(MemberInfo m) {
		service.insertMember(m);
		
		return "redirect:/login.do";
	}
	
	@RequestMapping("/changePass.do")
	public String changePass(MemberInfo m, Model d) {
		
		d.addAttribute("result", service.changePass(m));
		return "pageJsonReport";
	}
}

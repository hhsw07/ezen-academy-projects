package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import funfun.service.MainService;
import funfun.vo.MemberLogin;

@Controller
public class AndroidLoginCtrl {
	
	@Autowired
	MainService service;
	
	
	//로그인에 사용
	@RequestMapping("/androidlogin.do")
	@ResponseBody
	public String verificationId(MemberLogin m) {
		
		System.out.println("안드로이드 로그인 아이디 비밀번호 검증...");
		boolean result;
		String mem_email;
		
		result=service.verifyId(m);
		mem_email=m.getMem_email();
		String str="{\"result\":"+result+", \"mem_email\":\""+mem_email+"\"}";
			
		return str;
	}
	
//	//가입여부 확인
//	@RequestMapping("/isSignup.do")
//	@ResponseBody
//	public String isSignup(MemberLogin m) {
//		boolean serviceResult=service.signupIdCheck(m.getMem_email());
//		
//		String result="{\"result\":"+serviceResult+"}";
//		return result;
//	}
}

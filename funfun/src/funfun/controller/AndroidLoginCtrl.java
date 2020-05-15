package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.MainService;
import funfun.vo.MemberLogin;

@Controller
public class AndroidLoginCtrl {
	
	@Autowired
	MainService service;
	
	@RequestMapping("/androidlogin.do")
	public String verificationId(MemberLogin m, Model d) {
		
		System.out.println("안드로이드 로그인 아이디 비밀번호 검증...");
		
		if(service.verifyId(m)==true) {
			d.addAttribute("result", true);
			d.addAttribute("mem_email", m.getMem_email());
		} else {
			d.addAttribute("result", false);
			d.addAttribute("mem_email", m.getMem_email());
		}
			
		return "pageJsonReport";
	}
}

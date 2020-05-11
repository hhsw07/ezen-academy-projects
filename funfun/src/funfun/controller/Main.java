package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main {
	
	
	// http://localhost:5080/funfun/main.do
	@RequestMapping("/main.do")
	public String moveMain(Model d, HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		
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
	
	@RequestMapping("/findaccount.do")
	public String moveFindAccount() {
		return "WEB-INF\\views\\main\\hj_findAccount.jsp";
	}
}

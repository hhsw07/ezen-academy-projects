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
		session.setAttribute("user", "funfun123");
		
		return "WEB-INF\\views\\main/hj_main.jsp";
	}
}

package funfun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main {
	
	@RequestMapping("/main.do")
	public String moveMain(Model d) {
		
		return "WEB-INF\\views\\hj_main.jsp";
	}
}

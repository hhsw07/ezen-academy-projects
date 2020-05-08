package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class Test {
		
	// http://localhost:5080/funfun/test.do?
	@RequestMapping("/test.do")
	public String test(Model d) {
		
		d.addAttribute("test1", "test.테스트.");
		return "WEB-INF\\views\\test\\testpage.jsp";
	}
}
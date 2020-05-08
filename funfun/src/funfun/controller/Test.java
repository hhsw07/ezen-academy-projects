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
		
<<<<<<< HEAD
		d.addAttribute("test1", "테스트입니다");
=======
		d.addAttribute("test1", "test.테스트.");
>>>>>>> bb85614784b28a0e41354d524a324aa50d4169f9
		return "WEB-INF\\views\\test\\testpage.jsp";
	}
}
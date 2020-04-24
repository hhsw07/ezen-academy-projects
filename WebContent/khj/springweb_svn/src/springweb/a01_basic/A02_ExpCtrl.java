package springweb.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
// springweb.a01_basic.A02_ExpCtrl
@Controller
public class A02_ExpCtrl {
// 	http://localhost:5080/springweb/exp02.do?num01=25&num02=30
//  화면 출력 : 25 + 30 = 55 
	@RequestMapping("/exp02.do")
	public String exp02(@RequestParam("num01") int num01,
						@RequestParam("num02") int num02,
						Model d) {
		d.addAttribute("sum", num01+num02);
		return "WEB-INF\\views\\a01_basic\\a03_exp.jsp";
	}
// ex) login 화면 
//     id, pass 입력   인증 여부 처리 
	
	
	
	
}

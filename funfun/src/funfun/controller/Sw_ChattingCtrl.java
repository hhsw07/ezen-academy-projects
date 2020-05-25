package funfun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Sw_ChattingCtrl {
	
	// http://localhost:5080/funfun/chatting.do
	@RequestMapping("/chatting.do")
	public String chatting() {
		return "WEB-INF\\views\\servicecenter\\sw_chatting.jsp";
	}
}

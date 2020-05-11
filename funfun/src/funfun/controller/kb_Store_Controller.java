package funfun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class kb_Store_Controller {
	
	@RequestMapping("storeList.do")
	public String storeList() {
		return "WEB-INF\\views\\Store\\kb_w_user_StoreList.jsp";
	}
}

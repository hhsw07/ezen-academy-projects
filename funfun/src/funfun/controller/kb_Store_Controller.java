package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.KB_StoreService;

@Controller
public class kb_Store_Controller {
	@Autowired(required=false)
	KB_StoreService service;
	@RequestMapping("storeList.do")
	public String storeList(Model d) {
		d.addAttribute("slist", service.slist());
		return "WEB-INF\\views\\Store\\kb_w_user_StoreList.jsp";
	}
	
}

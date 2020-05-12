package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.sh_myPageService;
import funfun.vo.Favor;


@Controller
@RequestMapping("/mypage.do")
public class sh_myPageCtrl {
	// http://localhost:5542/funfun/mypage.do?method=info
	@Autowired(required=false)
	private sh_myPageService service;
	
	@RequestMapping(params="method=info")
	public String list(@ModelAttribute("favor") Favor favor, Model d) {

		d.addAttribute("flist", service.list(favor));

		System.out.println("컨트롤러");
		System.out.println("flist : "+service.list(favor));
		return "WEB-INF\\views\\myPage\\sh_user_w_myPage.jsp";
	}
}

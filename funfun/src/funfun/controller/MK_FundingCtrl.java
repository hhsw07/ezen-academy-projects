package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.MK_FundingService;
import funfun.vo.Project;

@Controller
@RequestMapping("/funding.do")
public class MK_FundingCtrl {
	@Autowired(required=false)
	private MK_FundingService service;
	
	// http://localhost:5080/funfun/funding.do?method=list
	@RequestMapping(params="method=list")
	public String projectList(Model d) {
		d.addAttribute("plist", service.projectList());
		return "WEB-INF\\views\\funding\\mk_user_w_projectList.jsp";
	}

}

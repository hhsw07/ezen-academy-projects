package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.Sw_AdminMakerService;
import funfun.vo.AdminMaker;
import funfun.vo.Paging;

@Controller
@RequestMapping("/AdminMaker.do")
public class Sw_AdminMakerCtrl {
	@Autowired(required=false)
	private Sw_AdminMakerService service;
	
	// http://localhost:5080/funfun/AdminMaker.do?method=list
	@RequestMapping(params="method=list")
	public String list(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("list",service.list(sch));
		return "WEB-INF\\views\\admin\\projectManagement.jsp";
	}
	// http://localhost:5080/funfun/AdminMaker.do?method=ajaxlist&curPage=1&pageSize=5
	@RequestMapping(params="method=ajaxlist")
	public String ajaxlist(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("list",service.list(sch));
		return "pageJsonReport";
	}
	
	// http://localhost:5080/funfun/AdminMaker.do?method=detail
	@RequestMapping(params="method=detail")
	public String detail(@ModelAttribute("AdminProject") AdminMaker AdminProject, Model d) {
		d.addAttribute("AdminProject", service.detail(AdminProject.getPro_code()));
		return "WEB-INF\\views\\admin\\memberManagement_Detail.jsp";
	}

	@RequestMapping(params="method=update")
	public String update(AdminMaker upt) {
		//service.update(upt);
		System.out.println("AdminProject 수정완료");
		return "forward:/AdminMember.do?method=detail&noti_code+"+upt.getPro_code();
	}
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("noti_code") int noti_code) {
		//service.delete(noti_code);
		System.out.println("AdminProject 삭제완료");
		return "redirect:/AdminMember.do?method=admList";
	}
	
}

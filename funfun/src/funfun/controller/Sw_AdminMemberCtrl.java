package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.Sw_AdminMemberService;
import funfun.vo.AdminMember;
import funfun.vo.Paging;

@Controller
@RequestMapping("/AdminMember.do")
public class Sw_AdminMemberCtrl {
	// http://localhost:5080/funfun/AdminMember.do?method=list
	// http://localhost:5080/funfun/AdminMember.do?method=detail
	// http://localhost:5080/funfun/AdminMember.do?method=update
	// http://localhost:5080/funfun/AdminMember.do?method=delete
	@Autowired(required=false)
	private Sw_AdminMemberService service;
	
	// http://localhost:5080/funfun/AdminMember.do?method=list
	@RequestMapping(params="method=list")
	public String list(@ModelAttribute("paging") Paging sch, Model d) {
		//d.addAttribute("list",service.list(sch));
		return "WEB-INF\\views\\admin\\memberManagement.jsp";
	}
	// http://localhost:5080/funfun/AdminMember.do?method=ajax?curPage=1&pageSize=5
	@RequestMapping(params="method=ajax")
	public String ajax(@RequestParam("curPage") int curPage,
			 		   @RequestParam("pageSize") int pageSize, Model d) {
		Paging sch = new Paging();
		sch.setCurPage(curPage);
		sch.setPageSize(pageSize);
		d.addAttribute("list",service.list(sch));
		return "pageJsonReport";
	}
	
	
	
	// http://localhost:5080/funfun/AdminMember.do?method=detail
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("mem_code") int mem_code, Model d) {
		d.addAttribute("AdminMember", service.detail(mem_code));
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_noticeDetail.jsp";
	}

	@RequestMapping(params="method=update")
	public String update(AdminMember upt) {
		//service.update(upt);
		System.out.println("AdminMember 수정완료");
		return "forward:/AdminMember.do?method=detail&noti_code+"+upt.getMem_code();
	}
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("noti_code") int noti_code) {
		//service.delete(noti_code);
		System.out.println("AdminMember 삭제완료");
		return "redirect:/AdminMember.do?method=admList";
	}
	
}

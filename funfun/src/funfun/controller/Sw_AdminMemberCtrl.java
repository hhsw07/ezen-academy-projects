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
	@Autowired(required=false)
	private Sw_AdminMemberService service;
	
	// http://localhost:5080/funfun/AdminMember.do?method=list
	@RequestMapping(params="method=list")
	public String list(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("list",service.list(sch));
		return "WEB-INF\\views\\admin\\memberManagement.jsp";
	}
	// http://localhost:5080/funfun/AdminMember.do?method=ajaxlist&curPage=1&pageSize=5
	@RequestMapping(params="method=ajaxlist")
	public String ajaxlist(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("list",service.list(sch));
		return "pageJsonReport";
	}
	
	// http://localhost:5080/funfun/AdminMember.do?method=detail
	@RequestMapping(params="method=detail")
	public String detail(@ModelAttribute("AdminMember") AdminMember AdminMember, Model d) {
		d.addAttribute("AdminMember", service.detail(AdminMember.getMem_code()));
		return "WEB-INF\\views\\admin\\memberManagement_Detail.jsp";
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
	
	
	@RequestMapping(params="method=excel")
	public String excel(Model d) {
		Paging sch = new Paging();
		sch.setPageSize(service.AdminMemberCnt());
		System.out.println("데이터 크기:"+service.list(sch).size());
		d.addAttribute("memlist", service.list(sch));
		//return "pageJsonReport"; // json 호출
		return "excelViewer"; // View 호출
	}
}

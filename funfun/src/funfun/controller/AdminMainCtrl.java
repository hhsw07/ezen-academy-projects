package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.KB_StoreService;
import funfun.vo.Paging;
import funfun.vo.Project;
import funfun.vo.RewardStore;
import funfun.service.*;

@Controller
public class AdminMainCtrl {
	
	@Autowired(required=false)
	KB_StoreService kb_service;
	@Autowired(required=false)
	KB_adminService kb_admin_service;
	@RequestMapping(value="/admin-main.do")
	public String enterMain() {
		return "WEB-INF\\views\\admin\\adminMain.jsp";
	}
	
	@RequestMapping(value="/admin.do")
	public String enterAminLogin() {
		return "WEB-INF\\views\\admin\\adminLogin.jsp";
	}
	
	@RequestMapping(value="/admin-management.do")
	public String enterAdminManagement() {
		return "WEB-INF\\views\\admin\\adminManagement.jsp";
	}
	
	@RequestMapping(value="/project-management.do")
	public String enterProjectManagement(Paging sch, Model d) {
		d.addAttribute("plist", kb_admin_service.projectList(sch));
		return "WEB-INF\\views\\admin\\projectManagement.jsp";
	}
	
	@RequestMapping(value="/project-report-management.do")
	public String enterProjectReportManagement() {
		
		return "WEB-INF\\views\\admin\\projectReportManagement.jsp";
	}
	
	@RequestMapping(value="/customer-service-management.do")
	public String enterCustomerService() {
		return "redirect:/notice.do?method=admList";
	}
	
	@RequestMapping(value="/maker-management.do")
	public String enterMakerManagement() {
		return "redirect:/AdminMaker.do?method=list";
	}
	
	@RequestMapping(value="/reward-store-management.do")
	public String enterRewardStoreManagement(Paging sch, Model d) {
		
		d.addAttribute("slist", kb_service.adminList(sch));
		return "WEB-INF\\views\\admin\\rewardStoreManagement.jsp";
	}
	
	@RequestMapping(value="/member-management.do")
	public String enterMemberManagement() {
		// 회원목록 조회
		// 회원상세 내용
		// 회원상태(정상,제제,제명) 관리
		return "redirect:/AdminMember.do?method=list";
	}
	
	@RequestMapping(value="/store-update-curr.do")
	public String stocurrUpt(RewardStore rs) {
		kb_service.UptCurr(rs);
		return "redirect:/reward-store-management.do";
	}
	
	@RequestMapping(value="/project-detail.do")
	public String proDetail(int pro_code, Model d) {
		d.addAttribute("detail", kb_admin_service.proDetail(pro_code));
		
		return "pageJsonReport";
	}
	
	@RequestMapping(value="project-update-curr.do")
	public String proCurrUpt(Project pro) {
		kb_admin_service.UptCurr(pro);
		
		return "redirect:/project-management.do";
	}
}

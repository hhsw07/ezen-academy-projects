package funfun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainCtrl {
	
	
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
	public String enterProjectManagement() {
		return "WEB-INF\\views\\admin\\projectManagement.jsp";
	}
	
	@RequestMapping(value="/customer-service-management.do")
	public String enterCustomerService() {
		return "WEB-INF\\views\\admin\\customerServiceManagement.jsp";
	}
	
	@RequestMapping(value="/maker-management.do")
	public String enterMakerManagement() {
		return "WEB-INF\\views\\admin\\makerManagement.jsp";
	}
	
	@RequestMapping(value="/reward-store-management.do")
	public String enterRewardStoreManagement() {
		return "WEB-INF\\views\\admin\\rewardStoreManagement.jsp";
	}
	
	@RequestMapping(value="/member-management.do")
	public String enterMemberManagement() {
		return "WEB-INF\\views\\admin\\memberManagement.jsp";
	}
}

package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.HT_StoreManageService;

@Controller
@RequestMapping("/Store.do")
public class HT_StoreManageCtrl {

	@Autowired(required=false)
	private HT_StoreManageService service;
	
	@RequestMapping(params="method=storeReg")
	public String storeReg() {
		return "";
	}

	@RequestMapping(params="method=storeOrderManage")
	public String storeOrderManage() {
		return "";
	}

	@RequestMapping(params="method=storeQnAManage")
	public String storeQnAManage(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		int storeCode = (int)session.getAttribute("storeCode");
		d.addAttribute("storeQnAList", service.storeQnAList(storeCode));
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeQnAManage.jsp";
	}
}

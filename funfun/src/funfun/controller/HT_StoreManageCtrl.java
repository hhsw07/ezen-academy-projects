package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.HT_StoreManageService;
import funfun.vo.Store;
import funfun.vo.storeQnA;
import funfun.vo.storeOption;

@Controller
@RequestMapping("/Store.do")
public class HT_StoreManageCtrl {

	@Autowired(required=false)
	private HT_StoreManageService service;
	
	
	@RequestMapping(params="method=storeOpenReg")
	public String storeOpenReg() {
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeOpenReg.jsp";
	}
	
	@RequestMapping(params="method=storeOpenStart")
	public String storeOpenStart(HttpServletRequest request, Store sto) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		sto.setPro_code(projectCode);
		service.storeOpenStart(sto);
		session.setAttribute("storeCode", service.getStoreCode());
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeRegReady.jsp"; 
	}
	
	@RequestMapping(params="method=storeBasicInfo")
	public String storeBasicInfo() {
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeBasicInfoReg.jsp";
	}
	
	@RequestMapping(params="method=storeBasicInfoReg")
	public String storeBasicInfoReg(HttpServletRequest request, Store sto) {
		HttpSession session = request.getSession();
		int storeCode = (int)session.getAttribute("storeCode");
		sto.setSto_code(storeCode);
		service.storeBasicInfoReg(sto);
		System.out.println("기본정보 등록 프로세스 완료");
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeRegReady.jsp";
	}
	
	
	@RequestMapping(params="method=storeOption")
	public String storeOption(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		int storeCode = (int)session.getAttribute("storeCode");
		d.addAttribute("proOptList", service.getProOptList(projectCode));
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeOptionReg.jsp";
	}
	
	@RequestMapping(params="method=storeRegReady")
	public String storeRegReady(HttpServletRequest request, Store sto) {
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeRegReady.jsp"; 
	}
	
	@RequestMapping(params="method=storeOptionReg")
	public String storeOptionReg(HttpServletRequest request, storeOption sto) {
		HttpSession session = request.getSession();
		int storeCode = (int)session.getAttribute("storeCode");
		System.out.println("스토어옵션등록됨??");
		sto.setSto_code(storeCode);
		return "redirect:/Store.do?method=storeOption";
	}
	
	
	
	@RequestMapping(params="method=storeOpenRegSubmit")
	public String storeOpenRegSubmit() {
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeOpenRegSubmit.jsp";
	}
	
	@RequestMapping(params="method=storeOpenRegConfirm")
	public String storeOpenRegConfirm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int storeCode = (int)session.getAttribute("storeCode");
		service.storeOpenRegConfirm(storeCode);
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_proCurrent.jsp";
	}
	
	
	@RequestMapping(params="method=storeOrderManage")
	public String storeOrderManage(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		session.getAttribute("user");
		int storeCode = (int)session.getAttribute("storeCode");
		d.addAttribute("orderList", service.orderList(storeCode));
		System.out.println("주문 관리 storeCode : "+ storeCode);
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeOrderManage.jsp";
	}

	@RequestMapping(params="method=storeQnAManage")
	public String storeQnAManage(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		session.getAttribute("user");
		int storeCode = (int)session.getAttribute("storeCode");
		d.addAttribute("storeQnAList", service.storeQnAList(storeCode));
		return "WEB-INF\\views\\storeManage\\ht_user_w_MS_storeQnAManage.jsp";
	}
	
	@RequestMapping(params="method=storeQnAAnsReg")
	public String storeQnAAnsReg(int qna_code, storeQnA qna) {
		System.out.println("스토어 답변 등록 : "+qna_code);
		qna.setQna_code(qna_code);
		service.storeQnAAnsReg(qna);
		return "redirect:/Store.do?method=storeQnAManage";
	}
	
}

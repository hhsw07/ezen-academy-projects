package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.sh_accountService;
import funfun.vo.Deposit;
import funfun.vo.MemberInfo;
import funfun.vo.UserProfile;

@Controller
public class sh_accountCtrl {
	@Autowired(required=false)
	private sh_accountService service;
	
	@RequestMapping("/myaccount.do")
	public String blist(HttpServletRequest request, Model d) {
		 
		 HttpSession session = request.getSession(); 
		 MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		 if(memberinfo==null) {
			 
		 }else {
			 if(service.blist(memberinfo.getMem_email())==null) {
				 
			 }else {
				 d.addAttribute("blist",service.blist(memberinfo.getMem_email()));
				 d.addAttribute("clist",service.clist(memberinfo.getMem_email()));
			 }
		 }
		 
		return "WEB-INF\\views\\myPage\\sh_user_w_charge.jsp";
	}
	@RequestMapping("/myaccount.do/chargeQuery.do")
	public String chargeQuery(@RequestParam("chargeQuery") String chargeQueryAmount, HttpServletRequest request, Model d) {
		 
		 HttpSession session = request.getSession(); 
		 MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		 
		 if(memberinfo==null) {
			 
		 }else {
			UserProfile uf = new UserProfile();
			uf.setChargeQueryAmount(chargeQueryAmount);
			uf.setMemEmail(memberinfo.getMem_email());
			service.chargeQuery(uf);
			
			Deposit ds = new Deposit();
			ds.setMemEmail(memberinfo.getMem_email());
			ds.setAmount(chargeQueryAmount);
			service.uptDeposit(ds);
			d.addAttribute("rdlist",service.rdlist(ds));
		 }
		 
		return "redirect:/myaccount.do";
	}
}

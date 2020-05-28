package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.sh_secessionService;
import funfun.vo.MemberInfo;

@Controller
public class sh_secessionCtrl {
	@Autowired(required=false)
	private sh_secessionService service;

	
	@RequestMapping("/secession.do")
	public String mlist(HttpServletRequest request, Model d) {
		 
		 HttpSession session = request.getSession(); 
		 MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		 if(memberinfo==null) {
			 
		 }else {
			 d.addAttribute("memEmail",memberinfo.getMem_email());
		 }
		 
		return "WEB-INF\\views\\myPage\\sh_user_w_secession.jsp";
	}
	@RequestMapping("/secession.do/finalPrc.do")
	public String finalPrc(HttpServletRequest request, @RequestParam("memEmail") String memEmail, Model d) {
		 
		 HttpSession session = request.getSession(); 
		 MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		 if(memberinfo==null) {
			 
		 }else {
			 service.finalPrc(memEmail);
			 session.invalidate();
		 }
		 
		return "redirect:/main.do";
	}
}

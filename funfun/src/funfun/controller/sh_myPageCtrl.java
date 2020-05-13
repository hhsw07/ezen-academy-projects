package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.sh_myPageService;
import funfun.vo.Favor;
import funfun.vo.MemberInfo;

@Controller
public class sh_myPageCtrl {
	// http://localhost:5542/funfun/mypage.do
	@Autowired(required=false)
	private sh_myPageService service;
	
	@RequestMapping("/mypage.do")
	public String list(HttpServletRequest request, Model d) {
		
		 HttpSession session = request.getSession();
		  
		 MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		 if(memberinfo==null) {
			 
		 }else {
			 d.addAttribute("flist", service.list(memberinfo.getMem_email()));
			 d.addAttribute("plist", service.plist(memberinfo.getMem_email()));
		 }
		 	
		return "WEB-INF\\views\\myPage\\sh_user_w_myPage.jsp";
	}
}

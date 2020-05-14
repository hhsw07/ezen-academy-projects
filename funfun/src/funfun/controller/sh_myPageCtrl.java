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
	// http://localhost:1254/funfun/mypage.do
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
			 d.addAttribute("tlist", service.tlist(memberinfo.getMem_email()));
			 if(service.memState(memberinfo.getMem_email())==null) {
				 d.addAttribute("memState", "서포터회원");
			 }else {
				 d.addAttribute("memState", "메이커회원");
			 }
			 d.addAttribute("fundCnt", service.fundCnt(memberinfo.getMem_email()));
			 d.addAttribute("orderCnt", service.orderCnt(memberinfo.getMem_email()));
			 d.addAttribute("meminfo", service.mypageinfo(memberinfo.getMem_email()));
		 }
		 	
		return "WEB-INF\\views\\myPage\\sh_user_w_myPage.jsp";
	}
}

package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.sh_profileEditService;
import funfun.vo.MemberInfo;

@Controller
public class sh_profileEditCtrl {
	@Autowired(required=false)
	private sh_profileEditService service;
	
	@RequestMapping("/profileEdit.do")
	public String mlist(HttpServletRequest request, Model d) {
		 
		 HttpSession session = request.getSession(); 
		 MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		 if(memberinfo==null) {
			 
		 }else {
			 d.addAttribute("mlist",service.mlist(memberinfo.getMem_email()));
		 }
		 
		return "WEB-INF\\views\\myPage\\sh_user_w_userProfile.jsp";
	}
}

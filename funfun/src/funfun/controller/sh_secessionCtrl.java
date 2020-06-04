package funfun.controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.sh_secessionService;
import funfun.vo.MemberInfo;
import funfun.vo.sesessionMail;

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
	// 인증 메일 발송
	@RequestMapping("/sendEmail.do")
	public String send(HttpServletRequest request,Model d) throws MessagingException {
		HttpSession session = request.getSession(); 
		 MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		 if(memberinfo==null) {
			 
		 }else {
			 sesessionMail send = new sesessionMail();
			 send.setSubject("회원 탈퇴 인증 메일");
			 send.setReceiver(memberinfo.getMem_email());
			 send.setNo("1234");
			 String no = send.getNo();
			 send.setRegdate("2020-06-04");
			 send.setContent("<p>아래의 인증 번호를 입력한후 회원 탈퇴 버튼 클릭시 탈퇴가 완료 됩니다</p>\r\n" + 
			 		"	<p>인증 번호 "+no+" </p>");
			 service.sendMail(send);
			 d.addAttribute("no",no);
		 }
		
		return "pageJsonReport";
	}
}

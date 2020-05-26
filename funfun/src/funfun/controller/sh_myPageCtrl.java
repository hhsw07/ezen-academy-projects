package funfun.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.sh_myPageService;
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
	
		@RequestMapping("/changeAdr.do")
		public String changeAdr(@RequestParam("oc") String oc,@RequestParam("newAdr") String newAdr) {
			HashMap<String,String> hm = new HashMap<>();
			hm.put("oc", oc);
			hm.put("newAdr", newAdr);
			service.changeAdr(hm);
			return "forward:/mypage.do";
		}
		
		@RequestMapping("/changeFundingAdr.do")
		public String changeFundingAdr(@RequestParam("fc") String fc,@RequestParam("newAdr2") String newAdr2) {
			System.out.println("컨트롤러 접근");
			System.out.println(fc);
			System.out.println(newAdr2);
			HashMap<String,String> hm2 = new HashMap<>();
			hm2.put("fc", fc);
			hm2.put("newAdr2", newAdr2);
			service.changeFundingAdr(hm2);
			return "redirect:/mypage.do";
		}
		
		@RequestMapping("/cancleOrder.do")
		public String cancelOrder(@RequestParam("ocCancle") String oc) {
			service.cancelOrder(oc);
			return "redirect:/mypage.do";
		}
		
		@RequestMapping("/cancleFunding.do")
		public String cancelFunding(@RequestParam("fcCancle") String fc) {
			service.cancelFunding(fc);
			return "redirect:/mypage.do";
		}
		
		@RequestMapping("/deleteFavor.do")
		public String deleteFavor(@RequestParam("pc") String pc, HttpServletRequest request) {
			System.out.println(pc);
				HttpSession session = request.getSession();
				  
				MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
				if(memberinfo==null) {
					 
				}else {
					HashMap<String,String> hmDF = new HashMap<>();
					hmDF.put("pc", pc);
					hmDF.put("memEmail", memberinfo.getMem_email());
					service.deleteFavor(hmDF);
				}	
			
			return "redirect:/mypage.do";
		}
		
}

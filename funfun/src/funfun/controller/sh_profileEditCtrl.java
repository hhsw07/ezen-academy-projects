package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import funfun.service.sh_profileEditService;
import funfun.util.Uploader;
import funfun.vo.MemberInfo;
import funfun.vo.UserProfile;

@Controller
public class sh_profileEditCtrl {
	@Autowired(required=false)
	private sh_profileEditService service;
	
	Uploader uploader;
	
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
	
	@RequestMapping("/profileEdit.do/changeProfile.do")
	public String changeProfile(@RequestParam("profileImg") MultipartFile[] profileImg,@RequestParam("favorChk") String[] favorChk,HttpServletRequest request, @ModelAttribute("uf") UserProfile uf, Model d) {
		
		HttpSession session = request.getSession(); 
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		String memFavor="";
		if(memberinfo==null) {
			 
		}else {
			for(int i = 0; i<favorChk.length;i++) {
				if(i==0) {
					memFavor = favorChk[i]+",";
				}else if(i+1==favorChk.length){
					memFavor += favorChk[i];
				}else {
					memFavor += favorChk[i]+",";
				}
				
			}
			uf.setMemEmail(memberinfo.getMem_email());
			uf.setMemFavor(memFavor);
			service.changeProfile(uf);
			uploader=new Uploader();
			System.out.println("파일업로드처리");
			String result = uploader.upload(profileImg[0]);
			System.out.println("result : "+result);
			session.setAttribute("new_profile", result);
		}
		 
		return "redirect:/mypage.do";
	}
	
}

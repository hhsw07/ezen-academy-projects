package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.HT_MSService;
import funfun.service.MainService;
import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.MemberLogin;
import funfun.vo.Project;

@Controller
@RequestMapping("/MakerStudio.do")
public class HT_MSCtrl {

	// http://localhost:6080/funfun/MakerStudio.do?method=makerReg
	// http://localhost:6080/funfun/MakerStudio.do?method=makerReg_done
	// http://localhost:6080/funfun/MakerStudio.do?method=myProject

	@Autowired(required=false)
	private HT_MSService service;
	
	
	@RequestMapping(params="method=makerReg")
	public String regForm() {
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerReg.jsp";
	}
	
	@RequestMapping(params="method=makerReg_done")
	public String regDone(HttpServletRequest request,MakerStudio reg) {
		HttpSession session = request.getSession();
		service.regMaker(reg);
		session.setAttribute("makerInfo", reg);
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerReg_done.jsp";
	}
	
	@RequestMapping(params="method=myProject")
	public String myProjectList(HttpServletRequest request, Model d) {
		
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		
		if (memberinfo==null) {
			System.out.println("에러페이지 뜸???");
			return "WEB-INF\\views\\makerstudio\\ht_user_MS_non-member-error.jsp";
		} else {
			d.addAttribute("list", service.myProjectList(memberinfo.getMem_code()));
			return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_myProject.jsp";
		}
		
	}
	
	@RequestMapping(params="method=makerInfo")
	public String proRegMakerInfo() {
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerInfo.jsp";
	}

	@RequestMapping(params="method=proQna")
	public String proQna() {
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_proQna.jsp";
	}
	
}

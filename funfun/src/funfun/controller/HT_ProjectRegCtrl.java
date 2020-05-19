package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.HT_ProjectRegService;
import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.Project;

@Controller
@RequestMapping("/ProjectReg.do")
public class HT_ProjectRegCtrl {
	
	@Autowired(required=false)
	private HT_ProjectRegService service;
	
	// http://localhost:6080/funfun/ProjectReg.do?method=ready

	
	@RequestMapping(params="method=ready")
	public String proReady(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		session.setAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_basicReq.jsp";
	}
	
	
	@RequestMapping(params="method=proCreate")
	public String proCreate(HttpServletRequest request, Model d, Project cre) {
		HttpSession session = request.getSession();
		MakerStudio makerinfo = (MakerStudio)session.getAttribute("makerInfo");
		d.addAttribute("makerInfo", service.makerInfo(makerinfo.getMaker_code()));
		System.out.println(makerinfo.getMaker_code());
		cre.setMaker_code(makerinfo.getMaker_code());
		service.proCreate(cre);
		session.setAttribute("proInfo", cre);

		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	
	

	@RequestMapping(params="method=basicReq")
	public String proRegBasicReq(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		Project projectinfo = (Project)session.getAttribute("proInfo");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		session.setAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_basicReq.jsp";
	}		
	
	
	@RequestMapping(params="method=basicInfo")
	public String proRegBasicInfo(HttpServletRequest request, Model d, Project cre) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		Project projectinfo = (Project)session.getAttribute("proInfo");
		System.out.println("basicInfo : " + projectinfo.getPro_code());
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		session.setAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_basicInfo.jsp";
	}
	
	@RequestMapping(params="method=basicInfoReg")
	public String proRegBasicInfoReg(HttpServletRequest request, Model d, Project cre) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		Project projectinfo = (Project)session.getAttribute("proInfo");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		System.out.println("basicInfoReg : " + projectinfo.getPro_code());
		cre.setPro_code(projectinfo.getPro_code());
		service.proBasicInfo(cre);
		session.setAttribute("proInfo", cre);
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	

	@RequestMapping(params="method=story")
	public String proRegStory(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		Project projectinfo = (Project)session.getAttribute("proInfo");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_story.jsp";
	}
	@RequestMapping(params="method=reward")
	public String proRegReward(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		Project projectinfo = (Project)session.getAttribute("proInfo");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_reward.jsp";
	}

	@RequestMapping(params="method=risk")
	public String proRegRisk(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		Project projectinfo = (Project)session.getAttribute("proInfo");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_risk.jsp";
	}

}

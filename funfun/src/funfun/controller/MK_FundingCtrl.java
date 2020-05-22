package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.MK_FundingService;
import funfun.vo.Paging;
import funfun.vo.Project;
import funfun.vo.ProjectSch;

@Controller
@RequestMapping("/funding.do")
public class MK_FundingCtrl {
	@Autowired(required=false)
	private MK_FundingService service;
	// http://localhost:5080/funfun/funding.do?method=list
	@RequestMapping(params="method=list")
	public String projectList(@ModelAttribute("projSch") ProjectSch sch, Model d) {
		System.out.println("카테고리1"+sch.getCate_title());
		d.addAttribute("plist", service.projectList(sch));
		String category = sch.getCate_title();
		if(category == null) category =  "";
		switch(category) {
			case "교육" :
				d.addAttribute("category","교육·키즈");
				break;
			case "패션" :
				d.addAttribute("category","패션·잡화·뷰티");
				break;
			case  "홈리빙":
				d.addAttribute("category","홈리빙·디자인소품");
				break;
			case "공연" :
				d.addAttribute("category","공연·컬쳐");
				break;
			case "스포츠":
				d.addAttribute("category","스포츠·모빌리티");
				break;
			case "출판":
				d.addAttribute("category","출판");
				break;
			case "반려동물":
				d.addAttribute("category","반려동물");
				break;
			case "테크":
				d.addAttribute("category","테크·가전");
				break;
			default:
				d.addAttribute("category", "전체보기");
				break;
		}
		System.out.println("카테고리"+sch.getCate_title());
		System.out.println("검색"+sch.getProjectsch());
		return "WEB-INF\\views\\funding\\mk_user_w_projectList.jsp";
	}
	// 프로젝트 목록 for json
	// http://localhost:5080/funfun/funding.do?method=ajaxList
	@RequestMapping(params="method=ajaxList")
	public String ajaxList(ProjectSch sch, Model d) {
		// view를 json형 뷰로 선언
		d.addAttribute("plist", service.projectList(sch));
		// 모델에 있는 plist로 된 ArrayList 객체를 json형식으로 변경
		return "pageJsonReport";
	}
	// 프로젝트 상세보기
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("pro_code") int pro_code, Model d) {
		d.addAttribute("project", service.detail(pro_code));
		d.addAttribute("opt", service.proOptList(pro_code));
		return "WEB-INF\\views\\funding\\mk_user_w_projectDetail.jsp";
	}
	// 프로젝트 상세보기 for json
	// http://localhost:5080/funfun/funding.do?method=ajaxDetail&pro_code=21000002
	@RequestMapping(params="method=ajaxDetail")
	public String ajaxDetail(@RequestParam("pro_code") int pro_code, Model d) {
		// view를 json형 뷰로 선언
		d.addAttribute("project", service.detail(pro_code));
		d.addAttribute("opt", service.proOptList(pro_code));
		// 모델에 있는 plist로 된 ArrayList 객체를 json형식으로 변경
		return "pageJsonReport";
	}
	// 관심프로젝트 등록 확인
	@RequestMapping(params="method=ckfavor")
	public String ckfavor(@ModelAttribute("project") Project proj, Model d) {
		System.out.println("관심프로젝트등록확인");
		d.addAttribute("ckfavor", service.ckfavor(proj));
		return "pageJsonReport";
	}
	// 관심프로젝트 등록
	@RequestMapping(params="method=favor")
	public String insFavor(@ModelAttribute("project") Project proj) {
		System.out.println(proj.getMem_code());
		System.out.println(proj.getPro_code());
		service.insFavor(proj);
		System.out.println("관심Controller");
		return "forward:/funding.do?method=detail";
	}
	// 펀딩하기

}

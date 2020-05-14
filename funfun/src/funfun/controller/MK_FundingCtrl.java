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

@Controller
@RequestMapping("/funding.do")
public class MK_FundingCtrl {
	@Autowired(required=false)
	private MK_FundingService service;
	
	// http://localhost:5080/funfun/funding.do?method=list
	@RequestMapping(params="method=list")
	public String projectList(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("plist", service.projectList(sch));
		return "WEB-INF\\views\\funding\\mk_user_w_projectList.jsp";
	}
	// for json
	// http://localhost:5080/funfun/funding.do?method=ajaxList
	@RequestMapping(params="method=ajaxList")
	public String ajaxList(Paging sch, Model d) {
		// view를 json형 뷰로 선언
		d.addAttribute("plist", service.projectList(sch));
		// 모델에 있는 elist로 된 ArrayList 객체를 json형식으로 변경
		// {"elist":[{"empno":7788, "ename":"홍길동",...}]}
		return "pageJsonReport";
	}
	
	// 프로젝트 상세보기
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("pro_code") int pro_code, Model d) {
		d.addAttribute("getP", service.detail(pro_code));
		return "WEB-INF\\views\\funding\\mk_user_w_projectDetail.jsp";
	}
	

}

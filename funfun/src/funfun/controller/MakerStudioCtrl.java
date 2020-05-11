package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.MakerStudioService;
import funfun.vo.MakerStudio;

@Controller
@RequestMapping("/MakerStudio.do")
public class MakerStudioCtrl {

	// http://localhost:6080/funfun/MakerStudio.do?method=makerReg
	// http://localhost:6080/funfun/MakerStudio.do?method=makerReg_done

	@Autowired(required=false)
	private MakerStudioService service;
	
	@RequestMapping(params="method=makerReg")
	public String regForm() {
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerReg.jsp";
	}
	
	@RequestMapping(params="method=makerReg_done")
	public String regDone(MakerStudio reg) {
		service.regMaker(reg);
		System.out.println("등록됨???");
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerReg_done.jsp";
	}
}

package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.KB_StoreService;
import funfun.vo.Paging;
import funfun.vo.RewardStore;
import funfun.vo.storeOption;
import funfun.vo.storeQnA;

@Controller
@RequestMapping("store.do")
public class kb_Store_Controller {
	@Autowired(required=false)
	KB_StoreService service;
	@RequestMapping(params="method=list")
	public String storeList(@ModelAttribute("paging") Paging sch,Model d) {
		d.addAttribute("slist", service.slist(sch));
		String cate = sch.getCate_title();
		System.out.println("테스트2 : " + sch.getStore_sort());
		if(cate == null) cate =  "";
		
		switch(cate) {
		case "교육" :
			d.addAttribute("cateTitle","교육·키즈");
			break;
		case "패션" :
			d.addAttribute("cateTitle","패션·잡화·뷰티");
			break;
		case  "홈리빙":
			d.addAttribute("cateTitle","홈리빙·디자인소품");
			break;
		case "공연" :
			d.addAttribute("cateTitle","공연·컬쳐");
			break;
		case "스포츠":
			d.addAttribute("cateTitle","스포츠·모빌리티");
			break;
		case "출판":
			d.addAttribute("cateTitle","출판");
			break;
		case "반려동물":
			d.addAttribute("cateTitle","반려동물");
			break;
		case "테크":
			d.addAttribute("cateTitle","테크·가전");
			break;
		default:
			d.addAttribute("cateTitle", "전체보기");
			break;
		}
		
		return "WEB-INF\\views\\Store\\kb_w_user_StoreList.jsp";
	}
	
	@RequestMapping(params="method=detail")
	
	public String detail(@RequestParam(value = "sto_code") int sto_code, @ModelAttribute("paging") Paging sch,Model d) {
		System.out.println("테스트 : " + sto_code);
		
		d.addAttribute("store",service.sdetail(sto_code));
		d.addAttribute("option", service.stoOptlist(sto_code));
		d.addAttribute("qna", service.qnaList(sch));
		d.addAttribute("stocode", sto_code);

		
		return "WEB-INF\\views\\Store\\kb_w_user_storeDetail.jsp";
	}

	@RequestMapping(params="method=insert")
	public String qnaList(storeQnA qna) {
		
		service.qnaInsert(qna);
		
		return "redirect:/store.do?method=detail&sto_code=" + qna.getSto_code();
	}
	
	@RequestMapping(params="method=listJson")
	public String listJson(Paging sch, Model d) {
		d.addAttribute("slist", service.slist(sch));
		
		return "pageJsonReport";
	}
	
	
	
	
	
}

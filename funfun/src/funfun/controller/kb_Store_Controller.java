package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.KB_StoreService;
import funfun.vo.RewardStore;

@Controller
public class kb_Store_Controller {
	@Autowired(required=false)
	KB_StoreService service;
	@RequestMapping("storeList.do")
	public String storeList(@ModelAttribute("sch") RewardStore sch,Model d) {
		d.addAttribute("slist", service.slist(sch));
		String cate = sch.getCate_title();
		
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
	
}

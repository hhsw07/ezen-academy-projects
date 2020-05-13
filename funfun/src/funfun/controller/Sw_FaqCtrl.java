package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.Sw_FaqService;
import funfun.vo.Faq;
import funfun.vo.Paging;

@Controller
@RequestMapping("/faq.do")
public class Sw_FaqCtrl {
	// http://localhost:5080/funfun/faq.do?method=list
	// http://localhost:5080/funfun/faq.do?method=admList
	// http://localhost:5080/funfun/faq.do?method=insForm
	// http://localhost:5080/funfun/faq.do?method=insert
	// http://localhost:5080/funfun/faq.do?method=detail
	// http://localhost:5080/funfun/faq.do?method=update
	// http://localhost:5080/funfun/faq.do?method=delete
	@Autowired(required=false)
	private Sw_FaqService service;
	
	// http://localhost:5080/funfun/faq.do?method=list
	@RequestMapping(params="method=list")
	public String list(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("list",service.list(sch));
		return "WEB-INF\\views\\servicecenter\\sw_user_w_faqList.jsp";
	}
	// http://localhost:5080/funfun/faq.do?method=admList
	@RequestMapping(params="method=admList")
	public String admList(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("list",service.list(sch));
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_faqList.jsp";
	}
	
	
	// http://localhost:5080/funfun/faq.do?method=insForm
	@RequestMapping(params="method=insForm")
	public String insForm() {
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_faqInsert.jsp";
	}
	// http://localhost:5080/funfun/faq.do?method=insert
	@RequestMapping(params="method=insert")
	public String insert(Faq ins) {
		/*
		System.out.println("등록 제목:"+insert.getTitle());
		System.out.println("파일 로딩:"+
		insert.getReport()[0].getOriginalFilename());
		service.insert(insert);
		insert.setRefno(0);
		insert.setTitle("");
		insert.setContent("");
		*/
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_faqInsert.jsp";
	}
	
	
	// http://localhost:5080/funfun/faq.do?method=detail
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("no") int no, Model d) {
		// d.addAttribute("board", service.getBoard(no));
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_faqDetail.jsp";
	}
	// http://localhost:5080/funfun/faq.do?method=update
	@RequestMapping(params="method=update")
	public String update(Faq upt) {
		// service.update(upt);
		return "forward:/faq.do?method=detail";
	}
	// http://localhost:5080/funfun/faq.do?method=delete
	@RequestMapping(params="method=delete")
	public String delete(@RequestParam("no") int no) {
		// service.deleteBoard(no);
		return "redirect:/faq.do?method=list";
	}
	
}

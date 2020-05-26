package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.Sw_RtqnaService;
import funfun.vo.Paging;
import funfun.vo.Rtqna;

@Controller
@RequestMapping("/rtqna.do")
public class Sw_RtqnaCtrl {
	// http://localhost:5080/funfun/rtqna.do?method=ajaxlist
	// http://localhost:5080/funfun/rtqna.do?method=admList
	// http://localhost:5080/funfun/rtqna.do?method=insert
	// http://localhost:5080/funfun/rtqna.do?method=detail
	// http://localhost:5080/funfun/rtqna.do?method=update
	// WEB-INF\\views\\servicecenter\\NewFile.jsp
	
	@Autowired(required=false)
	private Sw_RtqnaService service;
	
	
	// http://localhost:5080/funfun/rtqna.do?method=ajaxlist?curPage=1&pageSize=5
	@RequestMapping(params="method=ajaxlist")
	public String ajaxlist(@RequestParam("curPage") int curPage,
			 			   @RequestParam("pageSize") int pageSize, Model d) {
		Paging sch = new Paging();
		sch.setCurPage(curPage);
		sch.setPageSize(pageSize);
		d.addAttribute("list",service.list(sch));
		return "pageJsonReport";
	}
	
	
	// http://localhost:5080/funfun/rtqna.do?method=admList
	@RequestMapping(params="method=admList")
	public String admList(@ModelAttribute("paging") Paging sch, Model d) {
		d.addAttribute("list",service.list(sch));
		
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_rtqnaList.jsp";
	}
	
	
	
	// http://localhost:5080/funfun/rtqna.do?method=insert
	@RequestMapping(params="method=insertrtqna")
	public String insertrtqna(Rtqna ins) {
		service.insertrtqna(ins);
		System.out.println("ctrl rtqna 채팅방 등록완료");
		
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_noticeInsert.jsp";
	}
	
	
	// http://localhost:5080/funfun/rtqna.do?method=insert
	@RequestMapping(params="method=insert")
	public String insert(Rtqna ins) {
		service.insert(ins);
		if(ins.getRtqna_writer() >= 11000000) {
			// 회원이 글 입력시 확인 ==> 문의중으로 수정
			service.uptSt1(ins.getMem_code());
		}else {
			// 관리자가 글 입력시 문의중 ==> 미확인 으로 수정
			service.uptSt2(ins.getMem_code());
		}
		return "WEB-INF\\views\\servicecenter\\sw_chatting.jsp";
	}

	
	// http://localhost:5080/funfun/rtqna.do?method=detail
	@RequestMapping(params="method=detail")
	public String detail(@RequestParam("mem_code") int mem_code, Model d) {
		d.addAttribute("mem_code", mem_code);
		return "WEB-INF\\views\\servicecenter\\sw_user_w_rtqnaDetail.jsp";
		//return "pageJsonReport";
	}
	// http://localhost:5080/funfun/rtqna.do?method=admdetail
	@RequestMapping(params="method=admdetail")
	public String admdetail(@RequestParam("mem_code") int mem_code, Model d) {
		d.addAttribute("mem_code", mem_code);
		return "WEB-INF\\views\\servicecenter\\sw_admin_w_rtqnaDetail.jsp";
		//return "pageJsonReport";
	}
	
	// http://localhost:5080/funfun/rtqna.do?method=ajaxdetail&mem_code=11000000
	@RequestMapping(params="method=ajaxdetail")
	public String ajaxdetail(@RequestParam("mem_code") int mem_code, Model d) {
		d.addAttribute("list", service.detail(mem_code));
		return "pageJsonReport";
	}
	
	
	// http://localhost:5080/funfun/rtqna.do?method=chatting
	@RequestMapping(params="method=chatting")
	public String chatting(@RequestParam("mem_code") int mem_code, Model d, HttpServletRequest req) {
		HttpSession session = req.getSession();
		
		if( session.getAttribute("user")!= null) {
			// 회원인 경우 채팅방 입장시 미확인 ==> 확인으로 수정
			service.uptSt3(mem_code);
		}
		
		return "WEB-INF\\views\\servicecenter\\sw_chatting.jsp";
	}
	
	
}

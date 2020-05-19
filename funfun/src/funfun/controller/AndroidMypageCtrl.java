package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import funfun.service.sh_myPageService;
import funfun.vo.MyPageInfo;

@Controller
public class AndroidMypageCtrl {
	
	@Autowired(required=false)
	private sh_myPageService service;
	
	@RequestMapping(value="/androidMypage.do",produces="text/plain;charset=UTF-8")
	@ResponseBody
	public String mypageinfo(MyPageInfo m, Model d) {
		 
		String email = "yuseohee27@gmail.com";
		 d.addAttribute("flist", service.list(email)); // 관심프로젝트
		 d.addAttribute("plist", service.plist(email)); // 참여한 펀딩
		 d.addAttribute("tlist", service.tlist(email)); // 주문 및 배송 조회
		 if(service.memState(email)==null) {
			 d.addAttribute("memState", "서포터회원");
		 }else {
			 d.addAttribute("memState", "메이커회원");
		 }
		 d.addAttribute("fundCnt", service.fundCnt(email)); // 펀딩 횟수
		 d.addAttribute("orderCnt", service.orderCnt(email)); // 주문 횟수
		 d.addAttribute("meminfo", service.mypageinfo(email)); // 회원 정보
		String result = "{\"name\":\""+"유서희"+"\"}";
		return result;
	}
}

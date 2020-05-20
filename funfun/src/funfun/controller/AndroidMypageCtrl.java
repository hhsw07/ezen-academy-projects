package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import funfun.service.sh_myPageService;
import funfun.vo.MemberLogin;
import funfun.vo.MyPageInfo;

@Controller
public class AndroidMypageCtrl {
	
	@Autowired(required=false)
	private sh_myPageService service;
	

	@RequestMapping(value="/androidMypage.do")
	public ResponseEntity mypageinfo(MyPageInfo m, Model d) {
		
		String email = "yuseohee27@gmail.com";	
		HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");

		String result = "{\"memName\":\""+service.mypageinfo(email).getMemName()+"\"}";
			
		return new ResponseEntity(result, responseHeaders, HttpStatus.CREATED);
		
	}
	
}


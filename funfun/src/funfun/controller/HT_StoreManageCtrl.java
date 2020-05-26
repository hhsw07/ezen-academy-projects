package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.HT_StoreManageService;

@Controller
@RequestMapping("/Store.do")
public class HT_StoreManageCtrl {

	@Autowired(required=false)
	private HT_StoreManageService service;
	
	@RequestMapping(params="method=storeReg")
	public String storeReg() {
		return "";
	}

	@RequestMapping(params="method=storeOrderManage")
	public String storeOrderManage() {
		return "";
	}

	@RequestMapping(params="method=storeQnAManage")
	public String storeQnAManage() {
		return "";
	}
}

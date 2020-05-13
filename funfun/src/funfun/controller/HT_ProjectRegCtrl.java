package funfun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.HT_ProjectRegService;

@Controller
@RequestMapping("/ProjectReg.do")
public class HT_ProjectRegCtrl {
	
	@Autowired(required=false)
	private HT_ProjectRegService service;
	
	@RequestMapping(params="method=ready")
	public String proReady() {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	
	@RequestMapping(params="method=basicInfo")
	public String proRegBasicInfo() {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_basicInfo.jsp";
	}
	@RequestMapping(params="method=story")
	public String proRegStory() {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_story.jsp";
	}
	@RequestMapping(params="method=reward")
	public String proRegReward() {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_reward.jsp";
	}
	@RequestMapping(params="method=risk")
	public String proRegRisk() {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_risk.jsp";
	}
	@RequestMapping(params="method=makerInfo")
	public String proRegMakerInfo() {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_makerInfo.jsp";
	}

}

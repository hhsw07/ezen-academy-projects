package funfun.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import funfun.service.HT_MSService;
import funfun.vo.Project;

@Controller
@RequestMapping("/androidMyProject.do")
public class HT_MS_AntroidCtrl {
	
	// http:localhost:6080/funfun/androidMyProject.do?method=myProject
	
	@Autowired
	HT_MSService service;
	
	@RequestMapping(params="method=myProject")
	public String myProjectList(HttpServletRequest request, HttpServletResponse response) {

		Gson gson = new GsonBuilder().setDateFormat("yyyy-mm-dd").create();
		ArrayList<Project> myProject = service.myProjectList(11000000);
		ArrayList<HashMap<String,String>> JSON = new ArrayList<HashMap<String,String>>();
		for(Project p:myProject) {
			String title=p.getPro_title();
			if(title==null) title="";
			String keyword=p.getPro_keyword();
			if(keyword==null) keyword="";
			HashMap<String , String> map = new HashMap<String , String>();
			map.put("pro_title", title);
			map.put("pro_keyword", keyword);
			JSON.add(map);
		}
		String jsonMyProList = gson.toJson(JSON);
		System.out.println(jsonMyProList);
		request.setAttribute("JSON", jsonMyProList);
		return "WEB-INF\\views\\makerstudio\\ht_user_m_MS_myProject_json.jsp";
	}

}

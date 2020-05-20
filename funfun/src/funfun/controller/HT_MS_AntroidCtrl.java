package funfun.controller;

import java.util.ArrayList;

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
	
	@Autowired
	HT_MSService service;
	
	@RequestMapping(params="method=myProject")
	public String myProjectList(HttpServletRequest request, HttpServletResponse response) {

		Gson gson = new GsonBuilder().setDateFormat("yyyy-mm-dd").create();
		Project project = new Project();
		
		ArrayList<Project> myProject = service.myProjectList(13000014);
		String jsonMyProList = gson.toJson(myProject);
		System.out.println(jsonMyProList);
		request.setAttribute("JSON", jsonMyProList);
		
		return "";
	}

}

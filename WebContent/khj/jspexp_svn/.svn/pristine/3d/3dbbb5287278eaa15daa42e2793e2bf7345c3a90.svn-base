package com.example.demo2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo2.domain.Emp;
import com.example.demo2.service.EmpService;

@Controller
public class EmpController {

	@Autowired(required=false)
	private EmpService service;
	
	@RequestMapping("/empList")
	public String empList(Emp sch, Model md) throws Exception{
		System.out.println("## controller ##");
		System.out.println(service.empList(sch).size());
		md.addAttribute("emplist",service.empList(sch) );
		
		return "empList";
	}	
	
}

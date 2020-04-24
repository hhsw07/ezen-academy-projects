package com.example.demo2.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo2.domain.Emp;
import com.example.demo2.mapper.EmpMapper;

@RestController
public class EmpRestController {
	@Autowired
	private EmpMapper empMapper;
	
	@RequestMapping("/empRest")
	public List<Emp> empList(Emp sch) throws Exception{
		return empMapper.emplist(sch);
	}
}

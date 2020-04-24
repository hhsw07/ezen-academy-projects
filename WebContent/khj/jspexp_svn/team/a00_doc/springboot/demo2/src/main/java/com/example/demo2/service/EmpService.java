package com.example.demo2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo2.domain.Emp;
import com.example.demo2.mapper.EmpMapper;

@Service
public class EmpService {

	@Autowired(required=false)
	private EmpMapper dao;
	
	public List<Emp> empList(Emp sch){
		return dao.emplist(sch);
	}
	
}

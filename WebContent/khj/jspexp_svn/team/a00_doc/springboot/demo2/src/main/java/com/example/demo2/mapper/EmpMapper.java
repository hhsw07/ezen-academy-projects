package com.example.demo2.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.example.demo2.domain.Emp;
// com.example.demo.mapper.EmpMapper

@Repository
public interface EmpMapper {

	public ArrayList<Emp> emplist(Emp sch);
	public Emp empOne(int empno);
	public void empUpdate(Emp upt);
	
	
}

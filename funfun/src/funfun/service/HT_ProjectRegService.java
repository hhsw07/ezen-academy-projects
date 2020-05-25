package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_ProjectRegReposi;
import funfun.vo.MakerStudio;
import funfun.vo.Project;

@Service
public class HT_ProjectRegService {

	@Autowired(required=false)
	private HT_ProjectRegReposi dao;
	
	public MakerStudio makerInfo(int mem_code) {
		MakerStudio d= dao.makerInfo(mem_code);
		return d;
	}
	
	public void proCreate(Project cre) {
		System.out.println("프로젝트 등록 찍혔음???");
		dao.proCreate(cre); 

	}

	public int getProjectCode() {
		return dao.getProjectCode();
	}
	
	public void proBasicInfo(Project cre) {
		System.out.println("기본 정보 업뎃 찍힘???");
		dao.proBasicInfo(cre);
	}
	
}

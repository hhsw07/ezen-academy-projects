package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_ProjectRegReposi;
import funfun.vo.MakerStudio;
import funfun.vo.ProOption;
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
	
	public void proStory(Project cre) {
		System.out.println("프로젝트 스토리 업뎃");
		dao.proStory(cre);
	}
	
	public ArrayList<ProOption> getProOptionList(int pro_code){
		System.out.println("프로옵션리스트 프로세스입니다");
		return dao.getProOptionList(pro_code);
	}
	
	public void regProOption(ProOption cre) {
		dao.regProOption(cre);
	}
	
}

package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_MSReposi;
import funfun.vo.MakerStudio;
import funfun.vo.Project;

@Service
public class HT_MSService {

	@Autowired(required=false)
	private HT_MSReposi dao;
	
	public void regMaker(MakerStudio reg) {
		dao.regMaker(reg);
		System.out.println("얘는 찍혀???");
	}
	
	public MakerStudio makerInfo(int maker_code) {
		System.out.println(maker_code);
		MakerStudio d = dao.makerInfo(maker_code);
		return d;
	}
	
	public ArrayList<Project> myProjectList(int mem_code){
		
		return dao.myProjectList(mem_code);
	}
}

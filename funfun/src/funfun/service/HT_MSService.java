package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_MSReposi;
import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.Project;
import funfun.vo.ProjectQna;
import funfun.vo.storeOrder;
import funfun.vo.storeQnA;

@Service
public class HT_MSService {

	@Autowired(required=false)
	private HT_MSReposi dao;
	
	
	public void regMaker(MakerStudio reg) {
		dao.regMaker(reg);
	}
	
	public MakerStudio makerInfo(int mem_code) {
		System.out.println(mem_code);
		MakerStudio d = dao.makerInfo(mem_code);
		return d;
	}
	
	public ArrayList<Project> myProjectList(int mem_code){
		System.out.println(mem_code);
		return dao.myProjectList(mem_code);
	}
	
	public ArrayList<storeQnA> myProjectQnaList(int pro_code){
		return dao.storeQnaList(pro_code);
	}
	
	public ArrayList<storeOrder> myStoreManage(int sto_code){
		return dao.myStoreManage(sto_code);
	}
	
	public Project projectInfo(int pro_code) {
		return dao.projectInfo(pro_code);
	}
	
	public ArrayList<ProjectQna> proQnAList(int pro_code){
		return dao.proQnAList(pro_code);
	}
	
	public void proQnAAnsReg(storeQnA qna) {
		dao.proQnAAnsReg(qna);
	}
	
	public void projectCancel(int pro_code) {
		dao.projectCancel(pro_code);
	}
	
	public int getStoCode(int pro_code) {
		return dao.getStoCode(pro_code);
	}
	
}

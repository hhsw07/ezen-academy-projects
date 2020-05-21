package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_MSReposi;
import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.Project;
import funfun.vo.storeOrder;
import funfun.vo.storeQnA;

@Service
public class HT_MSService {

	@Autowired(required=false)
	private HT_MSReposi dao;
	
	
	public void regMaker(MakerStudio reg) {
		dao.regMaker(reg);
	}
	
	public MakerStudio makerInfo(int maker_code) {
		System.out.println(maker_code);
		MakerStudio d = dao.makerInfo(maker_code);
		return d;
	}
	
	public ArrayList<Project> myProjectList(int mem_code){
		System.out.println(mem_code);
		return dao.myProjectList(mem_code);
	}
	
	public ArrayList<storeQnA> myProjectQnaList(int pro_code){
		return dao.myProjectQnaList(pro_code);
	}
	
	public ArrayList<storeOrder> myStoreManage(int sto_code){
		return dao.myStoreManage(sto_code);
	}
	
}

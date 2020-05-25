package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.Project;
import funfun.vo.storeOrder;
import funfun.vo.storeQnA;

@Repository
public interface HT_MSReposi {

	public void regMaker(MakerStudio reg);
	public MakerStudio makerInfo(int mem_code);
	public ArrayList<Project> myProjectList(int mem_code);
	public ArrayList<storeQnA> myProjectQnaList(int pro_code);
	public ArrayList<storeOrder> myStoreManage(int sto_code);
	public Project projectInfo(int pro_code);

}

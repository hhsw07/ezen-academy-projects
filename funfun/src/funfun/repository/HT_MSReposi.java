package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.Project;

@Repository
public interface HT_MSReposi {

	public void regMaker(MakerStudio reg);
	public MakerStudio makerInfo(int maker_code);
	public ArrayList<Project> myProjectList(int mem_code);

}

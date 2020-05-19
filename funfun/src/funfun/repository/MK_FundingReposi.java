package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Paging;
import funfun.vo.ProOption;
import funfun.vo.Project;
import funfun.vo.ProjectSch;

@Repository
public interface MK_FundingReposi {
	// 프로젝트 목록
	public int projcnt();
	public ArrayList<Project> projectList(ProjectSch sch);
	// 프로젝트 상세보기
	public Project detail(int pro_code);
	// 프로젝트 옵션
	public ArrayList<ProOption> proOptList(int pro_code);
	
}

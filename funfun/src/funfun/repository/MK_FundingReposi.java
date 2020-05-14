package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Paging;
import funfun.vo.Project;

@Repository
public interface MK_FundingReposi {
	// 프로젝트 목록
	public int projcnt();
	public ArrayList<Project> projectList(Paging sch);
	// 프로젝트 상세보기
	public Project detail(int pro_code);
	
}

package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Project;

@Repository
public interface MK_FundingReposi {
	// 프로젝트 목록
	public ArrayList<Project> projectList();
	// 프로젝트 상세보기
	public Project getProject(int pro_code);
	
}

package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Project;

@Repository
public interface MK_FundingReposi {
	public ArrayList<Project> projectList();
	
}

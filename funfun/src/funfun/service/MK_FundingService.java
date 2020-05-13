package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.MK_FundingReposi;
import funfun.vo.Project;

@Service
public class MK_FundingService {
	@Autowired(required=false)
	private MK_FundingReposi dao;
	
	public ArrayList<Project> projectList(){
		return dao.projectList();
	}

}

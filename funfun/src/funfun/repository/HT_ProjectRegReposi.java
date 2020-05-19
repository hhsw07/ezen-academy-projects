package funfun.repository;

import org.springframework.stereotype.Repository;

import funfun.vo.MakerStudio;
import funfun.vo.Project;

@Repository
public interface HT_ProjectRegReposi {
	
	public MakerStudio makerInfo(int mem_code);
	public void proCreate(Project cre);
	public void proBasicInfo(Project cre);

}

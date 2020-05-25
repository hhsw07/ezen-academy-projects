package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.MakerStudio;
import funfun.vo.ProOption;
import funfun.vo.Project;

@Repository
public interface HT_ProjectRegReposi {
	
	public MakerStudio makerInfo(int mem_code);
	public void proCreate(Project cre);
	public void proBasicInfo(Project cre);
	public int getProjectCode();
	public void proStory(Project cre);
	public ArrayList<ProOption> getProOptionList(int pro_code);
	public void regProOption(ProOption cre);

}

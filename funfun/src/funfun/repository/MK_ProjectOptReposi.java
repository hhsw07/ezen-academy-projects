package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Paging;
import funfun.vo.ProOption;
import funfun.vo.Project;

@Repository
public interface MK_ProjectOptReposi {
	// 프로젝트 옵션
	public ArrayList<ProOption> proOptList(int pro_code);
	
}

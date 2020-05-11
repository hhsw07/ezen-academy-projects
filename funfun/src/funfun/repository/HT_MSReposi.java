package funfun.repository;

import org.springframework.stereotype.Repository;

import funfun.vo.MakerStudio;

@Repository
public interface HT_MSReposi {

	public void regMaker(MakerStudio reg);
}

package funfun.repository;

import org.springframework.stereotype.Repository;

import funfun.vo.MakerStudio;

@Repository
public interface MakerStudioDAO {

	public void regMaker(MakerStudio reg);
}

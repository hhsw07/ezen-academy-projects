package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.MakerStudioDAO;
import funfun.vo.MakerStudio;

@Service
public class MakerStudioService {

	@Autowired(required=false)
	private MakerStudioDAO dao;
	
	public void regMaker(MakerStudio reg) {
		dao.regMaker(reg);
		System.out.println("얘는 찍혀???");
	}
}

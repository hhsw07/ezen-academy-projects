package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.MakerStudioDAO;
import funfun.vo.MakerStudio;

@Service
public class MakerStudioService {

	@Autowired(required=false)
	private MakerStudioDAO dao;
	
	public void register(MakerStudio reg) {
		dao.regMaker(reg);		
	}
}

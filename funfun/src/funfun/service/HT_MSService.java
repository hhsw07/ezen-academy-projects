package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_MSReposi;
import funfun.vo.MakerStudio;

@Service
public class HT_MSService {

	@Autowired(required=false)
	private HT_MSReposi dao;
	
	public void regMaker(MakerStudio reg) {
		dao.regMaker(reg);
		System.out.println("얘는 찍혀???");
	}
}

package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.sh_secessionReposi;
@Service
public class sh_secessionService {
	@Autowired(required=false)
	private sh_secessionReposi dao;
	
//	public UserProfile mlist(String memEmail){
//		return dao.mlist(memEmail);
//	}
}

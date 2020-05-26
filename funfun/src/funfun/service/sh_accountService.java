package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.sh_accountReposi;

@Service
public class sh_accountService {
	@Autowired(required=false)
	private sh_accountReposi dao;
	
//	public UserProfile mlist(String memEmail){
//		return dao.mlist(memEmail);
//	}
}

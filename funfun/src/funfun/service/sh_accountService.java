package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.sh_accountReposi;
import funfun.vo.Balance;
import funfun.vo.Deposit;
import funfun.vo.UserProfile;

@Service
public class sh_accountService {
	@Autowired(required=false)
	private sh_accountReposi dao;
	
	public ArrayList<Balance> blist(String memEmail){
		return dao.blist(memEmail);
	}
	
	public UserProfile clist(String memEmail){
		return dao.clist(memEmail);
	}
	public int chargeQuery(UserProfile uf){
		return dao.chargeQuery(uf);
	}

	public ArrayList<Deposit> rdlist(Deposit ds){
		return dao.rdlist(ds);
	}
	public int uptDeposit(Deposit ds){
		return dao.uptDeposit(ds);
	}
}

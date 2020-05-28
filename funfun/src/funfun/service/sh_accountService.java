package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.sh_accountReposi;
import funfun.vo.Balance;
import funfun.vo.Deposit;
import funfun.vo.UserProfile;
import funfun.vo.Withdrawl;

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
	public ArrayList<Deposit> rdlist(String memEmail){
		return dao.rdlist(memEmail);
	}
	public int insDeposit(Deposit ds){
		return dao.insDeposit(ds);
	}
	public ArrayList<Withdrawl> wilist(String memEmail){
		return dao.wilist(memEmail);
	}
	public int minusBal(UserProfile uf){
		return dao.minusBal(uf);
	}
	public int insWithdrawl(Withdrawl wd){
		return dao.insWithdrawl(wd);
	}
	public int uptDepoBalanceTb(UserProfile uf){
		return dao.uptDepoBalanceTb(uf);
	}
	public int uptWithBalanceTb(UserProfile uf){
		return dao.uptWithBalanceTb(uf);
	}
	public int chgAccountInfo(UserProfile uf){
		return dao.chgAccountInfo(uf);
	}
}

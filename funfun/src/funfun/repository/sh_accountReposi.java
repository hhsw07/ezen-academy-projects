package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Balance;
import funfun.vo.Deposit;
import funfun.vo.UserProfile;

@Repository
public interface sh_accountReposi {
	public ArrayList<Balance> blist(String memEmail);
	public UserProfile clist(String memEmail);
	public int chargeQuery(UserProfile uf);
	public ArrayList<Deposit> rdlist(Deposit rs);
	public int uptDeposit(Deposit rs);
}

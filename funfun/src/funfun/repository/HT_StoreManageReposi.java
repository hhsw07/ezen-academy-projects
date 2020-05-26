package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.storeOrder;
import funfun.vo.storeQnA;

@Repository
public interface HT_StoreManageReposi {
	
	public ArrayList<storeQnA> storeQnAList(int sto_code);
	public void storeQnAAnsReg(storeQnA qna);
	public ArrayList<storeOrder> orderList(int sto_code);
}

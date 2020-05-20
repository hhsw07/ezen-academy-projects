package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.KB_QnAReposi;
import funfun.repository.KB_RSOptionRep;
import funfun.repository.KB_RSReposi;
import funfun.vo.*;
import java.util.*;

@Service
public class KB_StoreService {
	@Autowired(required=false)
	KB_RSReposi dao;
	@Autowired(required=false)
	KB_RSOptionRep opt_dao;
	@Autowired(required=false)
	KB_QnAReposi qna_dao;
	
	public ArrayList<RewardStore> slist(RewardStore sch){
		return dao.slist(sch);
	}
	
	public RewardStore sdetail(int sto_code) {
		return dao.sdetail(sto_code);
	}
	
	public ArrayList<storeOption> stoOptlist(int sto_code){
		return opt_dao.stoOptList(sto_code);
	}
	
	public storeOption stoOpt(int sto_opt_code) {
		return opt_dao.stoOpt(sto_opt_code);
	}
	
	public ArrayList<storeQnA> qnaList(int sto_code){
		return qna_dao.qnaList(sto_code);
	}

	public void qnaInsert(storeQnA store) {
		 qna_dao.qnaInsert(store);
	}
}

package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.KB_RSReposi;
import funfun.vo.*;
import java.util.*;

@Service
public class KB_StoreService {
	@Autowired(required=false)
	KB_RSReposi dao;
	
	public ArrayList<RewardStore> slist(RewardStore sch){
		return dao.slist(sch);
	}
	
	public RewardStore sdetail(int sto_code) {
		return dao.sdetail(sto_code);
	}
	
}

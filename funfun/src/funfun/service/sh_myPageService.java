package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.sh_myPageReposi;
import funfun.vo.Favor;
import funfun.vo.MyPageInfo;
import funfun.vo.PartiFunding;
import funfun.vo.TranLookUp;


@Service
public class sh_myPageService {
	@Autowired(required=false)
	private sh_myPageReposi dao;
	
	public ArrayList<Favor> list(String memEmail){
		return dao.list(memEmail);
	}
	public ArrayList<PartiFunding> plist(String memEmail){
		return dao.plist(memEmail);
	}
	public ArrayList<TranLookUp> tlist(String memEmail){
		return dao.tlist(memEmail);
	}
	
	public String memState(String memEmail){ 
		return dao.memState(memEmail); 
	}
	public int fundCnt(String memEmail){ 
		return dao.fundCnt(memEmail); 
	}
	public int orderCnt(String memEmail){ 
		return dao.orderCnt(memEmail); 
	}
	public MyPageInfo mypageinfo(String memEmail){ 
		return dao.mypageinfo(memEmail); 
	}
	public String changeOrderAdr(String orderCode, String newAdr) {
		return dao.changeOrderAdr(orderCode,newAdr);
	}
	
}

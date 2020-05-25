package funfun.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
	public void changeOrderAdr(String oc, String newAdr) {
		usingMap(oc,newAdr);
		dao.changeOrderAdr(oc,newAdr);
	}
	private void usingMap(String oc, String newAdr) {
		HashMap<String, String> hm = new HashMap<String, String>();
		hm.put("newAdr", newAdr);
		hm.put("oc", oc);	
	}			
		
	
}

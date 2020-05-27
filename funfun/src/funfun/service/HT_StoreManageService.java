package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.HT_StoreManageReposi;
import funfun.vo.ProOption;
import funfun.vo.Store;
import funfun.vo.storeOption;
import funfun.vo.storeOrder;
import funfun.vo.storeQnA;

@Service
public class HT_StoreManageService {
	
	@Autowired(required=false)
	private HT_StoreManageReposi dao;
	
	public ArrayList<storeQnA> storeQnAList(int sto_code){
		return dao.storeQnAList(sto_code);
	}
	
	public void storeQnAAnsReg(storeQnA qna) {
		System.out.println("스토어 답변등록 서비스 : "+qna.getQna_code());
		dao.storeQnAAnsReg(qna);
	}
	
	public ArrayList<storeOrder> orderList(int sto_code){
		return dao.orderList(sto_code);
	}
	
	public void storeOpenStart(Store sto) {
		dao.storeOpenStart(sto);
	}
	
	public int getStoreCode() {
		return dao.getStoreCode();
	}
	
	public void storeBasicInfoReg(Store sto) {
		dao.storeBasicInfoReg(sto);
	}
	
	public ArrayList<ProOption> getProOptList(int pro_code){
		return dao.getProOptList(pro_code);
	}
	
	public void stoOptUnitReg(storeOption sto) {
		dao.stoOptUnitReg(sto);
	}
	
	public void storeOpenRegConfirm(int sto_code) {
		dao.storeOpenRegConfirm(sto_code);
	}
	
}

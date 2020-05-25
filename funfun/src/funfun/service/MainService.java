package funfun.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.MainRepo;
import funfun.vo.Favor;
import funfun.vo.FavorCodeList;
import funfun.vo.MemberInfo;
import funfun.vo.MemberLogin;

@Service
public class MainService {

	@Autowired
	private MainRepo repo;
	
	public boolean verifyId(MemberLogin m) {
		if(repo.verifyId(m)==1) {
			return true;
		} else {
			return false;
		}
	}
	
	public MemberInfo getMemberInfo(String email) {
		
		//이름, 멤버코드, 이메일주소 가져옴
		MemberInfo memberInfo=repo.getMemberInfo(email);
		// count로 메이커인지 아닌지 확인 카운트 0-> 메이커아님, 카운트1->메이커
		boolean isMaker=(repo.isMaker(memberInfo.getMem_code())==1)? true:false;
		if(isMaker) {
			//메이커인 경우 메이커 코드 set
			int makerCode=repo.getMakerCode(memberInfo.getMem_code());
			memberInfo.setMaker_code(makerCode);
		} else {
			//메이커가 아닌 경우 메이커코드에 -1 set
			memberInfo.setMaker_code(-1);
		}
		return memberInfo;
	}
	

	public boolean signupIdCheck(String email) {
		if(repo.signupIdCheck(email)==1) {
			return false; //���̵�����
		} else {
			return true;
		}
	}
	
	public void insertMember(MemberInfo m) {
		repo.insertMember(m);
	}
	
	public boolean changePass(MemberInfo m) {
		repo.changePass(m);
		return true;
	}
	
	public String getNameByEmail(String email) {
		return repo.getNameByEmail(email);
	}
	
	public FavorCodeList getFavorCodeListByEmail(String email){
		FavorCodeList favorCodeList= new FavorCodeList();
		favorCodeList.setList(repo.getFavorCodeListByEmail(email));
		return favorCodeList;
	}
	
	public Favor getFavorByCode(Integer i) {
		Favor favor = repo.getFavorByCode(i);
		favor.setdDay(favor.getdDay().substring(0,4));
		return favor;
	}
}

package funfun.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import funfun.repository.MainRepo;
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
		
		
		return repo.getMemberInfo(email);
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
}

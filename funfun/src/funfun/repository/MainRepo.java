package funfun.repository;

import org.springframework.stereotype.Repository;

import funfun.vo.MemberInfo;
import funfun.vo.MemberLogin;


@Repository
public interface MainRepo {
	
	public int verifyId(MemberLogin m);
	
	public MemberInfo getMemberInfo(String email);
	
	public int signupIdCheck(String email);
	
	public void insertMember(MemberInfo m);
	
	public void changePass(MemberInfo m);
	
	public int isMaker(int mem_code);
	
	public int getMakerCode(int mem_code);
}

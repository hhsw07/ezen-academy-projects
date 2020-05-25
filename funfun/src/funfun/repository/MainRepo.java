package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.Favor;
import funfun.vo.FavorCodeList;
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
	
	public String getNameByEmail(String email);
	
	public ArrayList<Integer> getFavorCodeListByEmail(String email);
	
	public Favor getFavorByCode(Integer i);
}

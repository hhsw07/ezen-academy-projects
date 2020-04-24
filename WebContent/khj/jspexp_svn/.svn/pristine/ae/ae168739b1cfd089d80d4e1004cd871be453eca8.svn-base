package jspexp.c01_mvc;

import jspexp.b01_database.A04_MemberDao;

public class A04_MemberRegService {
	private A04_MemberDao dao;
	
	public A04_MemberRegService() {
		super();
		// TODO Auto-generated constructor stub
		dao = new A04_MemberDao();
	}
	public boolean checkReg(String id){
		return dao.memberCk(id);
	}
}

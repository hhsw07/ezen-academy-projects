package javaexp.a05_access.a02_sec.home;

public class Mother {
	public void callMineInfo() {
	
	Mine sec01 = new Mine();	// 같은 패키지에서는 패키지명 생략 가능
	
	System.out.println("성적: "+sec01.grade);		// public 접근제한자 (호출O)
	System.out.println("나이: "+sec01.age);		// default 접근제한자 (호출O)
//	System.out.println("비밀번호: "+sec01.pass);	// private 접근제한자 (호출X)
	}
}

package javaexp.a05_access.a02_sec.neighbor;

import javaexp.a05_access.a02_sec.home.Mine;		// 1) 다른 패키지 일 때 import 패키지명.클래스명; 선언을 통해 패키지명 생략 가능

public class Uncle {
	public void callMineInfo() {
		Mine sec01 = new Mine();
		javaexp.a05_access.a02_sec.home.Mine sec02 = new javaexp.a05_access.a02_sec.home.Mine();
		// 클래스명 전체(패키지명.클래스명)을 통해 호출 가능 
		
		System.out.println("성적: "+sec01.grade);		// public 접근제한자 (호출O)
//		System.out.println("나이: "+sec01.age);		// default 접근제한자 (호출X)
//		System.out.println("비밀번호: "+sec01.pass);	// private 접근제한자 (호출X)
}
}

package javaexp.a06_inherit.access;

import javaexp.a06_inherit.A02_Father;

public class Son extends A02_Father {	// 상속으로 A02_Father의 멤버 중 필드를 호출 가능함
	void callFatherInfo() {
//		name = "아들1";	// private으로 접근 불가(동일 클래스)
//		age = 30;		// default으로 접근 불가(동일 패키지)
		loc = "서울 강남";	// protected 접근 가능(상속관계)
		announce = "SNS 로딩 공개자료";	// public 접근 가능(전부)
		
		System.out.println("");
	}

}

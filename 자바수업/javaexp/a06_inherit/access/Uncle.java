package javaexp.a06_inherit.access;

import javaexp.a06_inherit.A02_Father;

public class Uncle {
	void callFatherInfo() {
		A02_Father f = new A02_Father();	// 다른 패키지에 있어 import 필요 or 패키지명.클래스명 으로 호출 
//		f.name = "아들1";	// private으로 접근 불가(동일 클래스)
//		f.age = 30;		// default으로 접근 불가(동일 패키지)
//		f.loc = "서울 강남";	// protected 접근 불가(상속관계)
		f.announce = "SNS 로딩 공개자료";	// public 접근 가능(전부)
		
		System.out.println("");
	}
}

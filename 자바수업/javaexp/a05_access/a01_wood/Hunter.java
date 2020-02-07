package javaexp.a05_access.a01_wood;

import javaexp.a05_access.a01_wood.a01_friendship.WoodCutter;

public class Hunter {
	void callWoodinfo() {
		WoodCutter w1 = new WoodCutter();	// 클래스는 public으로 접근 가능
		// Hunter와 WoodCutter는 같은 package가 아니므로 default에 접근할 수 없다.
//		System.out.println("사슴을 숨긴곳 "+w1.cacheDeer);
		// private 설정된 변수는 class 내부에서만 접근이 가능하다.	
//		System.out.println("천사옷을 숨긴곳 "+w1.cacheClothe);
		// public 설정된 변수는 외부 class도 접근이 가능하
		System.out.println("장가 가는날: "+w1.weddingDate);

	}
	
}

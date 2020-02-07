package javaexp.a05_access.a01_wood.a01_friendship;

public class Deer {
		void callWoodInfo() {
		WoodCutter w1 = new WoodCutter();
		// Dear가 같은 package에 있으므로 default에 접근 가능
		System.out.println("사슴을 숨긴곳 "+w1.cacheDeer);
		// 같은 package라도 private로 설정하면 접근을 할 수 없다.
//		System.out.println("천사옷을 숨긴곳 "+w1.chcheClothe);
		
		System.out.println("장가 가는날: "+w1.weddingDate);
	}
	
}

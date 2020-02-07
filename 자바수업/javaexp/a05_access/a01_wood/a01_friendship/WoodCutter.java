package javaexp.a05_access.a01_wood.a01_friendship;
/*
# 선녀와 나무꾼
1. 나무꾼
	1) default cacheDeer (default: 같은 패키지에서만 접근 가능)
2. 사슴
	1) 

 */

public class WoodCutter {
	String cacheDeer = "뒤쪽 나무밑 덤불속";	// 접근제한자 없음 = default
	private String cacheClothe = "날개 옷을 뒷 동산 바위 밑";		// 접근제한자 private
	public String weddingDate = "3월 초 꽃피는 봄에 장가갑니다.";	// 접근제한자 public
	// protected: 접근제어자는 상속관계에서 하위 클래스가 외부 패키지일지라도 접근이 가능하다.
}

package javaexp.a06_inherit;

/*
# final keyword 사용
1. 필드명 앞에: 상수 - 한번 초기화되면 변경을 못함.
2. 클래스명 앞에: 더 이상 상속이 불가능해짐.
3. 메서드명 앞에: 하위 클래스에서 해당 메서드로 재정의(오버라이딩 overriding) 하지 못함. 

 */

class GrandFather{
	// 필드에 final 선언
	final String FAMILY;		// 상수는 대문자로 작성(관례)
	GrandFather(){
		FAMILY = "임씨네 집안";
	}
	// 메서드에 final이 붙는 순간, 더이상 재정의(overriding)을 할 수 없다.
	final void showOurFamily() {
		System.out.println("할아버지시대 우리 가계: "+FAMILY);
	}
}
// 클래스에 final 선언
// 하위 클래스로 상속해주지 못한다.
final class Father01 extends GrandFather{
	// 
//	void showOurFamily() {
//		super.showOurFamily();
//		System.out.println("아버지시대 우리 가계: ");
//	}
}

//class Son01 extends Father01{}	// Father01클래스로부터 상속받지 못한다.


public class A04_Final {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GrandFather gf = new GrandFather();
		System.out.println("할아버지 객체: "+gf.FAMILY);
		
		Father01 f = new Father01();
		System.out.println("아버지 객체: "+f.FAMILY);
//		s.FAMILY = "김씨네 집안";	// 최상위 클래스에서 상수로 선언해서 생성자를 받아 초기화 되고, final을 붙였기 때문에 변경하지 못한다.

	}

}

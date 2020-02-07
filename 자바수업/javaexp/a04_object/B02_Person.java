package javaexp.a04_object;
// 클래스 선언
public class B02_Person {
// 클래스의 구성요소
// 1) 필드
	String name;
	int age;
// 2) 생성자 : 클래스명과 동일
	B02_Person(){
		System.out.println("생성자 만듦");
	}
// 3) 기능메서드
	void call() {
		System.out.println("메서드 호출");
	}
	
}

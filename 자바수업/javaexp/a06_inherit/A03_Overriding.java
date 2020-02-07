package javaexp.a06_inherit;
/*
# 메서드 재정의(overriding)
1. 부모 클래스의 상속 메서드 수정해 자식 클래스에서 재정의 하는 것을 말한다.
	- 자식 클래스에 맞는 다양한 내용을 선언하는 것.
2. 메서드 재정의 조건.
	1) 부모 클래스의 메서드와 메서드 명이 동일하여야 한다.
	2) 접근 제한을 하위로 갈 수록 같거나 더 넓어져야 한다.
		- 상위에서 public을 선언한 메서드를 하위에서 default, private으로 선언하지 못한다.
		- 상위 default, 하위 public 가능
	3) 새로운 예외(Exception), throws(예외위임) 처리는 불가하다.

# super.메서드명();  과 super(매개값);  차이를 구분할 것!!!!
	상위메서드호출		 생성자선언
ex) 상위를 Fruit로 하고, Strawberry, Apple로 선언하여, taste()를 재정의 하여 처리하세요.



 */
class Fruit {
	String kind;
	Fruit(String kind){
		this.kind = kind;
	}
	void taste() {
		System.out.println(kind+"맛은 ~~");
	}
}
class Strawberry extends Fruit{
	Strawberry(){			// 상위 클래스의 생성자에 맞추어 생성자 생성
		super("딸기");
	}
	void taste() {		// 오버라이드(override)
		super.taste();
		System.out.println("부드럽고 달콤한 딸기맛~~");
	}
	public void callOther() {
		// 현재 메서드 호출
		this.taste();
		// 상위 메서드 호출
		super.taste();
	}
}
class Apple extends Fruit {
	Apple(){
		super("사과");
	}
	void taste() {
		super.taste();
		System.out.println("아삭아삭!! 맛있는 사과맛~~");
	}
}

public class A03_Overriding {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Fruit []array = {new Fruit("과일"), new Strawberry(), new Apple()};
		for(Fruit f : array) {
			f.taste();
		}

	}

}

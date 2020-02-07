package javaexp.a06_inherit;
/*
# 추상 클래스 개념
1. 추상(abstract): 실체들 간에 공통되는 특성을 추출한 것을 말한다.
 	ex) 새, 곤충, 물고기  --->  동물(추상)
 		삼성, LG, 애플 --->  회사(추상)
2. 추상 클래스(abstract class)
	1) 실체 클래스들의 공통되는 필드와 메서드 정의한 클래스
	2) 추상 클래스는 실체 클래스의 부모 클래스 역할(단독 객체X)
	ex) Animal(추상클래스)		- 상위 클래스(부모)
	
	Bird  Insect  Fish		- 하위 클래스(자식)
3. 기본 형식
	abstract Animal(){
		// 공통기능 실제 메서드
		public void move(){
			@@@가 움직인다.
		}
		public void eat();	// 하위 실제 클래스에서 재정의할 내용
	}
	class Bird extends Animal(){
		public void eat(){	// 오버라이딩(재정의)
			@@@가 곤충을 잡아 먹는다.
		}
	}
	class Fish extends Animal(){
		public void eat(){
			@@@가 지렁이나 작은 물고기를 먹는다.
		}
	}
	Animal an = new Animal();	(X 추상 클래스는 실체가 아니기에 객체 생성 할 수 없다.)
	Animal an01 = new Bird();	(O 추상 클래스는 다형성으로 하위 클래스 구현)
	Animal an02 = new Fish();	(O 추상 클래스는 다형성으로 하위 클래스 구현)
	
4. 특징
	1) 추상메서드는 상속받는 하위 클래스에서 반드시 선언하여야 컴파일이 된다.
	2) 설계자 입장에서 메서드 통일성을 유지할 수 있다.
	
 */

// 구성요소(멤버) 중 추상메서드가 1개 이상 있을 때는 추상(abstract) 클래스로 선언하여야 한다.
abstract class AnimalABS{
	// 생성자 작성 생략(디폴트 생성자 선언됨)
	// 실제 메서드
	public void move() {
		System.out.println("이동합니다.");
	}
	// 추상 메서드 선언(abstract)
	// 하위에서 재정의 할 메서드를 선언한다.
	public abstract void eat();
}
class Bird extends AnimalABS {
	// 추상 클래스를 상속받는 클래스는 상위에서 선언한 추상메서드를 반드시 재정의 하여야 한다.
	@Override
	public void eat() {
		move();		// 상위클래스의 실제 메서드 사용
		System.out.println("새가 곤충을 잡아 먹다.");
	}
}
// AnimalABS ab01 = new Bird();
// ab01.eat();		// 상위 = 하위 (다형성), 재정의


// ex) Vehicle(탈것-추상 - 속도올리다(구상), driving()(추상)
//		Car, Trucker (하위-실제
abstract class Vehicle{
	// public Vehicle(){}		// 기본default 생성자
	public void speedUp() {
		System.out.println("속도 올립니다.");
	}
	public abstract void driving();
}
class Car01 extends Vehicle{
	// public CarAbs(){super()}		// 기본default 생성자
	public void driving() {			// 재정의override
		System.out.println("사람들을 5명이하 탑승. 편안하게 운행합니다.");
	}
}
class Trucker01 extends Vehicle{
	public void driving() {
		System.out.println("물건을 싣고 운행합니다.");
	}
}

public class A07_Abstract {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 1. 추상 클래스 선언(abstract class)
		AnimalABS abs01;
		// 추상클래스는 실체가 없기 때문에 객체 생성을 할 수 없다.
//		abs01 = new AnimalABS();
		abs01 = new Bird();
		abs01.eat();
		
		Vehicle v1 = new Car01();
		Vehicle v2 = new Trucker01();
		v1.speedUp();
		v1.driving();
		v2.speedUp();
		v2.driving();
	}
}



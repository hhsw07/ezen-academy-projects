package javaexp.z01_util;
// Vehicle, Car
class Vehicle{
	String kind;
	void driving() {
		System.out.println(kind+"를 타고 달리다!!");
	}
}
class Car extends Vehicle {
	Car(){
		kind = "자동차";
	}
	int speed;
	void speedUp() {
		System.out.println(kind+"의 속력을 올리다.");
		speed += 10;
		System.out.println(kind+"의 현재 속력은 "+speed+"km/h");
	}
}
class Truck extends Vehicle {
	Truck(){
		// 상위 클래스의 변수 kind 활용
		kind = "트럭";
	}
	// 상속받은 하위 클래스의 추가적인 변수나 메서드 처리
	int loadWeight;
	void loadProd() {
		System.out.println(kind+"의 물건을 싣다.");
		loadWeight += 100;
		System.out.println(kind+"의 현재 적재한 중량은 "+loadWeight+"kg");
	}
}
class Member{
	
}
public class Z06_Homework {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car c1 = new Car();
		c1.driving();
		c1.speedUp();
		c1.speedUp();
		Truck c2 = new Truck();
		c2.driving();
		c2.loadProd();
		c2.loadProd();
		c2.loadProd();

	}

}

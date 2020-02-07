package javaexp.a04_object;

public class B03_Field {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car c1 = new Car("현대자동차","빨강색","그랜져");
		c1.speedUp(5);
		c1.speedUp(10);
		c1.speedUp(15);
		System.out.println("현재속도: "+c1.speed);
		System.out.println("회사: "+c1.company);
		System.out.println("차량 색상: "+c1.color);
		
		
		// Tire add = new Tire("금호타이어");
		c1.setTire(new Tire("금호타이어"), 0);
		c1.setTire(new Tire("금호타이어"), 1);
		c1.setTire(new Tire("한국타이어"), 2);
		c1.setTire(new Tire("한국타이어"), 3);
		for(Tire t : c1.arTi) {
			System.out.println(t.kind);
		}
		for(int idx = 0; idx < c1.arTi.length; idx++) {
			System.out.println(c1.arTi[idx].kind);
		}
	
		// ex) Bank 클래스에 field(필드, 속성)로 은행명, 총입금액
		// 생성자를 통해서 은행명
		// saving()메서드의 매개변수 int addMoney를 통해서 총입금액 누적처리
		
		Bank d1 = new Bank("신한은행");
		
		d1.saving(5000);
		d1.saving(10000);
		d1.saving(22000);
		
	
	
	}

}
/*
# 필드(field)
1. 객체의 고유 데이터
	제작회사, 모델, 색깔, 최고속도...
2. 상태
	현재속도, 엔진회전수...
3. 포함할 다른 객체
	엔진, 타이어...

# 필드의 선언 방법
1. 데이터type 필드명;
	- 생성자를 통한 초기화(* 주로 사용)
	- 메서드를 통한 데이터 할당/변경
2. 데이터type 필드명 = 초기데이터;

 */


// 객체가 될 클래스 선언
class Car{
	//필드 선언
	String company;
	String color;
	String model;
	
	int speed, rpm;
	// 필드 선언시 바로 초기값 할당
	String clssTpye = "Car";
	
	Tire[] arTi;
	Engin eg;
	
	// Car c1 = new Car("현대자동차","빨강색","튜블란");
	Car(String company, String color, String model){		// 생성자를 통한 초기화
		this.company = company;
		this.color = color;
		this.model = model;
		arTi = new Tire[4];
	}
	// c1.speedUp(10); 해당 메서드를 통해서 데이터를 누적처리됨
	// c1.speedUp(20);
	// c1.speedUp(10);
	
	void speedUp(int addSpeed) {							// speedUp 메서드()
		// 매개변수에 입력받은 값을 누적 처리함.
		this.speed += addSpeed;
	}
	// 객체 안에 (Tire 객체)가 들어오는 경우, 해당 index위치에 Tire객체 할당
	void setTire(Tire add, int idx) {
		arTi[idx] = add;
	}
	
}
class Tire{
	String kind; // 타이어 이름
	Tire(String kind){
		this.kind = kind;
	}
}
class Engin{
	String name;
}
class Bank{
	String name;
	int totBalance;
	
	Bank(String name) {				// 생성자를 이용한 초기화
		this.name = name;
	}
	void saving(int addMoney) {
		totBalance += addMoney;
		System.out.println(name+" 입금액: "+addMoney);
		System.out.println(name+" 총잔액: "+totBalance+"\n");
	}
}
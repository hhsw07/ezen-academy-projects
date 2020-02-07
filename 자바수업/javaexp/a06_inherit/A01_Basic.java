package javaexp.a06_inherit;

public class A01_Basic {
/*
# 상속 이란?
1. 부모가 자식에게 물려주는 행위를 말한다.
2. 객체지향 프로그래밍에서는 부모 클래스의 멤버를 자식 클래스에 물려 주는 것을 의미한다.
	- 자식 클래스는 부모의 멤버를 접근제어자(제한자) 범위 안에서 사용할 수 있다.
3. 기본 형식
	class Father{
		String name;
		void call(){
			System.out.println(name+"을 부르다!");
		}
	}
	class Son extends Father{
		int age;
		void call2(){
			call();			// Father클래스로부터 상속을 받아, call() 메서드 사용 가능
			System.out.println("나이는 "+age+"입니다.");
		}
	}

4. 부모 생성자 호출(super())
	1) 명시적 부모 생성자 호출
		- 부모 객체 생성할 때, 부모 생성자를 선택적으로 호출. 부모 class에서 여러 생성자를 선언할 수 있기 때문에
		- super(매개값..)
			부모 생성자의 매개값에 맞게 선택해서 호출
		- 부모 생성자가 선언되지 않으면 컴파일 오류 발생(기계어가 만들어 지지 않음. ex)상속오류 등)
		- 반드시 자식 생산자의 첫 줄에 위치
		- 부모 클래스에 기본(매개변수 없는) 생성자가 없다면 필수 작성. 
	
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Son s1 = new Son();
		// Son에 name 필드가 없지만, 상속받았기 때문에 사용할 수 있다.
		s1.name = "홍길동";
		s1.call();
		s1.age = 25;
		s1.call2();
		
		// ex) Computer, SamsungCom을 상속관계로 설정하고, Computer에는 공통적인 부분(cpu, operation()), 
		//		SamsungCom에는 추가적인 멤버(touchscreenMen, touchScreen())를 선언해 보세요.
		
		SamsungCom com01 = new SamsungCom();
		com01.cpu = "i7-9700k";
		com01.operation();
		com01.touchScreenMem = "16기가";
		com01.touchScreen();
		
		PoliceOfficer p1 = new PoliceOfficer();
		System.out.println(p1.name);
		p1.call();
		
		// 다형성: 상위클래스에 상속받은 여러 하위 객체를 할당하여, 상위클래스에서 다양한 형태 모양으로 하위 객체화 되는 것을 말한다.
		Worker w1 = new PoliceOfficer();
		Worker w2 = new FireFigter();
		Worker []wk = {new PoliceOfficer(),new FireFigter()};
		System.out.println("## 향상된 for문 처리 ##");
		for(Worker w: wk) {
			w.call();
		}
		// call()이란 같은 메서드로 호출하여도 하위 클래스에서 모두 다르게 할 수 있다.
		
	}

}

class Father{
	String name;
	// public Father(){} : default로 선언된 생성자
	Father(String name){	// 새로운 생성자 생성
		this.name = name;
	}
	
	void call(){
		System.out.println(name+"을 부르다!");
	}
}
class Son extends Father{
	int age;
	// public Son(){super();} : 상속으로 인해 default로 선언된 생성자
	public Son() {
		super("아들");	// 상속받은 하위 클래스는 선언된 상위 클래스의 생성자중 하나를 호출하여야 한다.
	}
	void call2(){
		call();
		System.out.println("나이는 "+age+"살 입니다.");
	}
}

class Computer{		// 상위 클래스
	String cpu;
	
	void operation() {
		System.out.println("CPU: "+cpu);
		System.out.println("컴퓨터가 작동중입니다.");
	}
	
}
class SamsungCom extends Computer{		// 하위 클래스 
	String touchScreenMem;
	void touchScreen() {
		System.out.println("메모리 용량: "+touchScreenMem);
	}
}

// ex) Worker 클래스 하위에 PoliceMan을 선언하되, Worker에서 매개변수가 있는 생성자를 선언하여, 하위 클래스에서 호출하여 처리하세요.
class Worker{
	String name;
//	Worker(){}	// 사용자정의 생성자 없을 때, default 생성자
	Worker(String name){
		this.name = name;
	}
	void call() {
		System.out.println(name+"가 일을 합니다.");
	}
	
}
class PoliceOfficer extends Worker {
//	PoliceOfficer(){super();}	// 상위클래스의 default 생성자를 받는 default 생성자 
	PoliceOfficer(){
		super("도우너");
	}
	// 메서드를 상위에서 선언한 내용을 재정의 선언
	void call() {
		super.call(); // 상위에 선언한 call()과 구분. 
		System.out.println(name+"가 순찰을 갑니다.");		// super.call()이 없으면 상위 call() 메서드가 재정의됨
	}
}
class FireFigter extends Worker {
	FireFigter(){
		super("또치");
	}
	void call() {
		super.call();
		System.out.println("화재를 진압합니다.");
	}
}

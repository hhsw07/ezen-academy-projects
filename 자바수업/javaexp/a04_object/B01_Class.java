package javaexp.a04_object;

public class B01_Class {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 선언된 클래스는 main()메서드를 통해서 메모리를 만들고, 호출할 때, 객체가 만들어지고 사용된다.
		// 객체 만들기
		// 1. 클래스명 참조변수 = new 생성자();
		// 하나의 선언된 클래스에서 여러 객체를 다른 heap영역에서 만들어 쓸 수 있다.
		// p1인 경우: instance p1
		// p2인 경우: instance p2
		
		Person p1 = new Person();
		Person p2 = new Person();
		System.out.println(p1);	//클래스(구조)는 같은데 주소가 다름. 즉 설계도는 같으나 서울, 대전 등 다른곳에 건물을 올림.
		System.out.println(p2);
		p1.name = "홍길동";
		p2.name = "김길동";
		System.out.println(p1.name);
		System.out.println(p2.name);
		// ex) Entertainer 클래스 선언하고, 해당 클래스의 field로 name
		// 좋아하는 연예인 3개 객체를 생성하고 이름을 지정하세요.				// 클래스명:Entertainer, 필드명:name
		Entertainer favEnt01 = new Entertainer();
		Entertainer favEnt02 = new Entertainer();
		Entertainer favEnt03 = new Entertainer();
		
		favEnt01.name = "유재석";
		favEnt02.name = "강호동";
		favEnt03.name = "신동엽";
/*
# 객체의 메모리 할당
1. 선언된 class는 new 클래스명()을 통해서 heap영역에 객체가 생성되고, 해당 heap영역의 주소값을 retrun하는데
	이를 저장하는 변수를 instance 변수/ reference 변수라 한다.
2. instance 변수는 클래스명 ins변수로 선언한다.
 */
		System.out.println("객체 생성: "+new Person());		//클래스 선언을 통해 heap영역에 객체 생성
		Person p3 = new Person();		// instance 변수명: p3
		System.out.println(p3);
		
		// 1. 생성자 선언한 객체 생성
		B02_Person bp1 = new B02_Person();
		// 2. 필드(field) 사용
		bp1.name = "홍길동";
		System.out.println(bp1);
		System.out.println(bp1.name);
		// 3. 메서드 사용
		bp1.call();
		
		// ex) Computer클래스 선언, 생성자로 컴퓨터 생성됨@ 출력		//public class 밖에 새로운 class 생성 가능
		//		속성(필드, field) kind, 메서드 operate() 컴퓨터작동 출력
		Computer cp1 = new Computer();
		cp1.kind = "맥북";
		System.out.println(cp1.kind);
		cp1.operate();
		Computer cp2 = new Computer("삼성sens"); // 매개변수:"삼성sens"
		// Computer(String kind)와 void operate()에 영향을 줌
		cp2.operate();
		// ex) Member 클래스를 선언하고, 필드(속성)로 id를 선언
		// 생성자로 문자열을 받아서 id값에 할당하게 처리
		// 메서드로 login()으로 현재 로그인한 id는 @@@ 출력
		Member memId = new Member("naver");
		memId.login();

	}

}

class Computer {
	String kind;		// 필드, 속성
	Computer(){			// 생성자
		System.out.println("컴퓨터 생성됨!");
	}
	// String kind = "삼성sens";
	Computer(String kind){
		// 매개변수로 받은 데이터를 this: 현재 객체의
		// this.kind : 현재 객체가 가지고 있는 멤버중 kind를 지칭
		// 생성자의 문자열kind를 필드(속성) kind 값으로 할당
		this.kind = kind;
		System.out.println(kind+"컴퓨터 생성됨!");
	}
	void operate() {	// 메서드()
		// kind : 필드(field)로 선언된 변수
		System.out.println(kind+"컴퓨터 작동");
	}
}

class Member{
	String id;
	Member(String id){
		this.id = id;
		System.out.println(id+"로그인(생성자)");
	}
	void login() {
		System.out.println("현재 로그인한 id(필드, 속성): "+id);
	}
}
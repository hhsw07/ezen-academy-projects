package javaexp.a04_object;

public class B04_Constructor {
/*
# 생성자
1. new 연산자에 의해 호출되어 객체의 초기화 담당한다.
	1) 필드의 값 설정
	2) 일단 생성된 후, 참조변수로 여러 멤버를 사용할 수 있게 한다.
	
2. 생성자 오버로드이
	1) 오버로딩
		- 생성자나 메서드가 같은 클래스에서 동일한 이름으로 선언 할 수 있는 기준을 말한다.
		- 선언기준: 매개변수 개수 다른 경우
		 		 매개변수 개수가 같더라고 type이 다른 경우
		 		 매개변수 여러개 일 댸, 
3. this 생성자
	1) this: 생성자나 메서드에서 this.필드명 현재 객체의 전역 멤버를 가르킬 때 사용한다.
	2) this.필드명, this.메서드() //필드명과 매개변수가 동일할 때 구분을 위해서 사용
	3) this(입력값): 현재 class에서 선언한 매개변수가 다른 생성자에 데이터를 전달하여 호출 처리
	   this(매개값...)을 통해 선언된 생성자를 호출
	   cf) super(): 상속관계에서 상위 클래스의 생성자 치칭
	   	   this(): 상속관계에 있을 떄, 현재 클래스의 생성자 자칭

 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ChristMas cm1 = new ChristMas(); (X)
		// 사용자 정의 생성자가 매개변수로 선언하는 순간, default 생성자는 사라진다.
		ChristMas cm2 = new ChristMas("2019년 12월 25일");		// 객체 선언(생성)
		System.out.println("멤버의 접근 cm2.date: "+cm2.date);
		System.out.println("메서드 호출 cm2.show()");
		cm2.show();
		
		ChristMas cm3 = new ChristMas();
		ChristMas cm4 = new ChristMas(25);
		ChristMas cm5 = new ChristMas("19년12월25일",25);
		ChristMas cm6 = new ChristMas(25,"19년12월25일");
		
		/*
		ex) Member01 클래스 선언, 속성 dafault, id할당, id와 이름 할당
			id와 숫자비밀번호 할당하여 overloading으로 생성자를 선언하세요.
		 */
		Member01 man01 = new Member01();					// 객체(매개변수)
		Member01 man02 = new Member01("himan1");
		Member01 man03 = new Member01("himan2","둘리");
		Member01 man04 = new Member01("himan3", 30);
		Member01 man05 = new Member01(44, "himan4");

	}

}

class ChristMas{		// 클래스 선언
	String date;		// 필드 선언
	String origin;
	int num;
	// 다른 생성자 없을 시 보이지 않는 default 생성자 선언: public ChristMas(){}
	public ChristMas() {
		System.out.println("생성자 호출");
	}
	// 사용자정의 생성자가 있을 경우 default는 사라지기 때문에 필요시 작성해줘야함
	public ChristMas(String date) {
		this.date = date;
		System.out.println("생성자 호출.(입력값1) "+date);
	}
//	public ChristMas(String date) {}	// 생성자 이름이 같고 매개변수도 동일하여 선언 못함(X)
	
	// 생성자 이름이 같지만 매개변수의 개수가 상이하여 선언 가능(O)
	public ChristMas(String date, int num) {
		this.date = date;
		this.num = num;
		System.out.println("생성자 호출.(입력값2-문자열, 숫자) "+date+", "+num);
	}
	// 생성자 이름이 같지만 매개변수의 타입이 상이하여 선언 가능(O)
	public ChristMas(int num) {
		this.num = num;
		System.out.println("생성자 호출.(입력값3-숫자) "+num);
	}
	// 매개변수의 tpye 순서가 달라 선언 가능(O)
	public ChristMas(int num, String date) {
		this.date = date;
		this.num = num;
		System.out.println("생성자 호출.(입력값4-숫자, 문자열) "+num+", "+date);
	}
	public void show() {
		System.out.println("크리스마스는 "+date+"입니다.");
	}
}

class Member01{								// 클래스 생성(선언)
	String id;								// 필드 생성(선언)
	String name;							// 필드 생성(선언)
	int pass;								// 필드 생성(선언)
	Member01(){								// 생성자 생성
		System.out.println("입력값 없음");
	}
	Member01(String id){					// 생성자 생성
		this.id = id;						// this 생성자
		System.out.println("ID: "+id);
	}
	Member01(String id, String name){		// 생성자
		this.id = id;						// this 생성자
		this.name = name;
		System.out.println("ID: "+id+"\t성함: "+name);
	}
	Member01(String id, int pass){
		this.id = id;
		this.pass = pass;
		
		System.out.println("ID: "+id+"\t비밀번호: "+pass);
	}
	Member01(int pass, String id){
		this.id = id;
		this.pass = pass;
		
		System.out.println("비밀번호: "+pass+"\tID: "+id);
	}
	Member01(String id, String name, int pass){
//		this.id = id;
//		this.name = name;
		// 위와 같이 작성해도 괜찮으나 많은 매개변수를 할당 할 경우 코드가 길어짐
		this(id, name);	// 중복적으로 id, name을 할당할 필요 없이.
						// this(매개값..)을 통해 선언된 생성자를 호출.
		
		
		this.name = name;
		System.out.println("ID: "+id+"\t성함: "+name);
	}
	
}
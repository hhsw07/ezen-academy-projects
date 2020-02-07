package javaexp.a04_object;

class Person2{
	String name1 = "홍길동";
	final String NAME2;
	static final String NAME3 = "홍길동(static final)";
	Person2(String name){
		this.name1 = name;
		this.NAME2 = name;
//		this.NAME3 = name;		// static final은 객체 단위로 할당할 수 없음
	}
}
class Fruit{
	int price1;
	final int PRICE2;
	static final int PRICE3 = 1000;
	Fruit(int price){
		this.price1 = price;
		this.PRICE2 = price;
	}
}
public class B08_StaticFinal {
/*
# 클래스 상수(static final)
1. final은 상수로 변경되지 않는 필드를 의미하며, class 단위 필드인 static을 붙이면 클래스 상수로 사용된다.
2. final 상수는 대문자로 명명하는 것이 관례이다.
3. 합성어의 경우 단어_단어 로 구분하여 선언한다.
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person2 p1 = new Person2("홍길동(p1)");
		System.out.println("변경 전(p1.name1): "+p1.name1);
		System.out.println("변경 전(p1.NAME2): "+p1.NAME2);
		System.out.println("변경 전(p1.NAME3): "+p1.NAME3);
		// final 필드 이더라도 객체 단위로 다른 변수를 할당할 수 있다.
		p1.name1 = "오길동";
//		p1.NAME2 = "마길동";		// 해당필드는 final필드이기 때문에 변경이 불가능 하다.
		System.out.println("변경 후(p1.name1): "+p1.name1);
		System.out.println("변경 후(p1.NAME2): "+p1.NAME2);
		System.out.println();
		Person2 p2 = new Person2("최길동(p2)");
		System.out.println("변경 전(p2.name1): "+p2.name1);
		System.out.println("변경 전(p2.NAME2): "+p2.NAME2);
		p2.name1 = "김길동";
		System.out.println("변경 후(p2): "+p2.name1);
		// static final은 클래스 상수로 한번 클래스에서 초기화 되면 할당 및 병경이 불가능하다.
		// ex) Fruit 클래스 선언하여 price1, PRICE2, PRICE3으로 일반변수, 상수, static final로 선언하여
		//		데이터 할당 변경에 대한 객체와 관계속에 범위를 설정하세요
		
		
		Fruit f1 = new Fruit(500);
		System.out.println("변경전(f1.일반변수): "+f1.price1);
		System.out.println("변경전(f1.상수): "+f1.PRICE2);
		System.out.println("변경전(f1.static final): "+f1.PRICE3);
		f1.price1 = 300;
		// f1.PRICE2 = 300;(X) final은 변경/수정 불가. 
		// Fruit.PRICE3 = 300;(X) 객체 단위로 생성할 수 없고, 변경도 불가능
		
		System.out.println("변경후(f1.일반변수): "+f1.price1);
		System.out.println("변경후(f1.상수): "+f1.PRICE2);
		System.out.println("변경후(f1.static final): "+f1.PRICE3);
		
		Fruit f2 = new Fruit(150);
		System.out.println("변경전(f2.일반변수): "+f2.price1);
		System.out.println("변경전(f2.상수): "+f2.PRICE2);			// final은 새로운 객체에서 새로운 상수로 입력 가능(=초기화 가능)
		System.out.println("변경전(f2.static final): "+f2.PRICE3);// static final은 클래스 전체에서 고정된 상수.
		f2.price1 = 300;
		// f2.PRICE2 = 300;(X), f2.PRICE3 = 300;(X) final은 변경/수정 불가
		System.out.println("변경후(f2.일반변수): "+f2.price1);
		System.out.println("변경후(f2.상수): "+f2.PRICE2);
		System.out.println("변경후(f2.static final): "+f2.PRICE3);
		
	}

}

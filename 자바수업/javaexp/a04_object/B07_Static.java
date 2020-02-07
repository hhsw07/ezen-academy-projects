package javaexp.a04_object;

class Bear{
	int eatCnt;
	static int totCnt;
	String name;
	
	Bear(String name){
		this.name = name;
	}
	void eat() {
		System.out.println(name+"가 "+(++eatCnt)+"개 빵을 먹습니다.");
		System.out.println("전체 곰돌이가 먹은 빵의 개수: "+(++totCnt));
	}
}

public class B07_Static {
/*
# instance 필드/변수: 클래스가 선언되고 객체가 생성될 때, 객체마다 다르게 저장/처리되는 필드/변수
# static 필드/변수: 여러 객체가 생성 되더라도, class단위로 특정 데이터를 저장/처리할 때 사용되는 필드/변수

 */

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Bear b1 = new Bear("첫번째 곰돌이");
		Bear b2 = new Bear("두번째 곰돌이");
		Bear b3 = new Bear("세번째 곰돌이");
		b1.eat();	// eatCnt:1 totCnt:1
		b1.eat();	// eatCnt:2 totCnt:2
		b1.eat();	// eatCnt:3 totCnt:3
		b2.eat();	// eatCnt:1(객체가 바뀌어 b1과 다르게 저장/처리) totCnt:4(class단위로 저장/처리)
		b3.eat();	// eatCnt:2(객체가 바뀌어 b1과 다르게 저장/처리) totCnt:5(class단위로 저장/처리)

	}

}


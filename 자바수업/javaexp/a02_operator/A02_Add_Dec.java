package javaexp.a02_operator;

public class A02_Add_Dec {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 대입 연산자
1. 오른쪽에 있는 데이터를 왼쪽에 특정 변수로 =를 이용하여 할당하는 것을 대입 연산자라고 한다.
# 증감 연산자
1. 데이터를 증가시키거나 감소시키는 연산자.
ex) ++변수, --변수
? 2씩 증가시키는 방법? 5씩 감소하는 방법? -> 대입 연산자 + 증감 연산자를 활용
+=, -=, *=, /= 
 */
		int num01 = 30; // 대입 연산은 오른쪽에서 왼쪽으로 처리가 된다.
		System.out.println("증가:"+(++num01));
		System.out.println("증가:"+(++num01));
		System.out.println("증가:"+(++num01));
		System.out.println("감소:"+(--num01));
		System.out.println("감소:"+(--num01));
		System.out.println("감소:"+(--num01));
		
		num01 = num01 + 3; //num01 데이터에 3를 더해서 다시 num01 데이터에 대입
		num01 += 3; // 위 형식을 축약하여 원하는 단위 만큼 증가, 감소 처리 할 수 있다.
		System.out.println("3씩 증가:"+(num01+=3));
		System.out.println("3씩 증가:"+(num01+=3));
		System.out.println("3씩 증가:"+(num01+=3));
		System.out.println("2씩 감소:"+(num01-=2));
		System.out.println("2씩 감소:"+(num01-=2));
		System.out.println("2씩 감소:"+(num01-=2));
		
/*
예제1. 김밥집에 개당 가격이 1800원이다. 위 증감 연산자를 이용하여 10개 김밥의 가격을 출력 처리 하세요.
	  1개 1800
	  2개 3600
	  ...
*/
		int Cnt = 0;
		int gimbabPrice = 1800;
		int totPrice = 0;
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));
		System.out.println((Cnt+=1)+"개 "+(totPrice+=gimbabPrice));

/*
예제2. 은행에 입금한 금액이 현재 1000000이다. 매일 교통비로 3600씩 차감되는 내용을 00일 현잔액 000으로 출력하시오
예제3. 1부모 세대가 2명 자녀를 가진다면, 세대별로 자녀 총수를 출력하시오
	  1세대 2명
	  2세대 4명
	  ...
*/
		//예제2
		int rest = 1000000;
		int day = 1;
		int cost = 3600;
		System.out.println((day++)+"일 현잔액 "+(rest-=cost));
		System.out.println((day++)+"일 현잔액 "+(rest-=cost));
		System.out.println((++day)+"일 현잔액 "+(rest-=cost));
		
		//예제3
		int generation = 0; // 세대
		int children = 2; // 각 부모 세대가 가지는 자녀수
		int people = 1; // 자녀 총수
		System.out.println((++generation)+"세대 "+(people*=children)+"명");
		System.out.println((++generation)+"세대 "+(people*=children)+"명");
		System.out.println((++generation)+"세대 "+(people*=children)+"명");
		System.out.println((++generation)+"세대 "+(people*=children)+"명");
		
	   
		
	}

}

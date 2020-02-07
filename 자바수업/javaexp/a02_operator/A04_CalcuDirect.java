package javaexp.a02_operator;

public class A04_CalcuDirect {
/*
# 연산자 방향
1. 비교연산자, 논리 연산자, 산술(사칙+나머지)연산자: 왼쪽에서 오른쪽진행한다.
   ex) 100 * 2 / 3 % 5 (왼쪽에서 오른쪽)
   ex) pt>=80 && pt<90
2. 대입연산자: 
   ex) int num01 = 30;
   ex) int num02;
   ex) int num03;
   ex) num03 = num02 = num01 // num01dl 30으로 오른쪽에서 왼쪽 대입되어 할당 한다.

# 연산자 우선순위
0. 우선순위의 최상위는 ()
1. *, / 같은 우선 순위
2. +, - 같은 우선 순위

# 단항 연산자: 피연산자(변수)가 1개인 연산자.
   ex) cnt++, --num01 등등
# 이항 연산자: 피연산자(변수)가 여러개로 연산 결과값을 처리하는 연산자.(산술, 대입, 비교, 논리 연산자)
   ex) num01+num02, "안녕"+"하세요", num01+=5;, age>=30,
   
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println(2+1*3); // + 보다 *가 우선한다.
		System.out.println((2+1)*3); // ()가 우선한다.
		
		//대입 연산자는 왼쪽에서 오른쪽을 할당
		int num01 = 30;
		int num02;
		int num03;
		int num04;
		
		num04 = num03 = num02 = num01;
		System.out.println("num01 :"+num01);
		System.out.println("num02 :"+num02);
		System.out.println("num03 :"+num03);
		System.out.println("num04 :"+num04);
		
		
	}

}

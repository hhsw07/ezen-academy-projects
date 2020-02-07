package javaexp.a03_controller;

public class A01_Start {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 코드 실행과 흐름 제어
1. main() 안에서 코드는 기본적으로 중괄호 위에서 아래로 실행된다.
2. 제어문
	- 코드 샐행 흐름을 개발자가 원하는 방향으로 변경할 수 있도록 도와주고 있다.
3. 제어문의 종류
	1) 조건문: 특정한 조건일 때만 처리해주는 구문
		if(), switch()문
	2) 반복문: 특정한 조건일 때까지 반복처리해주는 구문
		for, while, do-while
	3) break, continue: 조건문, 반복문에 대한 제어를 하는 구문.
4. 제어문의 중첩: 제어문의 중괄호 내부에 따른 제어문을 작성 가능하다. 제어문의 제어문이라고 할 수 있다.
 */
		
		System.out.println("실행 1 line");
		if(false) { // 조건에 의해서 실행 흐름을 제어 한다.
		System.out.println("실행 2 line");
		}	
		System.out.println("실행 3 line");
		
		for(int cnt=1;cnt<=5;cnt++) { // cnt 1부터 5까지 반복
			
			if(cnt==4) {
				break; // 완전히 반복 중단 (for 블록을 벗어남)
			}
			if(cnt==2) {
				continue; // 현재 step 중단(아래 출력 단계를 건너 뛰고 반복문 처음으로 이동), 다음 step 진행
			}
			System.out.println("실행 4 line ["+cnt+"]");
		}
		System.out.println("실행 5 line");
		System.out.println("실행 6 line");
		System.out.println("실행 7 line");
		
	}

}

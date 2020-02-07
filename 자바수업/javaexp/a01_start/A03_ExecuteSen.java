package javaexp.a01_start;

public class A03_ExecuteSen {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 실행문과 세미콜론(;)
1. 실행문
 	변수 선언, 값 저장, 메소드 호출에 해당하는 코드
 	실행문 끝에는 반드시 세미콜론(;)을 붙여 실행문의 끝이라는 것을 표시한다.
*/
/*
  print () : 출력후 줄을 바꾸지 않는다.
  println() : 출력후 줄을 바꾼다
  printf("출력서식",(변수)) : 서식이 있는 출력
*/
		
	int num01; // 정수형 변수 num01을 선언한다.	
	num01 = 25;	// 변수 num01에 25 값을 저장한다.
	System.out.println(num01); //변수 num01을 메서드 System.out.println()로 출력한다.
	int num02= 30; //선언과 저장을 동시 처리
	int num03= num01+num02; //상단에 선언한 변수를 새로운 변수 num03에 할당 처리한다.
	System.out.println("합산은 " +num03); //원하는 출력을 결과물로 출력 처리
	
	//ex) A04_Execute.java를 클래스로 만들고 
	//	    사과의 갯수를 변수로 선언과 할당,
	//	    바나나의 갯수를 변수로 선언과 할당, 두 개의 변수를 합쳐서 fruit로 만들고 출력처리 하세요.
	int apple = 2;
	int banana = 3;
	int fruit = apple+banana;
	System.out.println("과일의 합산: " +fruit);
	
	
	
	}

}

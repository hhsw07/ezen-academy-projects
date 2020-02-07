package javaexp.a01_start;

public class A04_VarDeclare {
//	field 선언 : 전역 변수로 클래스의 모든 영역에서 사용된다.
	int num01;
	
	void call(String name) {//매개변수로 지역변수 이다.
		num01 = 30;
		int locNum02 = 30;
		System.out.println("매개변수 이름:"+name);
	}
	void call2() {
		System.out.println("숫자:"+num01);
//		System.out.println("숫자:"+locNum02);
//		locNum02는 call() 안에서만 사용되고, call()을 벗어나면 사용될 수 없다.
//		name = "마장동";(X) call()의 매개변수로 사용된 변수는 불러오거나 사용 될 수 없다.
		
		while(true) {
			int num09=25;	
		}
//			int num09=50;(X) while문을 벗어나면 사용되지 못 한다.
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

// 정수변수 선언 int, 실수변수 선언 double, 문자열변수 선언 String 등등
/*
 # 변수명 선언 규칙
1. 변수명은 특수문자를 사용하지 않아야 한다.
	단, $와 _ 는 허용한다.
2. 변수명은 숫자로 시작 할 수 없다.
      시작만 안되며, 중간과 마지막에는 사용 가능하다.
3. 자바의 예약어(if, for, break, continue 등등)로 사용 할 수 없다.
      예약어에서 벗어나기 위해서 마지막에 숫자를 입력하는 경우도 있다.
4. 합성어인 경우, 구분되는 첫자를 대문자로 한다.(관례)


 */
	int num01;
//  String name#; (X) 특수문자# 사용으로 인한 오류
	String $name;
	double num_db;
//	String 10num; (X) 시작으로 숫자를 사용 할 수 없다.
	int num88_gogo; //중간 및 마지막에는 숫자를 사용 할 수 있다.
//	inf if;(X)
//	String for;(X)
	int if01; String for99;
	int age; int AGE; //대소문자 구분하여 변수를 식별
	String setName; //합성어는 구분되는 첫자를 대문자로(관례)
//	중급이상 개발이 복잡해지면, 변수와 주석문을 효율적으로 활용하는 지에 따라 프로그래밍이 빨리 파악되어진다.

/*
# 리터럴 25, 30, "홍길동"
1. 소스 코드 내에서 직접 입력된 변수의 초기값
2. 정수리터럴, 실수리터럴, 문자리터럴, 문자열리터럴, 논리리터럴

# 변수 사용 범위
1. 전역 변수
	클래스명 바로 밑에 선언하여, 클래스 통해서 생성된 객체의 모든 영역에 영향을 미치는 변수를 말한다.
	(Field라는 개념으로
2. 지역 변수
	조건문 if블럭, for블럭, 중괄호({}), 메서드 안에서 선언된 변수로 해당 블럭을 벗어 나면 활용되지 못한다.
 */
	
	}

}

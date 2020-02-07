package javaexp.a04_object;
/*
# 메소드란?
1. 객체의 동작(기능)을 처리하는 기능 함수.
ex) 자판기(함수)에 동전(매개변수)를 넣고, 버튼을 누르면(매개변수) 음료수 및 잔돈(리턴값)이 나옴
2. 호출해서 실행할 수 있는 중괄호{} 블록을 사용한다.
3. 메소드를 호출하면 중괄호{} 블록에 있는 모든 코드들이 일괄 실행한다.
4. 메소드 선언 기본 형식
	리턴타입 메서드이름(매개변수1, 매개변수2...){
		처리할 내용...
		return 리턴타입유형에할당할데이터;
	}
	ex) int plus(int num01, int num02){ 	리턴타입(int) 메서드이름(plus) 매개변수(num01, num02)
			return num01+num02;				리턴타입유형에할당할데이터(num01+num02)
		}
	리턴타입은 기본 primitive 데이터 유형, 객체 유형, 배열, void(리턴되는 값이 없을 때)
5. 메소드도 매개변수의 입력값 개수, type, 순서에 따라 동일한 이름의 메서드가 하나의 클래스에서 선언이 가능하다.
	메소드 오버로딩(Method Overloading) *생성자 오버로딩 있음
	

ex1) class Calcu에 정수, 실수값을 입력 받아, 소숫점과 나눗셈처리하여 실수값을
	 return하는 메서드 선언(div)
ex2) 숫자 2개를 입력받아서 @@ + @@ = @@라는 문자열을 리턴하는 메서드 선언
ex3) 숫자값 1개를 입력받아 10000 이상인지 여부에 따른 boolean값 리턴 처리
ex4) id, pass 입력받아 himan/777 이면 로그인 성공 문자열 return, 실패하면 로그인 실패메세지	
	
 */
class Calcu{
	int plus(int num01, int num02) {
		return num01+num02;
	}
	
	int plus(int num01) {
		return this.plus(num01,0);		//this()를 이용하여 plus(a,b) 호출
	}
	//this.plus(num01,0) : 현재 객체의 메서드 plus()의 num01 데이터를 전달
	
	void show() {
		System.out.println("출력만 하는 메서드.");
	}
	// ex1)
	double div(int num01, double num02) {
		return num01/num02;
	}
	// ex2)
	String multiStr(int num01, int num02) {
		return num01+" * "+num02+" = "+(num01*num02);
	}
	// ex3)
	boolean isUpto10000(int num01){
		return num01>10000;
	}
	// ex4)
	String login(String id, int pass) {
		if(id.equals("himan") && pass == 777) {
			return "로그인 성공";
		}else {
			return "로그인 실패";
		}
	}
	// 삼항연산자 활용
	String login1(String id, int pass) {
		return (id.equals("himan") && pass == 777)?"로그인 성공":"로그인 실패";
	}
/*
	double callExp(int num01, int num02){
		return num01*num02;
	} 작은 데이터 타입에서 큰 데이터 타입으로 자동 형변환(Promote)
	int call(){
		return (int)3.4;
	} 큰 데이터 타입에서 작은 데이터 타입으로 수동 형변환(Casting) 필요
 */
	
}
public class B06_Method {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calcu c1 = new Calcu();
		System.out.println("c1.plus(25,30): "+ c1.plus(25, 30));
		int num01 = c1.plus(25, 30);
		System.out.println(num01+10);
//		String srt1 = c1.show(); : 리턴값이 없으므로 에러발생
		c1.show();
		
		// ex1)
		double num02 = c1.div(100, 6);
		System.out.printf("c1.div(100, 6): %.2f\n", num02);
		// ex2)
		String str1 = c1.multiStr(20, 5);
		System.out.println("c1.multiStr(20, 5): "+str1);
		// ex3)
		boolean boo1 = c1.isUpto10000(15000);
		System.out.println("c1.isUpto10000(15000): "+boo1);
		// ex4)
		String str2 = c1.login("himan", 777);
		System.out.println("c1.login(\"himan\", 777): "+str2);
		String str3 = c1.login("higirl", 776);
		System.out.println("c1.login(\"higirl\", 776): "+str3);

	}

}


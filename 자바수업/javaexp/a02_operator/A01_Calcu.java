package javaexp.a02_operator;

public class A01_Calcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 연산이란?
1. 데이터를 처리하여 결과를 산출하는 것을 말한다.
ex) int num05 = 25 + 30;
2. 연산자(Operations): 연산에 사용되는 표시나 기호를 말한다.
ex) +, -, *, /, %, =, !=, >=,...
3. 피연산자(Operand): 연산 대상이 되는 데이터를 말한다.
ex) int num06 = 30 + num05;
	30, num05는 연산의 대상이 되는 데이터이다.
4. 연산식: 연산자와 피연산자를 이용하여 연산의 과정을 기술하는 것을 말한다.
ex) boolean isPass = point >= 60;
	point변수와 60이라는 리터럴 상수를 이용하여, 비교연산자 >=와 함게 연산식을 구성할 수 있다.
	
 */

/* 다음의 내용을 변수, 연산자, 피연산자를 이용하여 연산식을 만들어보시오.	
예제1. 곰돌이 3마리가 각각의 빵 3, 5, 7개를 가지고 있다. 총 빵의 갯수를 연산식으로 처리하시오.
예제2. 쇼핑몰에서 30000원의 액세서리를 5개 구매하였다. 총 비용을 연산식으로 코드화 하시오.
예제3. 친구 5명이 함께 음식점에서 식사를 하고 총 비용이 100000원이 나왔다. 각 개인이 비용할 금액을
	   연산식으로 처리하시오.

*/
		
		// 예제1
		int bb01 = 3;
		int bb02 = 5;
		int bb03 = 7;
		int totalBB = bb01 + bb02 + bb03;
		
		//예제2
		int acPrice = 30000;
		int acCnt = 5;
		int shoppingTot = acPrice * acCnt;
				
		//예제3
		int totalPrice = 100000;
		int friendCnt = 5;
		int eachPrice = totalPrice / friendCnt;
		
		System.out.println("총 빵의 갯수:"+totalBB);
		System.out.println("총 비용:"+shoppingTot);
		System.out.println("개인의 비용:"+eachPrice);
		
/*
# 산술 연산자
1. 종류: +, -, *(곱셈), /(나눗셈), %(나머지 연산자)
예제4. 10개의 빵을 곰 3마리에게 나누어 준 후, 남은 빵의 갯수를 구하시오.
 */
		int breadCnt = 10;
		int bearCnt = 3;
		int restBreadCnt = breadCnt % bearCnt;
		System.out.println("남은 빵의 갯수:"+restBreadCnt);
		
/*
2. 부호 연산자: 특정 변수에 부호(+,-)를 붙여서 부호를 변경할 때 사용한다.
예제5. 은행에 1000000이 임금되어 있다.매월 500000원 씩 저축하고, 300000원 씩 생활비로 사용된다.
	   부호연산자를 이용하여 위 내용을 코드화 하시오.
 */
		int num05 = 3000;
		int num06 = -num05;
		int num07 = -50;
		int num08 = -num07;
		int num09 = +num05;
		System.out.println("num05 음의 부호:"+num06);
		System.out.println("num07 음의 부호:"+num08);
		System.out.println("num05 양의 부호:"+num09);
		
		//예제5
		int firstBank = 1000000;
		int saveMoney = +500000;
		int useMoney = -300000;
		int month = 2;
		int nowBank = firstBank + (saveMoney + useMoney) * month;
		System.out.println("현재 은행의 잔고:"+nowBank+"원");
		
		int rest = firstBank;
		rest = rest + saveMoney;
		System.out.println("입금1: "+rest);
		rest = rest + saveMoney;
		System.out.println("입금2: "+rest);
		rest = rest + useMoney;
		System.out.println("출금1: "+rest);
		rest = rest + useMoney;
		System.out.println("출금2: "+rest);

/*
# +의 문자열에서의 연산자 기능
1. "문자열1" + "문자열2"는 문자열을 이어주는 역할을 한다.
2. "문자열" + 숫자: 앞에 문자열이 있으면 숫자도 문자열로 인식하여 문자열숫자 형태로 이어져서 처리된다.
3. 숫자 + 숫자 + "문자열": 문자열 전에 숫자가 나오면 일단 숫자를 연산한 후에 문자열을 이어준다.
4. "숫자형문자열" + "숫자형문자열": 숫자형문자열은 연산이 아닌 이어주는 처리가 되며, 연산 하려면 숫자형으로
	변환하는 기능메서드를 이용하여 처라 후에 연산을 한다.
 */
// sysout + ctrl + space: 출력 처리 자동 소스 로딩
// ctrl + alt + 화살표아래 : 해당 라인 복사 처리

		System.out.println("안녕"+"하세요");
		System.out.println("안녕"+25+30);
		System.out.println(25+30+"안녕");	
		System.out.println("25"+"30");
		
		System.out.println(Integer.parseInt("50")+Integer.parseInt("70"));

		double num01 = Double.parseDouble("50.8");
		double num02 = Double.parseDouble("70.8");
		System.out.println(num01+num02);
		// 외부에서 사용자 인터페이스에 의해서 입력되는 데이터는
		// 대부분 문자열이기 때문에 위와 같은 코드 변환이 필요하다.
		
/*
예제6. 생년을 문자열로 데이터 선언하고 올해를 숫자로 변수를 선언한 후, 올해 만 나이를 형변환에 의해 출력하시오.
 */
		//예제6.
		String birthyear = "1988";
		int thisyear = 2019;
		int age = thisyear - Integer.parseInt(birthyear);
		System.out.println("태어난 연도: " + birthyear);
		System.out.println("올해 만 나이: " + age);
		
		}

}

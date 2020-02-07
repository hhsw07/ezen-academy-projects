package javaexp.a01_start;

public class A05_DataType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 데이터 타입
1. primitive data type
	1) 기본 데이터 유형으로 메모리기준 stack영역에 데이터가 직접 할당되는 것을 말한다.
	2) 종류
		- 정수형 : byte < char < short(2byte) < int*기본형(4byte) < long(8byte)
		- 실수형 : float(4byte) < double*기본형(8byte)
		- 논리형 : boolean(1byte)
 */
		byte num01 = 30; // -128~127까지 8개 bits가 모여서 1byte
		char char01 = 'A'; // 문자 한개를 할당하는 데이터 type
		int code01 = (int)char01;
		// uni code 값을 가지고 있다.
		System.out.println("문자:"+char01);
		System.out.println("코드값:"+code01);
		int code02 = 77;
		char char02 = (char)code02;
		System.out.println("문자:"+char02);
		System.out.println("코드값:"+code02);
		
		long num02 = 2433333L; // 정수형 int와 구분하기 위해 가장 마지막에 L을 사용한다.
		float float01 = 45.75F; // 
		double dbl01 = 70.888; // 실수형의 기본형
		System.out.println("long 값:"+num02);
		System.out.println("float 값:"+float01);
		System.out.println("double 값:"+dbl01);
		
		boolean isPass = true;
		int passPt = 60;
		int pt = 70;
		boolean isGo = pt<passPt;
		System.out.println("논리값1:"+isPass);
		System.out.println("논리값2:"+isGo);
		
/*
2. 형변환 처리
	1) 자동 형변환(promote): 작은 데이터 type에서 큰 데이터 type으로 
	할당할 때, 다른 코드 없이 자동으로 할당 되는 것을 말한다.
	2) 강제 형변환(casting): 큰 데이터 type에서 작은 데이터 type으로
	할당하는 것을 말하고, 작은 데이터 type에 할당되기에 특정 데이터가 유실이
	발생하고, 처리하는 코드도 casting을(작은데이터) 형식으로 처리하여야 한다.
	
 */
		// promote
		int num05 = 25;
		double num06 = 30.5 + num05;
		// casting
		double num07 = 50.7;
		//(작은데이터type): 반드시 할당할 데이터 유형에 대한
		int num08 = (int)num07;
		// 에러시에는 컴파일로 class 파일이 만들어 지지 않기 때문에
		// 실행하면 이전에 컴파일된 내용으로 실행되는 경우가 많다.
		// 반드시, 에러 내용을 없애고 저장
		System.out.println("promote 후 데이터:"+num06);
		System.out.println("casting 후 데이터:"+num08);
		
				
	}

}

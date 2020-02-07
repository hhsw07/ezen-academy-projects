package javaexp.z01_util;

import java.util.Scanner;

public class A02_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 입력 처리 : System.in
		// 출력 처리 : System.out
		// Scanner 객체와 System.in을 통해서 효과적으로 
		// Console에서 입/출력을 처리할 수 있게 해준다.
		// 1. 객체 생성과 입력 매개변수 설정.
		//	1) 내장된 객체를 import 처리..
		Scanner sc = new Scanner(System.in);
				
		// 2. 문자열을 입력받아서 처리
		/* 단어입력(공백전까지) .next()
		   Scanner sc = new Scanner(System.in);
		   String (입력 받은 데이터 받을 변수) = sc.next();
		   String (입력 받은 데이터 받을 변수) = sc.nextLine();
		   int (입력 받은 데이터 받을 변수) = sc.nextInt();
		   double (입력 받은 데이터 받을 변수) = sc.nextDouble();
		 * 
		 * 
		 * 
		 * 
		 * 
		System.out.print("이름입력:"); 		// print 현재라인에서 문자입력
		String name = sc.next();
		System.out.println("입력 받은 문자열: "+ name);
		System.out.println("사는곳을 입력: ");  // println 줄을 바꾸어 문자 입력
		String loc = sc.next(); 			// 한 단어로 입력..
		System.out.println("입력 받은 사는곳: "+loc);
		*/
		
		/* 라인별 입력(enter까지) .nextLine()
		System.out.println("간단한 인사말 입력하세요");
		String lineIn1 = sc.nextLine();
		System.out.println("입력한 인사말: "+lineIn1);
		System.out.println("목적지를 입력하세요.");
		String lineIn2 = sc.nextLine();
		System.out.println("입력한 인사말: "+lineIn2);
		*/
		/* 정수형 데이터 입력 .nextInt()
		System.out.print("첫번째 숫자 입력: ");
		int num01 = sc.nextInt();
		System.out.print("두번째 숫자 입력: ");
		int num02 = sc.nextInt();
		System.out.println("## 연산 결과 ##");
		System.out.println(num01 + " + " + num02 + " = " + (num01 + num02));
		*/
		/* 실수형 데이터 입력 .nextDouble()
		System.out.print("첫번째 사람 키입력: ");
		double height01 = sc.nextDouble();
		System.out.print("두번째 사람 키입력: ");
		double height02 = sc.nextDouble();
		double avgHeight = (height01 + height02)/2;
		System.out.println("평균 키: "+ avgHeight + "cm");
		*/
		
		// ex1) 특정한 사람의 이름, 나이, 사는 곳을 입력 받아 출력하세요.
		/*
		System.out.print("당신의 이름을 입력하세요: ");
		String name = sc.next();
		System.out.print("당신의 나이를 입력하세요: ");
		String age = sc.next();
		System.out.print("당신의 사는곳을 입력하세요: ");
		String loc = sc.next();
		
		System.out.println("이름: "+name);
		System.out.println("나이: "+age);
		System.out.println("사는곳: "+loc);
		*/
		
		
		// ex2) 학생의 국어, 영어, 수학 점수를 입력 받아 출력하되,
		//		총점과 평균도 출력하세요.
		
		System.out.print("당신의 국어 점수를 입력하세요: ");
		int kor = sc.nextInt();
		System.out.print("당신의 영어 점수를 입력하세요: ");
		int eng = sc.nextInt();
		System.out.print("당신의 수학 점수를 입력하세요: ");
		int math = sc.nextInt();
		int total = kor + eng + math;
		double avg = total / 3.0; //평균의 소수점 이하 내용을 처리 할 때(*, / 시) 반드시 소숫점 이하로 하는 피연산자로 사용하여야 한다.
		// 정수/정수, 정수*정수 ==> 정수형
		// 정수/실수, 실수*정수 ==> 실수형
		System.out.println("국어: "+kor+" 영어: "+eng+" 수학 : "+math+" 총점: "+total+" 평균 :"+avg);
		// %자리수.소수점이하자리수f : 실수데이터
		// %자리수d : 정수데이터
		// %s : 문자열데이터
		// printf("출력서식",출력내용) \n 줄바꿈 \t 탭간격
		System.out.printf("총점: %d "+"평균: %.2f", total, avg);

	}

}

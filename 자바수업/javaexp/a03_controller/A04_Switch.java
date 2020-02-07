package javaexp.a03_controller;

import java.util.Scanner;

public class A04_Switch {
/*
# switch문 처리..
1. 변수나 연산식의 값에 따라 실행문을 선택할 때 사용한다.
2. 기본형식
	switch(변수){
		case 변수의 값1:
			처리할 구문...
			break;	// break를 통해서 switch의 블록block{}을 벗어난다.
		case 변수의 값2:
			처리할 구문...
			break;
		...
		default:
			위 나열된 case에 해당하지 않을 때 처리할 구문
	}
*/
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int btnNum = 5;
		System.out.println("선택한 버튼 번호: " + btnNum);
		switch( btnNum ) {
			case 1:
				System.out.println("A번 구역에 불이 켜졌습니다.");
				break;
			case 2:
				System.out.println("B번 구역에 불이 켜졌습니다.");
				break;
			case 3:
				System.out.println("C번 구역에 불이 켜졌습니다.");
				break;
			default:
				System.out.println("버튼은 1~3까지만 입력할 수 있습니다.");
		}
		// ex) 월별 마지막 날짜 처리..
		//		확인할 월을 입력하세요. : @@@
		//		@@월 @@일까지 입니다.  switch case문으로 처리하세요.
		
		Scanner sc = new Scanner(System.in);
		System.out.print("날짜를 확인할 월을 입력하세요. : ");
		int month = sc.nextInt();
		
		switch(month) {
			case 1:
				System.out.println(month+"월 31일까지 입니다.");
				break;
			case 2:
				System.out.println(month+"월 28일까지 입니다.");
				break;
			case 3:
				System.out.println(month+"월 31일까지 입니다.");
				break;
			case 4:
				System.out.println(month+"월 30일까지 입니다.");
				break;
			case 5:
				System.out.println(month+"월 31일까지 입니다.");
				break;
			case 6:
				System.out.println(month+"월 30일까지 입니다.");
				break;
			case 7:
				System.out.println(month+"월 31일까지 입니다.");
				break;
			case 8:
				System.out.println(month+"월 31일까지 입니다.");
				break;
			case 9:
				System.out.println(month+"월 30일까지 입니다.");
				break;
			case 10:
				System.out.println(month+"월 31일까지 입니다.");
				break;
			case 11:
				System.out.println(month+"월 30일까지 입니다.");
				break;
			case 12:
				System.out.println(month+"월 30일까지 입니다.");
				break;
			default:
				System.out.println("1~12 사이의 숫자를 입력하세요.");
		
		}
		switch(month) {
		// break가 나타날 때 까지 계속 수행도기 때문에
		// 31, 30, 28에 해당하는 날짜 마지막에 break; 처리
		case 1:
		case 3:  
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			System.out.println(month+"월 31일까지 입니다.");
			break;
		case 2:
			System.out.println(month+"월 28일까지 입니다.");
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			System.out.println(month+"월 31일까지 입니다.");
			break;
		default:
			System.out.println("1~12 사이의 숫자를 입력하세요.");
	
	}
		
		
		
		
	}

}

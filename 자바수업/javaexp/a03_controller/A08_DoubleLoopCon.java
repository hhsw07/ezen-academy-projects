package javaexp.a03_controller;

import java.util.Scanner;

public class A08_DoubleLoopCon {
/*
# 중첩 반복문과 중첩 조건문
1. 반복문 안에 반복문 수행 처리
	ex) 구구단 전체를 출력하려면
	2 ~ 9 단수를 처리하는 중에
	1 ~ 9 카운트를 처리
	1) 기본 형식
		for(){
			for(){
			}
		}

2. 조건문 안에 조건문 수행 처리
	ex) 성인여부를 구분하고, 남여를 구분하여 처리 결과를 다르게 할 때
	1) 기본 형식
		if(성인여부 조건){
			if(남여 구분 조건){
			
			}else{
			
			}
		}else{
			if(남여 구분 조건){
			
			}else{
			
			}
		}
3. 너무 많은 중첩 반복문, 중첩 조건문보다는 더 간단한 코드 구성이 필요함.
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 구구단 처리(세로)
		for(int grade = 2;grade <= 9; grade++) {
			System.out.println("# "+grade+"단 #");
			for(int cnt = 1; cnt <=9; cnt++) {
				System.out.println(grade+" X "+cnt+" = "+(grade*cnt));
			}
		}
		// ex) 옆으로 나열된 구구단 처리
		// 2단 3단 4단
		// 2*1=2 3*1=3
		// 2*2=4 3*2=6
				
		for(int cnt = 0;cnt <= 9; cnt++) {  //**cnt = 0 은 단을 나타내는 title 처리
			for(int grade = 2; grade <=9; grade++) {
				if(cnt == 0) {
					System.out.print("# "+grade+"단 #\t"+"\t");
				}else {
				System.out.print(grade+" X "+cnt+" = "+(grade*cnt)+"\t");
				}
			}
			System.out.println();
		}
		
		//ex) 나이에 따른 성인여부를 check하고, 남녀를 check하여 출력처리
		int age = 25;
		char gender = '여';
		// 문자는 'A', 문자열은 문자의 배열 "A"
		// 문자는 그래도 stack에 할당, 문자열은 객체로 heap영역에 할당
		if(age >= 20) {
			System.out.println("성인입니다.");
			if(gender == '남') {	// 문자는 stack에 할당되어 == 비교 가능. (문자열1).equals(문자열2)은 문자가 아닌 문자열 비교
				System.out.println("신사분 입장입니다.");
			}else {
				System.out.println("숙녀분 입장입니다.");
			}
		}else {
			System.out.println("미성년입니다.");
			if(gender == '남') {
				System.out.println("소년 입장입니다.");
			}else {
				System.out.println("소녀 입장입니다.");
			}
		}
		// ex) 요일을 입력받고, age를 입력받아
		//				   age가 4세미만 65이상 무료
		//	      평일 20% 할인
		//	      토/일 전액
		//1. 나이에 다라 무료인지, 유료인지 구분하고
		//2. 유료일 때만 평일인지/ 주말인지 구분하여 할인여부 출력
		
		Scanner sc = new Scanner(System.in);
		
		age = 20;
		String day;
		System.out.print("나이를 입력하세요.");
		age = sc.nextInt();
		
		if(age<4 || age >=65) {
			System.out.println("무료입니다.");
		}else {
			System.out.print("요일를 입력하세요.");
			day = sc.next();
			if(day.equals("토") || day.equals("일")) {
				System.out.println("전액 비용입니다.");
			}else {
				System.out.println("20% 할인입니다.");
			}
			
			switch(day) { 	// switch문을 이용할 경우
				case "토":
				case "일":
					System.out.println("전액 비용입니다.");
					break;
				default:
					System.out.println("20% 할인입니다.");
			}
			
		}
		
		
		
		
		
	}

}

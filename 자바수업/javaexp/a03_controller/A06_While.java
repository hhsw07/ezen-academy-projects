package javaexp.a03_controller;

import java.util.Scanner;

public class A06_While {
/*
# while문: 조건에 따라 반복을 계속 할지 결정할 때, 사용되는 구문
1. 기본 형식
	while(boolean조건){
		조건이 true일 때, 반복할 구문 처리..
	}
# do while문: 조건에 상관없이 do{}블럭을 일단 1번은 수행한 후 반복 조건을 check해서 true일 때, 반복처리하는 구문.
1. 기본 형식
	do{
		1번 이상 반복할 내용 처리: 반드시 1번은 수행한다.
	}while(반복조건)
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		int cnt = 1;
		while(cnt<=10) {
			System.out.println((cnt++)+"번째 만남");
		}
		*/
		Scanner sc = new Scanner(System.in);
		/*
		while(true) {
			System.out.print("메뉴를 주문하시겠습니까? ");
			String chMenu = sc.nextLine();
			System.out.println("주문하신 메뉴는 "+ chMenu);
			System.out.print("계속하시겠습니까?(Y/N): ");
			String isYN = sc.nextLine();
			// 문자열1.equals(문자열2): 문자열1과 문자열2를 비교하여 동일값일때 true
			if(isYN.equals("N")) {
				//반복문을 종료 처리
				break;
			}	
		}
		System.out.println("주문 종료");
		*/
		
		// ex) while문을 이용해서, 2의 배수를 1~20까지 출력하세요
		int cnt02 = 1;
		System.out.println("2의 배수를 1~20까지 출력");
		while(cnt02 <= 20) {
			if(cnt02%2 == 0) {
				System.out.print(cnt02+" ");
			}
			cnt02++;
		}
		
		// ex) while문으로 9단을 반대로 출력하세요.
		//	9 * 9 = 81
		//	9 * 8 = 72
		//	...
		//	9 * 1 = 1
		
		System.out.println();
		
		int grade = 9;
		int cnt03 = 9;
		System.out.println("9단을 반대로 출력");
		while(cnt03>=1) {
			System.out.println(grade+" * "+cnt03+" = "+(grade*cnt03));
			cnt03--;
		}
		
		/*
		int cnt = 1;
		do {
			System.out.println("Brazing Friday!! ["+ (cnt++)+"]");
		}while(cnt<=10);
		cnt = 11;
		do {
			// cnt 조건이 맞지 않더라도 한번은 수행한다.
			System.out.println("NEW ## Brazing Friday!! ["+ (cnt--)+"]");
		}while(cnt<=10 && cnt >= 0);		
	
		String isContinue = "";
		do {
			System.out.println("어서오세요!!");
			System.out.println("Coffee Shop에 오신 것을 환영합니다.");
			System.out.print("방문을 계속하시겠습니까? (Y/N)");
			isContinue = sc.nextLine();			
		}while(isContinue.equals("Y"));
		System.out.println("커피숍에서 나온다.");
		*/
		
		// ex) 회원정보를 등록하시겠습니까?
		// 값이 없으면 벗어나고, 값이 입력되면 계속 등록된 정보를 입력받아서 출력처리
		// info.length() : 문자열의 크기. 입력하지 않고 enter 처리시는 0, 그 외에서 문자크기 입력.
		// info.length() == 0 로 조건 처리
		// System.out.println("등록내용: "+info == null);
		// System.out.println("등록내용: "+info.length());
		
		String regInfo = "## 등록한 회원정보를 저장 ##\n";
		int cnt = 1;
		String info = null;
		do {
			System.out.print("회원정보를 등록(종료시 enter): ");
			info = sc.nextLine();
			if(info.length() > 0) {
				regInfo+=(cnt++)+")"+info+"\n";
			}
		}while(info.length()>0);
		// 등록된 정보를 처리..
		System.out.println(regInfo);
	}
	
}

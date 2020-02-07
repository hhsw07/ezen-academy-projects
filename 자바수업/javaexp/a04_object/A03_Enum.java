package javaexp.a04_object;

import java.util.Scanner;

public class A03_Enum {
/*
# 열거 타입의 활용
1. 열거 타입 변수 선언
	1) 열거타입 변수
		ex) Week today;
	2) 열거 상수 값 저장
		열거타입 변수 = 열거타입.열거상수
		ex) Week today = Week.SUNDAY;
	3) 열거 타입 변수 초기화
		ex) Week birthday = null;
2. 열거 객체의 메소드 활용
	1) 열거 객체는 열거 상수의 문자열을 내부 데이터로 가지있다.
	2) 사용 메서드
		name() : 열거 객체의 문자열을 리턴 						// 선언된 열거상수를 문자열로 가져오는 처리
		ordinal() : 열거 객체의 순번(0번부터 시작)을 리턴
			- 0,1,2,...열거 객체의 길이-1
		compareTo() : 열거 객체를 비교해서 순번 차이를 리턴
		valueOf(String name) : 주어진 문자열의 열거 객체를 리턴		// 해당하는 열거 객체를 가져오는 처리
		values() : 모든 열거 객체들을 배열로 리턴
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Week today = null;
		today = Week.TUESDAY;				// 실제로는 Week.TUESDAY의 참조 주소값이 복사되어 있음
		System.out.println(today);
		System.out.println("데이터1: "+today);
		Week choDay = Week.SUNDAY;
		String name = choDay.name();
		String name2 = "SUNDAY";
		System.out.println("선택한 요일:"+name);
//		System.out.println("choDay == name2 :"+(choDay == name2));	Week 와 String 타입이 달라 비교불가
		System.out.println("name == name2 :"+(name == name2));	// .name()을 통해 리터널상수로 가져와 true 결과
		int ordinal = choDay.ordinal();
		System.out.println("선택한 요일의 index:"+ordinal);
		int result01 = today.compareTo(choDay);
		System.out.println("compareTo를 통한 비교: "+result01);
		// 특정 문자열을 통해서 enum객체를 선택할 때 활용된다.
		Week weekDay = Week.valueOf("SUNDAY");
		if(weekDay == Week.SUNDAY || weekDay == Week.SATURDAY) {
			System.out.println("주말을 선택했습니다.");
		}else {
			System.out.println("평일을 선택했습니다.");
		}
		// values()은 배열을 가져온다.
		Week[] days = Week.values();
		for(Week day : days) {		// 향상된 for문
			System.out.println(day);
		}
		
		
		//ex) 자동차의 움직임을 열거타입으로 CarMove라고 선언하고, 열거상수로 오른쪽, 왼쪽, 직진, 후진으로 선언
		//	  main() 메어스에서 열거형 초기화 왼쪽과 직진을 출력 처리하세요.
		CarMove drive01 = null;
		CarMove drive02 = null;
		drive01 = CarMove.LEFT; 
		drive02 = CarMove.BACKWARD;
		System.out.println("1번 움직임: "+drive01);
		System.out.println("2번 움직임: "+drive02);
		
		// 위 메서드를 이용해서 특정한 방향명, index, 왼쪽과 후진의 index 차이를 출력
		
		String carDrive = drive02.name();
		System.out.println("drive02의 방향 :"+carDrive);
		System.out.println("drive02의 index :"+drive02.ordinal());
		System.out.println("drive01과 drive02의 index 차이: "+drive01.compareTo(drive02));
		
		// ex) 문자열로 enum의 방향을 입력받아서 해당 enum을 선택하고 조건문으로 방향에 따라서 차가 "앞으로 갑니다.",
		//		"뒤로 갑니다.","왼쪽으로 방향을 변경했습니다.","오른쪽으로 방향을 변경했습니다."를 처리하여 출력하세요.
		
		Scanner sc = new Scanner(System.in);
		
		int cnt = 1;
		while(cnt == 1) {
			System.out.print("방향을 입력하세요.(FORWARD,BACKWARD,LEFT,RIGHT,BREAK) :");
			String dir = sc.nextLine();
			CarMove choCar = CarMove.valueOf(dir);
			
			switch(choCar.name()) {
				case "FORWARD":
					System.out.println("앞으로 갑니다.");
					continue;
				case "BACKWARD":
					System.out.println("뒤로 갑니다.");
					continue;
				case "LEFT":
					System.out.println("왼쪽으로 방향을 변경했습니다.");
					continue;
				case "RIGHT":
					System.out.println("오른쪽으로 방향을 변경했습니다.");
					continue;
				default:
					System.out.println("정지합니다.");
					cnt++;
					break;							// 실패요인 : break;가 switch문을 벗어나기만 하여 cnt 변수 추가함
			}
			
	
		}
		
		/*
		Scanner sc = new Scanner(System.in);
		while(true) {
			System.out.print("방향 입력하세요(LEFT/RIGHT/FORWARD/BACKWARD/BREAK):");
			String dir = sc.nextLine();
			CarMove cm = CarMove.valueOf(dir);
			if( cm == CarMove.LEFT ) System.out.println("왼쪽을 방향을 변경했습니다.");
			else if( cm == CarMove.RIGHT ) System.out.println("오른쪽을 방향을 변경했습니다.");
			else if( cm == CarMove.FORWARD ) System.out.println("차가 앞으로 갑니다.");
			else if( cm == CarMove.BACKWARD ) System.out.println("차가 뒤로 갑니다.");
			else break;
		}
		System.out.println("자동차가 멈추었습니다!!");
		*/
	}

}

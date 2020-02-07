package javaexp.z01_util;

import java.util.Scanner;

public class Z02_Homework {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//1. Scanner와 Math.random()을 이용하여, 컴퓨터와
//	가위/바위/보 게임을 하고, 승,무,패를 표시하세요.
//	가위 바위 보를 선택?
//	본인:@@@
//	컴퓨터 : @@
//	승/무/패
		/*
		String game1[]= {"가위","바위","보"};
		int cIdx = (int)(Math.random()*game1.length);
		String comCh= game1[cIdx];
		Scanner sc = new Scanner(System.in);
		System.out.print("1.가위, 2.바위, 3.보 번호선택(1/2/3):");
		// index와 번호가 1차이가 나기 때문에 
		int huIdx = sc.nextInt()-1;
		System.out.println("입력한 가위/바위/보:"+game1[huIdx]);
		System.out.println("컴퓨터:"+comCh);
		*/
		// 조건 처리.. chIdx와  huIdx로 비교를 하여, 승/무/패 처리.
	
//2. 카드 섯다 게임!! 컴퓨터와 내가 임의로 카드 1장씩
//	받아서, 승/패여부 처리..
//	1) 처음 하시는 분 컴퓨터 내가 카드 1장씩 받기.
//	2) 점수를 mapping 승/패
		/*
		String numStr[]= {"2","3","4","5","6","7","8","9",	
				"10","J","Q","K","A"}; // 우선 순위로 정렬 처리.
		String shape[]= {"♣","♥","◈","♠"}; // 스다하크 우선 순위로 정렬
		// 배열.length : 배열의 길이로 현재 경우수로 처리할 수 있다
		int ranNumIx = (int)(Math.random()*numStr.length);
		int ranShapeIx = (int)(Math.random()*shape.length);
		System.out.println("나의 카드:"+shape[ranShapeIx]+numStr[ranNumIx]);
		int ranNumIx2 = (int)(Math.random()*numStr.length);
		int ranShapeIx2 = (int)(Math.random()*shape.length);
		System.out.println("컴퓨터 카드:"+shape[ranShapeIx2]+numStr[ranNumIx2]);
		// 숫자의 많음에 따라 승패 여부 확인..
		// ranNumIx(나의 임의 숫자), ranNumIx2(컴퓨터임의 숫자) 
		if( ranNumIx>ranNumIx2) {
			System.out.println("## 나의 승 ##");
		}else if(ranNumIx<ranNumIx2) {
			System.out.println("## 컴퓨터 승 ##");
		}else { // 숫자가 같은 때..
			// 스다하크
			// 모양의 index가 더 높은 것을 승으로 처리..
			if(ranShapeIx>ranShapeIx2) {
				System.out.println("## 나의 승 ##");
			}else if(ranShapeIx<ranShapeIx2) {
				System.out.println("## 컴퓨터 승 ##");
			}else {
				// 승부가 무승부로 처리 숫자와 모양이 동일할 때..
				System.out.println("## 무승부 ##");
			}
		}	
		*/	
//3. 나이를 입력 받아서, 조건이나 연산자를 이용하여,
//	띠(자,축,인,묘,진,사,오,미,신,유,술,해) 맞추기
		// 1) 현재 나이와 띠를 확인..
		//    20 토끼  21 범 22 소 23 쥐 24 돼지 25 개 26 닭 27 원숭이
		//    28 양  29 말 30 뱀 31 용 
		//    12 % 연산자를 통해서 처리가 된다.
		/*
		int age = 32; // Scanner으로 입력 받았을 때..
		switch ( age%12 ) {
			case 8 : System.out.println("토끼띠"); break; 
			case 9 : System.out.println("범띠"); break; 
			case 10 : System.out.println("소띠"); break; 
			case 11 : System.out.println("주띠"); break; 
			case 0 : System.out.println("돼지띠"); break; 
			case 1 : System.out.println("개띠"); break; 
			case 2 : System.out.println("닭띠"); break; 
			case 3 : System.out.println("원숭이띠"); break; 
			case 4 : System.out.println("양띠"); break; 
			case 5 : System.out.println("말띠"); break; 
			case 6 : System.out.println("뱀띠"); break; 
			case 7 : System.out.println("용띠"); break;
			default : System.out.println("나이는 숫자로 입력된 데이터 한 합니다.");
		}
		*/
//4. for문을 이용해서 카드 7장씩, 컴퓨터와 1:1로 게임하기.
//	나 : ♥4, ...
//	컴퓨터 : @@@.....
		String numStr[]= {"2","3","4","5","6","7","8","9",	
				"10","J","Q","K","A"}; // 우선 순위로 정렬 처리.
		String shape[]= {"♣","♥","◈","♠"}; 
		String []chCards = new String[52];
		int cIdx=0;
		for(int idx=0;idx<shape.length;idx++) {
			for(int jdx=0;jdx<numStr.length;jdx++) {
				chCards[cIdx]=shape[idx]+numStr[jdx];
				System.out.print(chCards[cIdx]+"\t");
				cIdx++;
			}
			System.out.println();
		}
		System.out.print("나의 카드:");
		for(int cnt=1;cnt<=7;cnt++) {
			int rIdx = (int)(Math.random()*chCards.length);
			System.out.print(chCards[rIdx]+"\t");
		}
		System.out.println();
		System.out.print("컴퓨터 카드:");
		for(int cnt=1;cnt<=7;cnt++) {
			int rIdx = (int)(Math.random()*chCards.length);
			System.out.print(chCards[rIdx]+"\t");
		}		
//5. for문을 이용해서 3, 6, 9 게임 처리하세요.
//   if문 활용..
//	1 2 짝 4 5 짝 7 8 짝 ....
		System.out.println();
		System.out.println("# 3/6/9 게임 #");
		for(int cnt=1;cnt<50;cnt++) {
			int ckNum = cnt%10;  // 0 ~ 9
			if(ckNum!=0 && ckNum%3==0) { // 10단위는 제외하고, 나머지 3 배수일때.
				System.out.print("짝!\t");
			}else {
				System.out.print(cnt+"\t");
			}
		}
//6. 학생 100명의 컴퓨터 개론 점수을 0~100로 임의로 할당하고,
//	int[] points = new int[100]; 
//	학생100명의 평균점수, 최대점수, 최소점수를 출력 처리하세요
		System.out.println("");
		System.out.println("# 학생 100명에 대한 임의 점수할당 #");
		int[] points = new int[100];
		int max=0;
		int min=100;
		int tot=0;
		for(int idx=0;idx<points.length;idx++) {
			points[idx] = (int)(Math.random()*101);
			System.out.print(points[idx]+"\t");
			if(points[idx]>max) {
				max = points[idx];
			}
			if(points[idx]<min) {
				min = points[idx];
			}			
			tot += points[idx];
		}
		System.out.println();
		System.out.println("최소값 :"+ min);
		System.out.println("최대값 :"+ max);
		System.out.println("평균값 :"+ (tot/100));
//7. while문을 이용해서 1~100 사이의 임의의 번호 맞추기.
//	@@ 회째 시도 몇번일까요? hit 보다크다/보다작다
//	맞추는 @@회로 정답 성공..
		Scanner sc = new Scanner(System.in);
		// 발생하는 임의의 수
		int corNum = (int)(Math.random()*100)+1;
		// 맞추는 횟수
		int cnt=0;
		while(true){
			System.out.print("## 1 ~ 100 ## 번호 맞추어 보세요:");
			// 임력하는 숫자.
			int ch = sc.nextInt();
			cnt++;
			System.out.println(cnt+"번째 시도!");
			if(corNum<ch) {
				System.out.println("보다 작네요!");
			}else if(corNum>ch) {
				System.out.println("보다 크네요!");
			}else {
				System.out.println("정답!!");
				System.out.println(cnt+"번째 맞추었습니다.");
				break;
			}
		}
		System.out.println("프로그램 종료!!");
		
			
/*		
//------------------------------------------
//개념 정리 및 간단한 예제
//------------------------------------------
//1. switch case문의 break의 역할에 대하여 기술하세요.
		break; 문을 나올 때까지, 계속 수행 처리한다.
		다음 case로 넘어 가서 처리 된다.
//2. switch case "문자열"인식 을 이용하여 
//	입력한 등급에 따른 설명 출력 Scanner 클래스   
//	ex) 확인할 등급 : "A"
//	A학점은  90~100 점 사이입니다.
//	B학점은  80~90 점 사이입니다.
//    ..
//    F..
//      그 외에는 등급 A~F까지만 인식할 수 있습니다.
 	  Scanner sc = new Scanner(System.in);
 	  System.out.println("확인할 등급 : ");
 	  String chGrade = sc.next();
 	  switch( chGrade ){
 	      case "A":
 	      		System.out.println("A학점은  90~100 점 사이입니다.");
 	      		break;
 	      case "B":
 	      		System.out.println("B학점은  80~89 점 사이입니다.");
 	      		break;
 	      case "C":
 	      		System.out.println("C학점은  70~79 점 사이입니다.");
 	      		break; 	      		
 	      case "D":
 	      		System.out.println("D학점은  60~69 점 사이입니다.");
 	      		break; 
 	      case "F":
 	      		System.out.println("F학점은  0~59 점 사이입니다.");
 	      		break;  	      	
 	      default 
 	      	 	System.out.println("학점 범위는 A~F사이입니다.");      		 	      				
 	  }
//3. for문의 기본 형식을 기술하고, 
//	초기값 1, 반복조건 2, 증감연산자 3, 반복할 내용이 4
//	라고 하면, 반복할 처리 process 번호를 기술하세요.
 	 for(초기값1;반복조건2;증감연산자3){
 	 	반복할 내용4
 	 }
 	 1 2 4 3 2 4 3 2 4 3 2 4 3 2 4 3..
 	 for(int cnt=1;cnt<=10;cnt++){
 	 	System.out.println(cnt);
 	 }
//4. Scanner를 이용하여 시작할 단수, 종료할 단수를 입력 받아서
//	### @@단 ## ### @@단 ## ### @@단 ##
//	형식으로 구구단의 특정 시작과 마지막 단수를 출력 처리하세요.
	int start = sc.nextInt();
	int end = sc.nextInt();
	// 선택한 단수..
	for(int cnt=1;cnt<=9;cnt++){
		System.out.println(start +" * " + cnt+" = "+(start*cnt));
	}
	for(int cnt=1;cnt<=9;cnt++){
		System.out.println(end +" * " + cnt+" = "+(end*cnt));
	}	
	// 시작 단수 ~ 마지막 단수..
	for(int grade=start;grade<=end;grade++){
		System.out.println("#"+grade+"단#");
		for(int cnt=1;cnt<=9;cnt++){
			System.out.println(grade +" * " + cnt+" = "+(grade*cnt));
		}
	
	}

//5. 배열과 for처리 관계를 예제를 통해서 설명하세요.
 	String fruits[]={"사과","바나나","딸기"};
 	for(int idx=0;idx<fruits.length;idx++){
 		// index는 0부터 이기때문에 no를 처리할려면
 		// index+1 처리..1,2,3..
 		System.out.println((idx+1)+fruits[idx]);
 	}
//6. while문과 do while문을 차이를 기본 예제를 통해서 설명하세요.
 * 	while문은 반복여부를 check후 반복처리.
 *  do{
 *  	한번은 반복 처리..
 *  }while(반복여부);
//7. Math.random()의 범위와 특정한 숫자의 범위, 배열의 범위에 
//	따른 처리 방법을 기술하세요.
	0.0<=Math.random()<1.0
	(int)(Math.random()*경우의수)+시작수..
	(int)(Math.random()*6)+1
	
	배열의 범위:  임의의 index가져오기
	int ranIdx= (int)(Math.random()*배열.length);
	
	
	
*/		
	}

}

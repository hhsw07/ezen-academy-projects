package javaexp.a03_controller;

public class A07_Break_Continue {
/*	
# Break와 Continue
1. 반복문이나 조건문에서 주로 process의 중단에 관려된 명령어이다.
2. 기본 형식
	1) 반복문() {
		if(조건)
		  break;
	   }
	반복문 안에서 활용되면 특정 조건이 있을 때, 반복하는 process를 중단 처리한다.
	2) 반복문(){
		처리1
		if(조건)
		  continue;
		처리2;
		처리3;
	   }
	특정한 범위에서 반복되는 경우에, 범위 안에 있는 반복단위 중에 조건을 선언하여, continue를 처리하면 해당 반복단위에서
	continue 이후는 처리가 되지 않고, 다음 반복단위로 수행하여 준다.
	처리1 - 처리2 - 처리3 - 처리1 - 처리2 - 처리3 ... - 처리1 - (if 조건만족시 반복문 처음으로) - 처리1 - 처리2 - 처리3....
*/	 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int breakCnt = 7;
		int cnt = 1;
		while(true) {// 무한반복
			System.out.println((cnt++)+"번째 만남!");
			// 중단할 조건 선언
			// 반복을 중단 처리
			if(cnt == breakCnt) {
				break;
			}
		}
		// ex) for문으로 기본 반복은 5~20회까지 출력하는 처리를 하되,
		//	   if, break를 활용하여, 15에서 중단하게 하세요.
		for(int cnt2 = 5;cnt2 <= 20; cnt2++){
			// 출력물 전에 중단하여 15는 출력되지 않는다.
			if(cnt2 == 15) {
				System.out.println("종료");
				break;
			}
			System.out.println(cnt2+"회 출력");
		}
		// # Continue문 처리
		for(int cnt3 = 1; cnt3 <= 10; cnt3++) {
			// cnt3가 홀수 인 경우는 팔지 않게 처리
			if(cnt3 %2 == 1) {
				continue; //continue 이후의 내용을 수행하지 않음
				// 다음 step의 반복문은 계속 수행 처리
				// break; 였다면 cnt03이 1일 경우 반복문을 벗어나서 아무것도 출력되지 않음  
			}
			System.out.println("김밥 "+cnt3+"개 "+(cnt3*1800)+"원");
		}
		// ex) 5단을 출력하되, *5 일때는 출력하지 않도록 하세요.
		int grade = 5;
		for(int cnt4 = 1; cnt4 <= 9; cnt4++) {
			if(cnt4 == 5) {
				continue;
			}
			System.out.println(grade+" * "+cnt4+" = "+(grade*cnt4));
			
		}
		
		
	}

}

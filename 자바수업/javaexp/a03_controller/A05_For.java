package javaexp.a03_controller;

public class A05_For {
/*
# for 반복문
1. 변수를 이용하여, 증가나 감소 처리하면서, 반복할 때 활용된다.
2. 기본형식
	for(초기값 설정; 반복조건; 증감연산자){
		변수와 함께 하는 반복처리 구문...
	}
	// 1~10 반복
	for(int cnt = 1; cnt <= 10; cnt++){
		System.out.println(cnt+"번째 안녕하세요.");

 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ex) 카운트 다운 예제
		System.out.println("시작!!");
		for(int cnt = 10; cnt>=0; cnt--) {
			System.out.println("카운트다운 "+cnt);
		}
		System.out.println("완료!!");
		
		// ex) 확인하고 싶은 단수 : @@
		// 2 * 1 = 1
		// 2 * 2 = 4
		// 2 * 3 = 6
		// ...
		// 2 * 9 = 18
		
		int num01 = 2;
		int num02;
		System.out.println("확인하고 싶은 단수 :"+num01);
		for(num02=1;num02<=9;num02++) {
			System.out.println(num01+" * "+num02+" = "+ (num01*num02));
		}
		
		// ex) 1 ~ 100까지 5씩 증가 처리.
		for(int cnt=1;cnt<100;cnt+=5) {
			System.out.print(cnt+" ");
		}
		System.out.println();
		// ex) 100 ~ 1까지 감소 처리.
		for(int cnt = 100; cnt>=1; cnt--) {
			System.out.print(cnt+"\t");
			if(cnt%5==1) {
				System.out.println();
			}
		}
		
		// ex) 5 ~ 20까지 홀수 출력
		System.out.println("## 5 ~ 20까지 홀수 출력 ##");
		for(int cnt = 5; cnt<=20; cnt+=2) {
			System.out.println(cnt+"\t");
		}
			
		// ex) 30 ~ 15까지 3씩 감소 출력
		System.out.println("## 30 ~ 15까지 3씩 감소 출력 ##");
		for(int cnt = 30; cnt>=15; cnt-=3) {
			System.out.println(cnt+"\t");
		}
		System.out.println();
		// for(초기값; 한계치; 증감)
		// 배열의 데이터를 효과적으로 처리할 수 있다.
		String fruits[] = {"사과", "바나나", "딸기","감"};
		int prices[] = {3000,4000,12000,5000};
		System.out.println("배열의 값:"+fruits[0]);
		System.out.println("배열의 길이:"+fruits.length);
		// for문과 배열처리
		// for(초기 index를 설정;배열의 길이까지의 범위; index증가)
		System.out.println("배열의 index");
		// idx<fruits.length: 배열의 index가 배열의 길이보다 1적기 때문에
		for(int idx=0;idx<fruits.length;idx++) {
			System.out.print(idx+"\t");
			System.out.print(fruits[idx]+"\t");
			System.out.println(prices[idx]);
		}
		for(int idx=0;idx<args.length;idx++) {
			System.out.print(idx+"\t");
			System.out.println(args[idx]);
		}	
		// ex) 배열로 월별 입금액 120000 1000000 500000을 선언하여 출력하고, 총합 금액을 최하단에 출력하세요.
		int monthMn[] = {120000, 1000000, 500000};
		int month[] = {9,10,11};
		// 상위에 변수로 총합금액 초기화.
		int totMn = 0;
		
		for(int idx=0;idx<monthMn.length;idx++) {
			System.out.println(month[idx]+"월\t"+"입금액 "+ monthMn[idx]);
			totMn += monthMn[idx];
		}
		for(int idx=7;idx<monthMn.length;idx++) {
			System.out.println(month[idx]+"월\t"+"입금액 "+ monthMn[idx]);
			totMn += monthMn[idx];
		}
		System.out.println("총합 금액 : "+totMn);
		
	}

}

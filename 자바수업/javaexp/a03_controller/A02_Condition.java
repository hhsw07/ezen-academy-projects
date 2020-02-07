package javaexp.a03_controller;

public class A02_Condition {
/*
# 조건문
1. 조건식 결과에 따라 중괄호({}) 블록을 실행할지 여부를 결정할 때 사용한다.
2. 기본 형식
	1) 형식1
	if(조건식1){
		조건식1이 true일 때, 처리할 내용....;
	} 
	// 조건식1이 true면 해당 블록을 수행하고, 그렇지 않으면 수행하지 않는다.
	2) 형식2
	if(조건식2) 처리할 내용 기술;
	3) 형식3
	if(조건식3) 
		처리할 내용 기술; 
	// 단열일 경우 중괄호({})가 없어도 가능
		
 */
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int num01 = 25;
		int num02 = 30;
		System.out.println("# 덧셈 문제#");
		System.out.println(num01 + " + " + num02);
		int inputdata = 55;
		System.out.println("입력한 값 "+inputdata);
		
		if((num01+num02) == inputdata) {
			System.out.println("정답입니다.");
		}
		
		//ex) args로 값을 입력하여 물건명 가격 갯수로 데이터를 받아서, 총 비용이 50000 이상이면 "VIP 고객입니다." 출력
		//    @@@을 @@개 구매하여 총 비용이 @@@입니다.
		
		
		System.out.println(args[0]);
		System.out.println(args[1]);
		System.out.println(args[2]);
		
		
		String product = args[0]; // args는 문자열이기에 String는 바로 받지만 숫자로 사용하기 위해서 Integer.parseInt로 변환 필요
		int price = Integer.parseInt(args[1]);
		int cnt = Integer.parseInt(args[2]);
				
		int totPrice = price * cnt;
		
		System.out.println(product +"을 " + cnt +"개 구매하여 총 비용이 " + totPrice + "입니다.");
		
		if(totPrice >= 500000) {
			System.out.println("VIP 고객입니다.");		
		}else {
			System.out.println("일반 고객입니다.");
		}
		
		
	}

}

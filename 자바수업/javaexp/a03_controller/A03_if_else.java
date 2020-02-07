package javaexp.a03_controller;

public class A03_if_else {

/*
# if else if 구문
1. 여러 분기 조건을 처리할 때 활용된다.
2. 형식
	if(조건1){
		조건1일 때, 처리할 내용...
	}else if(조건2){  
		else는 이전 블럭{}의 조건을 제외하고 라는 말을 포함하고 있다. 즉 조건1을 제외한 조건2일 때 처리 할 내용...
		}
	}else{
		상단에 나열된 조건 이외의 내용을 처리 할 때, 구문 내용
	}

*/
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int point = 99;
		String grade;
		if(point >= 90) {
			grade = "A";
			
		}else if(point >= 80) {
			// if(!(point >= 90) && (point >= 80) 와 같다
			// else가 if(!(point >= 90) && 역할을 한다.
			grade = "B";
			
		}else if(point >= 70) {
			grade = "C";
		
		}else if(point >= 60) {
			grade = "D";
			
		}else {
			grade = "F";
			
		}
	
		System.out.println("학점 등급은 " + grade + "입니다.");
		
	// ex) age를 기준해서 
	// 0미만 : 범위에서 벗어남
	// 1~4 또는 65 이상 무료 입장
	// 5~13 : 어린이 할인 (50%할인)
	// 14~19 : 청소년 요금제(30%할인)
	// 20~64 : 일반 요금제
		
		int age = 15;
		int pay = 50000;
		
		if(age<0) {
			System.out.println("범위에서 벗어남");

		}else if(age<=4 || age>=65) {
			System.out.println("무료입장");
			pay = 0;
		}else if(age <=13) { // (age>=5 && age<=13) 일 필요가 없음.
			System.out.println("어린이 할인 (50%할인)");
			pay = (int)(pay*0.5);
		}else if(age <=19) {
			System.out.println("청소년 요금제(30%할인)");
			pay = (int)(pay*(1-0.3));
		}else {
			System.out.println("일반요금제");
		}
		
		System.out.println(pay + "원 입니다.");
		
		int pt = 20;
		int pass = (pt>10)?5:0;
		System.out.println(pass);
		
	}
}



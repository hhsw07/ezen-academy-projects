package javaexp.a08_exception;

/*
# 예외(Exception)란?
1. 사용자의 잘못된 조작 또는 개발자의 잘못된 코딩으로 인한 오류로 예외가 발생함을 말한다.
2. 자바는 이러한 예외에 대하여, 예외 처리함으로 프로그램의 안정성과 신뢰성을 확보하고자 한다.
3. 예외 처리 기본 형식
	try{
		예외 발생 가망성있는 코드
	}catch(Exception e){
		예외가 발생했을 때, 처리할 코드 내용
	}finally{
		예외 발생 여부에 상관 없이 처리할 코드/수행 내용
	}
4. 예외 처리 프로세스
	1) 예외가 발생하면, 해당 line에서 즉시 예외 catch 블럭으로 던지고, catch에서 예외 클래스에 의해 받아서, 예외 블럭에 처리한다.
 */

public class A01_Start {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("처리1");
		System.out.println("처리2");
//		System.out.println(4/0);		// 오류로 인하여 처리1,2는 수행되지만 처리3은 수행되지 않음
		System.out.println("처리3");
		
		System.out.println();
		System.out.println();
		
		System.out.println("처리1");
		System.out.println("처리2");
		try {
			System.out.println("예외 가능성 코드1");
			System.out.println("예외 가능성 코드2");
			System.out.println(4/0);			// 오류로 인하여 catch블럭으로 이동후 예외 블럭 수행
			System.out.println("예외 가능성 코드3");	// 위 line의 오류로 해당 line은 수행되지 않음
		}catch(Exception e) {
			System.out.println("예외가 발생했습니다!!");
			System.out.println(e.getMessage());
		}finally {
			System.out.println("예외 발생 여부 없이 수행할 내용");
		}
		System.out.println("처리3");
		


	}

}

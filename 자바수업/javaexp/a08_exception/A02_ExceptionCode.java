package javaexp.a08_exception;

import java.util.Scanner;

public class A02_ExceptionCode {

/*
# 예외 처리 코드
1. 가능성 있는 예외발생 코드를 직접적으로 수행한다.
2. 실행 결과로 발생한 예외 내용을 copy하여 catch(예외) 로 선언한다.
3. 예외가 발생했을 때, 처리할 코드를 catch block에서 처리한다. 
 */
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("수행1");
		try {
			System.out.println(4/0+"수행");
		} catch(ArithmeticException ae) {
			System.out.println("예외 발생..");
			System.out.println(ae.getMessage());
		}
		System.out.println("수행2");
		System.out.println("수행3");
		System.out.println();
		
		// ex) String name = null; System.out.println(name.toString()); 처리시
		// 발생하는 예외를 확인하고, 예외 처리를 하세요.
		String name = null;
		try {
		System.out.println(name.toString());
		}catch(NullPointerException npe) {
			System.out.println("name값 입력이 없습니다.");
			System.out.println(npe.getMessage());
		}
		System.out.println("# 입력한 과일 #");
		try {
			for(int idx=0;idx<10;idx++) {
				// Run As - Run Configuration - Arguments에서 입력
				System.out.println(idx+1+"번째 과일: "+args[idx]);
			}
		// Exception의 하위의 구체적 예외
		}catch(ArrayIndexOutOfBoundsException aiob){
			System.out.println(aiob.getMessage());
			System.out.println("배열 초과 예외 발생");
		// 예외의 최상위 클래스 선언.
		// 기타 예외에 대한 처리
		// catch로 구체적인 하위 예외를 처리한 후 보다 넓은 예외를 처리한다.
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			// 예외 상관 없이 처리할 내용은 finally를 통해서 기술한다.
			System.out.println("예외 상관 없이 처리할 내용...");
		}
		System.out.println();
		
		// ex) args[0]로 id, args[1]로 pass를 입력 받아서 유효성 check하는 프로그램을 만들려고 한다.
		//		값이 입력하지 않았을 때, 예외 처리를 하여 입력되지 않았음을 메세지로 처리하세요.
		try {
		System.out.println("# 로그인 #");
		// 배열은 참조주소를 저장하기에 문자열 비교시 .equals("문자열") 로 비교
		String id = args[0];
		String pass = args[1];
		
		if(id.equals("사과")) {
			if(pass.equals("바나나")) {
				System.out.println("로그인 되었습니다.");
			}else {
				System.out.println("비밀번호를 다시 확인하세요.");
			}
		}else {
			System.out.println("아이디를 다시 확인하세요.");
		}
		}catch(ArrayIndexOutOfBoundsException e1) {
			System.out.println(e1.getMessage());
			System.out.println("배열 초과 예외 발생");
		}catch(NullPointerException e2) {
			System.out.println(e2.getMessage());
			System.out.println("null 값 예외 발생");
		}catch(Exception e3) {
			System.out.println(e3.getMessage());
			System.out.println("기타 예외 발생");
			
		}
		
		try {
			String name1 = null;
			System.out.println(name1.toString());
			for(int idx=0; idx<5; idx++) {
				System.out.println(args[idx]);
			}
		}catch(ArrayIndexOutOfBoundsException e1) {
			System.out.println("e1 오류");
		}catch(NullPointerException e2) {
			System.out.println("e2 오류");
		}

	}

}

package javaexp.a08_exception;

/*
# 사용자 정의 예외 처리
1. 자바의 표준 API에서 제공하지 않는 개발자가 새로 정의하여 만든 예외를 말한다.
2. 개발자에 의해 정의된 애플리케이션 서비스와 관련된 예외를 말한다.
	ex) 네트워크 처리 예외, 잔고 부족, 특정 조건에 대한 예외...
3. 기본 형식
	1) 선언
	class 사용자정의클래스 extends Exception | RuntimeException
		생성자명(){
		}
		// 예외 처리시, 생성자를 통해서 특정한 문자열을 전달 가능하다. e.getMessage()를 통해서 catch에서 처리할 내용을 기술한다.
		생성자명(String msg){
			super(msg); // 상위클래스의 생성에 msg를 넘겨준다.
		}
		
	2) 호출시 처리.
		예외가 발생할 내용에 조건을 처리하여
		try{
			if(조건){	throw new 사용자정의예외클래스("메시지"); }
		}catch(사용자정의예외클래스 e){
			e.getMessage();
		}

 */
// 사용자정의 예외클래스 생성(선언)
class User01Exception extends Exception{

	public User01Exception(String msg) {
		super(msg);
		// TODO Auto-generated constructor stub
	}
	// 재정의

	@Override
	public String getMessage() {
		// 위에 선언된 생성자에서 super(msg)형태로 넘긴 msg를 getMessage()를 통해서 받을 수 있다.   
		return "[사용자정의예외]"+super.getMessage();
	}
	// 추가적인 기능 메서드를 처리할 수 있다.
	public void show() {
		System.out.println("사용자 정의 예외의 메서드1입니다.");
	}
	
	
}

public class A04_UserException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int cnt = 10 ; cnt>=0 ; cnt--) {
			System.out.println("카운트 다운: "+cnt);
			try {
				if(cnt ==0 ) {
					throw new User01Exception(cnt+"에서 예외발생");
				}
			}catch(User01Exception e) {
				System.out.println("## 사용자정의 예외를 catch ##");
				System.out.println(e.getMessage());
				e.show();
			}
		}
		String inputId = "himan";
		String inputPass = "7775";
		
		try {
			System.out.println("ID: "+inputId);
			System.out.println("PASS: "+inputPass);
		if(inputId.equals("himan") && inputPass.equals("7777")) {
				System.out.println("로그인 성공");
		}else {
			throw new MemberException("아이디/비밀번호가 맞지않아 예외 발생");
		}
		}catch(MemberException e) {
			System.out.println("MemberException 예외를 catch");
			System.out.println(e.getMessage());
			e.goLoginPage();
			
		}

		
		
	}
}
// ex) ID/PASS가 지정된 내용과 다르게 입력되었을 때, MemberException으로 사용자 정의 예외로 처리하세요.
class MemberException extends Exception{

	public MemberException(String message) {
		super(message);
	}
	
	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return "[인증처리]"+super.getMessage();
	}

	public void goLoginPage() {
		System.out.println("다시 로그인 하세요.");
	}
	
}
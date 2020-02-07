package javaexp.a08_exception;

class ExceptionExp{
	public void findClass1() throws ClassNotFoundException {
		Class cls = Class.forName("java.lang.String2");
	}
	public void findClass2() throws ClassNotFoundException {
		Class cls = Class.forName("java.lang.String3");
	}
	public void findClass3() throws ClassNotFoundException {
		Class cls = Class.forName("java.lang.String4");
	}
	public void findClass4() {
		try {
			Class cls = Class.forName("java.lang.String4");
		}catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			System.out.println(e1.getMessage());
		}catch(Exception e2) {
			System.out.println(e2.getMessage());
		}finally {
			System.out.println("예외/비예외 상관없이 처리 코드");
		}
	}
}
public class A03_Throws {
/*
# throws 예외 위임
1. 자바의 예외는 메서드 단위로 예외를 해당 메서드를 다시 호출하는 곳으로 예외를 위임시킬 수 있다.
2. 이렇게 예외를 위임하면, try{}catch{} 블럭을 동일한 예외를 처리하는 곳에서 한번에 처리할 수 있는 장점을 갖는다.
3. 기본 형식
	1) 메서드 단위로 선언
	메서드명() throws 예외클래스1, 예외클래스2....
	ex) public void call() throws ClassNotFoundException, NullPointException {
			예외 발생할 만한 코드에 의해 예외가 발생시 던져진다.
		}
		public void call2() throws ClassNotFoundException, NullPointException {
			예외 발생할 만한 코드에 의해 예외가 발생시 던져진다.
		}
		Main() 또는 다른 호출하는 객체의 메서드에서
		try{
			call();
			call2();
		}catch(ClassNotFoundException e1){
			예외 발생시 수행할 코드
		}catch(NullPointException e2){
			예외 발생시 수행할 코드
		}catch(Exception e3){
			예외 발생시 수행할 코드
		}finally{
			예외에 상관없이 수행할 코드
		}
 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ExceptionExp e = new ExceptionExp();
		
		try {
			// 예외는 메서드별로 던진 내용을 한꺼번에 처리할 수 있다.
			e.findClass1();
			e.findClass2();
			e.findClass3();
			e.findClass4();
		}catch (ClassNotFoundException e1) {
//			e1.printStackTrace();
			System.out.println(e1.getMessage());
		}catch(Exception e2) {
			System.out.println(e2.getMessage());
		}finally {
			System.out.println("예외/비예외 상관없이 처리 코드");
		}
//		ex) 예외 위임 확인 예제
//		Calcu 클래스에서 /0 ==> 연산처리 입력한 2개의 값을 plus(), minus(), multi(), div()에서 처리하되
//		/0 일 때 발생하는 예외와 기타 예외를 위임하여 구성하세요.
//		System.out.println(1/0);
		
		Calcu c1 = new Calcu(3,0);
		try {
		c1.plus();
		c1.minus();
		c1.multi();
		c1.div();
		}catch(ArithmeticException e1) {
			System.out.println("ArithmeticException 예외");
			System.out.println(e1.getMessage());
		}catch(Exception e2) {
			System.out.println("Exception 예외");
			System.out.println(e2.getMessage());
		}finally {
			System.out.println("계산 종료");
		}
		// 필수적인 예외처리 필요
//		e.findClass1();
		// 예외 처리가 필수가 아님.
		c1.plus();
	}
}
class Calcu {
	private int num01;
	private int num02;
	
	public Calcu(int num01, int num02) {
		super();
		this.num01 = num01;
		this.num02 = num02;
	}
	
	/**
	 * @return the num01
	 */
	public int getNum01() {
		return num01;
	}

	/**
	 * @param num01 the num01 to set
	 */
	public void setNum01(int num01) {
		this.num01 = num01;
	}

	public int plus() throws ArithmeticException{
		System.out.println(num01+" + "+ num02+ " = "+ (num01+num02));
		return num01+num02;
	}
	public int minus() throws ArithmeticException{
		System.out.println(num01+" - "+ num02+ " = "+ (num01-num02));
		return num01-num02;
	}
	public int multi() throws ArithmeticException{
		System.out.println(num01+" X "+ num02+ " = "+ (num01*num02));
		return num01*num02;
	}
	public int div() throws ArithmeticException{
		System.out.println(num01+" ÷ "+ num02+ " = "+ (num01/num02));
		return num01/num02;
	}
}
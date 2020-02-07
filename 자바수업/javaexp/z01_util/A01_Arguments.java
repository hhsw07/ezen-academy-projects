package javaexp.z01_util;

public class A01_Arguments {
/*
# 자바에서 매개변수 받기.
A01_Arguments.java
javac A01_Arguments.java
A01_Arguments.class
java A01_Arguments 입력1 입력2 입력3 //콘솔창에서 이렇게 입력해야 하나, 이클립스를 통해 간단하게 입력 가능

ex) java A01_Arguments 입력1 입력2 입력3
입력1 입력2 입력3 데이터는 main()의 String[] args로 받아서 
String[] args={"입력1", "입력2", "입력3"}

*/
	
// (최초 1회 실행 이후) Run as - Run Configurations - (x)=Arguments - program arguments에 입력	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("입력값의 크기: "+args.length);
		
		System.out.println(args[0]);
		System.out.println(args[1]);
		System.out.println(args[2]);
		// args는 문자열 배열이기 때문에, 해당 값을 연산 처리하기 위해서 숫자형으로 변환하는 기능 메서드를 사용하여야 한다.
		// Integer.parseInt(), Double.parseDouble()
		int price1 = Integer.parseInt(args[0]);
		int price2 = Integer.parseInt(args[1]);
		int price3 = Integer.parseInt(args[2]);
		
		int tot = price1 + price2 + price3;
		
		System.out.println("총비용: "+tot);
		
		

	}

}

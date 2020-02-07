package javaexp.a05_access;

import javaexp.a04_object.Duck;

public class A01_AccessExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// a04_access패키지의 Duck 클래스를 호출
		// ctrl + shift + o (import 단축키)
		// class 선언부분 public 일때만, 외부 패키지에서 접근 가능
		// # class  선언부분이 접근제한에 걸리면, 하위에 있는 멤버들을 계층구조상 public이라도 접근할 수 없다.
		Duck d01 = null;	// class의 접근제어자 확인
		// 생성자 선언부분 public 일때만, 외부 패키지에서 접근 가능
		d01 = new Duck("청둥오리", "알록달록");	// 생성자의 접근제어자 확인
		System.out.println("오리의 종류: "+ d01.getKind() + ", 오리의 색상: "+ d01.getColor());
//		System.out.println("필드에 대한 접근: "+ d01.kind); (X private 필드로 접근불가)
		// 필드는 일반적으로 private로 설정해서 접근불가능하다.
		// 간접적으로 제정메서드 처리( getXXX,  setXXX 메서드 사용)
		d01.setKind("집오리");
		d01.setColor("흰색");
		System.out.println("오리의 종류: "+ d01.getKind() + ", 오리의 색상: "+ d01.getColor());
		
		System.out.println(d01.cnt);

	}

}

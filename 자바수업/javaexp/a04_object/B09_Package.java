package javaexp.a04_object;
/*
# Package
1. 클래스를 선언하는 최상위에 선언하여 소속되어 있는 계층 구조하의 위치를 지정한다.
2. 일반적으로 같은 package에 있으면, 객체 생성시 패키지 명을 생략 가능하다.
3. 다른 패키지에 있는 클래스를 호출할 때의 조건
	1) 접근제어자가 class, 생성자 모두 public
	2) 이 때, 패키지명.클래스명 참조 = new 패키지명.클래스명(); 사용한다.
	 - 클래스명은 패키지명을 포함하는 개념이다.
	3) 다른 패키지에 있는 클래스는 import를 이용하면, 패키지 선언은 생략이 가능하다.
	 - import 사용할외부패키지클래스
	4) 패키지명이 다른 동일한 클래스는 어떻게 사용하는지?
	 - 클래스명이 동일한 경우, 같은 메모리 영역에서 사용하려면 import해서 사용할 수 없다.
	 - 패키지명 전체를 호출하여 사용해 구분하여야 한다.
 */
import javaexp.a03_controller.A08_DoubleLoopCon;
public class B09_Package {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 같은 패키지에 있는 경우 패키지명 생략이 가능하다.(패키지명.클래스명 객체명 = new 패키지명.클래스명(매개변수..);) 
		Person p1 = new Person();
		// 패키지명.클래스명 참조명(=객체명: 아래 예시-con01) = new 패키지명.클래스명();
		javaexp.a03_controller.A08_DoubleLoopCon con01 = new javaexp.a03_controller.A08_DoubleLoopCon(); 
		// import를 이용하여 패키지명 생략
		A08_DoubleLoopCon con02 = new A08_DoubleLoopCon();
	}

}

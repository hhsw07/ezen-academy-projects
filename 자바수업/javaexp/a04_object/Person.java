// 1. 패키지 : 어디에 소속되어 있는지?
package javaexp.a04_object;

// 2. 접근제어자 class 클래스명{}
//	1) 설계도 역활
/*
   3. 클래스 선언
   	1) 클래스 이름 선언 규칙
   		- 하나 이상의 문자
   		- 첫번째 클자는 숫자로 올 수 없다.
   		- 특수문자는 $,_만 허용
   		- 자바 키워드는 사용할 수 없다.
   		- 대소문자 구분
	2) 관례
		- 한글 이름도 가능하나, 영어 이름으로 작성
		- 클래스인경우, 첫글자를 대문자로 작성 ex)Person, Entertainer
		- 합성어는 연결 첫글자를 대문자로 작성 ex)CarDriver, Web_Browser
 */
// 1. public으로 선언한 class명과 파일명을 동일하게 하여, 1개 만들고
// 2. 추가 클래스는 public을 선언하지 못한다.
// 3. Person.java
// 	  javac Person.java
// 	  Person.class, Woman22.class, Man22.class
//	    컴파일시 생성된다. (C:\a01_javaexp\workspace\javaexp\build\classes\javaexp\a04_object 폴더에서 확인 가능)
// 4. package명을 기준이로 같은 class를 같은 package에 생성하지 못한다.
public class Person {
	// 필드 선언..
	String name;
	// 보이지 않지만 default 생성자 내부적으로 선언됨
	// public Person();
}

// public clss Woman22{}: (X)
class Woman22{}
class Man22{}

package javaexp.a04_object;

import java.util.Scanner;

public class A01_Reference {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 기본 타입 변수
		int num01 = 25;
		// 객체 타입 참조변수
		// javaexp.a04_object.ObjectTarget@15db9742
		// 객체명@16진수로 된 heap영역의 주소
		ObjectTarget ob01 = new ObjectTarget();
		System.out.println("# stack 메모리 데이터 #");
		System.out.println("num01:"+num01);
		System.out.println("ob01: "+ob01);
		// 객체는 참조변수를 통해서 heap 영역의 특정한 주소에 할당 객체를 찾아가서, 소속되어 있는 속성(field)명으로
		// 접근하여 확인한다. 참조변수명.속성명
		System.out.println("ob01.num01: "+ob01.num01);
		
		ObjectTarget ob02 = new ObjectTarget();
		// 다른 주소의 heap영역으로 만들어진다.
		System.out.println("ob02: "+ob02);
		System.out.println("ob02.num01: "+ob02.num01);
		System.out.println("ob01 vs ob02: "+(ob01 == ob02));
		
/*
# 변수의 메모리 사용
1. 기본 타입 변수: 실제 값을 변수 안에 저장하고 있다.(stack)
2. 참조 타입 변수: heap영역의 객체의 주소를 가지고 있다.

# null
1. heap영역에 객체를 생성하지 않고, stack 영역에 메모리만 선언한 상태를 null초기화 라고 한다.
	ex) 위의 ob01, ob02는 new 라는 키워드를 통해서 객체를 생성한다.(ObjectTarget ob01 = new ObjectTarget();)
	초기화 시는 클래스명 참조변수명 = null; 라고 선언한다.
	주소값 확인시, null
	ex) person p = null;
	
# nullPointerException
1. pointer라는 주소를 이야기하고, 위 예외는 주소값이 없는 참조객체의 멤버(객체가 가지고 있는 구성요소)를 사용할 때 나타난다. 
 */
		// heap영역에 객체를 할당하지 않고 stack영역에 선언만 한 상황
		ObjectTarget ob03 = null;
		System.out.println("ob03: "+ob03);
		System.out.println("ob03==null: "+(ob03==null));
		System.out.println("ob02==null: "+(ob02==null));
		System.out.println("ob02!=null: "+(ob02!=null));
		// 객체가 생성되지 않는 상황에서 heap영역에 있는 특정한 속성을 접근할 때
		// nullPointerException 오류발생한다.
		// 웹, 안드로이드 등 외부에서 자료를 가져오는 상황에서 주로 발생.
		// System.out.println("ob03.num01: "+ob03.num01);
		// nullPointerException를 발생하는 순간, process 자체가 진행하지 못하기 때문에, 아래와 같이 조건문으로 처리하여
		// 정상적인 process로 유도한다.
		
		// 일반적으로 nullPointerException을 벗어나기 위해서 만든 조건문
		if(ob03 != null) { // 객체가 생성 되었을 때만, 호출처리
			System.out.println("ob03 생성");
		}
		if(ob02 != null) { // 객체가 생성 되었을 때만, 호출처리
			System.out.println("ob02 생성");
		}
		System.out.println("예외가 발생하더라도 다음 process 유도");

/*
# String 문자열의 메모리 할당
1. 문자열을 직접적으로 대입한 경우에는 같은 문자열은 같은 heap영역의 주소값을 쓰기 때문에, == 을 통한 주소값 비교시 true가 처리된다.
	ex) String name1 = "홍길동"; String name2 = "홍길동";
		name1 == name2 : true
2. 사용자 인터페이스에 의한 입력시(파일로 로딩, Scanner 통한 입력)와 new String("문자열")을 통한 객체생성시, 다른 heap영역의 주소를 참조하기에
   ==(주소값 비교)는 같은 문자열 일지라도 false 처리된다.
	ex) String name3 = new String("홍길동");
		name1 == name3 : false
3. 문자열 자체로 내용을 비교하여, 같은지 여부를 확인하려면 문자열1.equals(문자열2) 메서드를 이용한다.
	ex) name1.equals(neme3) : true
*/
		

/*
# 문자열 비교
입력받은 문자열은 new String("문자열")로 생성되기 때문에
주소값이 같지 않으면 같은 객체로 인식하지 못한다.
1. 객체는 메모리를 stack영역과 heap영역을 활용하여 할당한다.
   stack영역에는 객체가 생성되어 할당된 heap영역의 주소를 가지고 있다.
2. 문자열인 경우 String name = "홍길동"; heap영역에 "홍길동"이 할당되어
      모두 동일한 주소값을 가진다.
   String name1 = "홍길동"; name과 name1은 같은 주소값을 가진다.
3. 외부에 입력 인터페이스 or new String()을 통해서 문자열 객체를 생성하면, 다른 heap영역의 주소값을 가진다.
   String name2 = new String("홍길동");
   String name3 = new String("홍길동");
   System.out.print("name2와 name3의 주소값의 동일 여부 : " + (name2 == name3)); // false 출력됨.
4. 문자열 자체로 비교하려면 비교1.equals(비교2)를 이용하여 처리한다.
 */
		// ex) 넌센스 퀴즈를 검색하여 주관식 문제를 내고 Scanner에 의해서 정답을 입력 받았을 때, 정답~~~/ 그외에는 오답! 처리하세요.
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("크리스마스에 중국집에서 시켜서는 안 될 메뉴는?");
		System.out.print("정답 : ");
		String answer = sc.nextLine();
		
		if(answer.equals("울면")) {
			System.out.println("딩동댕~ 정답입니다.");
		}else {
			System.out.println("삐~ 오답입니다.");
		}

	}

}
class ObjectTarget{
	int num01 = 30;
	
}
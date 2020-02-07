package javaexp.a06_inherit;
/*
# 인터페이스(interfacce)란?
1. 개발 코드와 객체가 서로 통신하는 접점을 말한다.
2. 개발 코드는 인터페이스의 메소드만 알고 있으면 된다.
3. 인터페이스의 역할
	1) 개발 코드가 객체에 종속되지 않고 --> 객체 교체할 수 있도록 하는 역할
	2) 개발 코드 변경 없이 리턴값 또는 실행 내용이 다양해질 수 있다.(다형성)
	
ex) MZ 뛰어다님. (개발 코드)
	MZ 등뒤에 날개의 control정보를 입력하는 interface 설치: 서로 통신하는 접점 역할
	   연구소에서 날개1호를 제작.. (실제 객체)
	   연구소에서 날개2호를 제작.. (실제 객체)
	   연구소에서 날개3호를 제작.. (실제 객체)
	   ...
	인터페이스가 없었다면, MZ를 매번 수리하여야 함.

4. 인터페이스 선언.
	1) 인터페이스 이름 - 자바 식별자 작성 규칙에 따라 작성($,_ 이외 특수문자 사용금지, 첫글자로 숫자금지, 예약어 사용금지, 대소문자 구분)
	2) 형식: interface 인터페이스명{
				멤버..
			}
	3) 구성 멤버
		- 인터페이스의 필드는 모두 상수로 할당되어야 한다.
		ex) int NUM01 = 5; --> final static int NUM01 = 5;	// 상수는 대문자작성 관례
		- 선언된 메서드는 모두 추상메서드이다.
		ex) void call(); --> public abstract void call();	// 추상(abstract) 메서드
		- 디폴트(default) 메서드: [public] default 리턴타입 메서드명(매개변수..){}
		ex) public default void show(String msg){
				System.out.println("출력할 메서드"+msg); }
		- 정적(static) 메서드: [public] static 리턴타입 메서드명(매개변수..){}
		ex) public static void call(){}
	
	4) 실제 클래스 상속: 인터페이스는 implements가 상속한다.
		class 실제클래스 implements 인터페이스{
			// 선언한 추상메서드는 반드시 재정의 하여야 한다.
		}

 */

interface Wings{
	void flying();	// 추상메서드: public abstract void flying();
}
class Wings1 implements Wings{
	@Override
	public void flying() {		// 추상메서드는 반드시 오버라이딩(재정의) 하여야 한다.
		System.out.println("날개1호가 우리 동네를 날다~");
	}
}
class Wings2 implements Wings{
	@Override
	public void flying() {
		System.out.println("날개2호가 세계를 누비다!!");
	}
}
class Wings3 implements Wings{
	@Override
	public void flying() {
		System.out.println("날개3호가 우주를 여행하다.");
	}
}

class MZ{
	// 인터페이스를 중앙 controller에서 사용할 수 있게끔 메모리 선언
	private Wings wing;
	public void attack() {
		System.out.println("MZ 공격하라!!");
	}
	// 매개변수로 상위 인터페이스를 선언하여, 상속 받는 여러 하위 객체를 할당할 수 있도록 한다.
	public void addWings(Wings wing) {
		this.wing = wing;
	}
	public void flyToTheSky() {
		System.out.println("MZ 날아라~~");
		if(wing != null) {
			wing.flying();
		}else {
			System.out.println("날개가 장착되지 않았습니다.");
		}
	}
}

public class A08_Interface {

	public static void main(String[] args) {
		MZ m01 = new MZ();
		m01.attack();
		m01.flyToTheSky();
		m01.addWings(new Wings1());
		m01.flyToTheSky();
		m01.addWings(new Wings2());
		m01.flyToTheSky();
		m01.addWings(new Wings3());
		m01.flyToTheSky();
		
		Duck02 d1 = new Duck02();
		d1.show();
		d1.SetSound(new Quack());	// 다형성(PolyMorphism)
		d1.show();
		d1.SetSound(new Mute());
		d1.show();
		d1.SetSound(new Beep());
		d1.show();
		
	}
}
/*
ex) SoundWay 인터페이스 sound()
	하위 클래스: 꽥꽥거리다/소리가 없다/삑삑 전자음소리
	Duck02에서 해당 인터페이스를 처리하세요.ex) SetSound, Show
 */
interface SoundWay{
	public void sound(); // 추상메소드
}
class Quack implements SoundWay{
	@Override
	public void sound() {			// 실제 객체 메소드
		System.out.println("꽥꽥 꽥꽥");
	}
}
class Mute implements SoundWay{
	@Override
	public void sound() {
		System.out.println("....");
	}
}
class Beep implements SoundWay{
	public void sound() {
		System.out.println("삐삑~");
	}
}
class Duck02{
	private SoundWay sound;
	public void SetSound(SoundWay sound) {
		this.sound = sound;
		System.out.println("소리가 등록되었습니다.");
	}
	public void show() {
		if(sound != null) {
			System.out.print("오리 울음소리: ");
			sound.sound();
		}else {
			System.out.println("소리가 등록되지 않았습니다.");
		}
	}
}



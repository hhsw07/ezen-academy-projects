package javaexp.a07_object2;

/*
# 클래스 처리 단계
1. 클래스에서 객체 생성
2. 클래스 안에 클래스 선언으로, 객체 안에 종속된 객체 호출 처리
	1:1 객체 - 상속 객체
	ex) 컴퓨터와 cpu, 남자와 여자, 부모와 자식, 사람과 소유물품...
3. 클래스 안에 배열 클래스 호출로, 객체 안에 종속된 배열형 객체 호출 처리
	ex) 마트와 물건들, 가계부와 수입/지출항목, 은행과 대수의 고객...
 */
class Man{
	private Woman woman;
	private String name;
	public Man() {				// 기본 생성자
		super();
	}
	public Man(String name) {	// 사용자 정의 생성자
		super();
		this.name = name;
	}
	// 
	public Woman getWoman() {
		return woman;
	}
	public void setWoman(Woman woman) {
		this.woman = woman;
	}
	public void info() {
		System.out.println("남자의 이름은 "+name);
		if( woman != null) {
			System.out.println("남자 안에 있는 그녀는 ");
			System.out.println("이름: "+woman.getName());
			System.out.println("나이: "+woman.getAge());
			System.out.println("사는곳: "+woman.getLoc());
		}else {
			System.out.println("솔로입니다.");
		}
	}
}
class Woman{
	private String name;
	private int age;
	private String loc;
	public Woman() {									// 기본 생성자
		super();
	}
	public Woman(String name, int age, String loc) {	// 사용자 정의 생성자
		super();
		this.name = name;
		this.age = age;
		this.loc = loc;
	}
	// 필드를 간접적으로 접근하는 getter, setter 사용
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
}
class Person{
	private HandPhone hp;		// 필드
	private String name;

	public Person(String name) {	// 생성자
		super();
		this.name = name;
	}
	
	public String getName() {		// 메서드
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public void havePhone(HandPhone hp) {
		this.hp = hp;
	}
	public void inMyPocket() {
		System.out.println(name+"은");
		if(hp != null) {
			System.out.println(hp.getKind()+" 핸드폰을 가지고 있다.");
		}else {
			System.out.println("핸드폰이 없다.");
		}
	}
}
class HandPhone{
	private String kind;

	public HandPhone(String kind) {
		super();
		this.kind = kind;
	}

	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
}

public class A01_ClassVsClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Woman w1 = new Woman("이영자",27,"서울시 돈암동");
		Man m1 = new Man("홍길동");
		// 1:1 관계 객체 안에 객체 할당 처리
		m1.setWoman(w1);
		m1.info();
		// ex) Person HandPhone
		// @@은
		// @@@ 핸드폰을 가지고 있다. or 핸드폰이 없다.
		Person p1 = new Person("김길동");
		System.out.println("사람이름: "+p1.getName());
		p1.inMyPocket();
		p1.havePhone(new HandPhone("갤럭시 폴드"));
		p1.inMyPocket();
		
	}

}

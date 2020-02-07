package javaexp.a06_inherit;

/*
# 다형성 이란?
1. 부모의 타입으로 같지만, 여러가지 상속한 다양한 객체 대입이 가능한 성질을 말한다.
	1) 부모 타입에는 모든 자식 객체가 대입이 가능하다.
	2) 자식 타입은 부모 타입으로 자동 타입 변환(promote)할 수 있다.
		부모타입 참조 = new 자식타입();
	ex) Cpu c1 = new Intel43Cpu();
		Cpu c2 = new Amd33Cpu();
	3) 효과로는 객체를 부품화하여 효과적으로 할당 처리할 수 있다.
	ex) 자동차는 바퀴만 바꾸어서 정상적으로 내부 기기 부분을 바꾸지 않아도 된다.
2. 자동 타입 변환(Promotion)
	1) 작은 데이터는 큰 데이터유형에 할당 할 때, 특별한 casting 작업 없이 바로 형이 변환되어 할당할 수 있다.
	ex) double num05 = 5;	(num05에는 5.0이 할당되어 있다.)
	2) 상속관계에서도 부모가 상속을 해주는 객체는 메모리를 포함하고 있기때문에, 더 큰 데이터 type으로 되어, 상속되는 하위 객체는
		promote로 할당 될 수 있다.
	ex) Father f1 = new Son();
		Father f2 = new Daughter(); // Father 큰 type, Son Daughter: 작은 type
3. 매개변수의 다형성
	1) 매개변수가 객체 타입일 경우, 해당 상위 매개변수 객체로, 하위객체가 대입이 가능하기 때문에 여러 상속받은 여러 형태의 객체를 할당할 수 있다.
	
 */

public class A05_PolyMorphism {

	public static void main(String[] args) {
		// ex) Animal을 상위로 재정의 sound() 하고, Cat Lion을 상속하고 해당 내용을 main()에서 promote 로 처리하세요.
		Animal[] anims = {new Cat(), new Lion(), new Panda()};
		for(Animal anim : anims) {
			anim.sound();
		}
		
		Zoo z01 = new Zoo("서울랜드 ", 3);
		// 다양한 anim클래스를 상속받은 객체 할당 가능하다
		
		// 상위 객체를 대입한 경우
		System.out.println("1)");
		z01.addAnim(anims[0]);
		System.out.println("2)");
		z01.addAnim(new Animal("강아지"));
		
		// 하위 객체를 대입한 경우
		System.out.println("3)");
		z01.addAnim(new Cat());
		System.out.println("4)");
		Cat c1 = new Cat();
		z01.addAnim(c1);
		System.out.println("5)");
		z01.addAnim(new Lion());
		System.out.println("6)");
		z01.addAnim(new Panda());
		z01.showAll();
		
		/*
		 ex) Zoo 동물원이름, Animal 배열, Animal의 하위 객체
		 	 고양이, 호랑이, 판다
		 	 울음소리 메서드
		 	 동물 리스트
		 */
		
		/*
		ex) Car 자동차명, Tire 배열, Tire의 하위 객체
			한국타이어, 금호타이어, @@타이어, @2타이어....
			자동차의 타이어 장착 메서드
			자동차가 가지고 있는 타이어 리스트
			
			Car 클래스
				int 자동차바퀴[4];(변수 4개생성)
				void 타이어장착(Tire t1){}(메서드 생성)
					자동차바퀴 = t1;(바퀴 장착)
				void 타이어리스트()
			Tire 클래스(상위) - 한국,금호,미쉐린, 넥센.. 클래스(하위)
				교체 메서드 생성					교체 메서드 생성(오버라이딩)
			main()
			Car 객체 생성.
			
		
			
		 */
//		Tire[] tireArr = {new hkTire(), new hkTire(), new khTire(), new khTire()};
		System.out.println();
		System.out.println();
		System.out.println("###################");
		Car c01 = new Car("소나타");
		// Tire tire = new hkTre();
		// Tire의 하위 객체로 상속한 모든 Tire는 다형성에 의해서 할당이 된다.
		// 추가적인 Tire는 상속만 하면, 할당이 가능하다.
		// 다형성: 확장성이 뛰어남.
		c01.changeTire(new hkTire());
		c01.changeTire(new hkTire());
		c01.changeTire(new mclTire());
		c01.changeTire(new nxTire());
		c01.changeTire(new nxTire());
		c01.changeTire(new nxTire());
		c01.changeTire(new nxTire());
		c01.showInfo();
		
		
	}
}
class Car{
	private String name;
	Tire[] tireArr;
	int adIdx;
	
	Car(String name){
		this.name = name;
		System.out.println(name+"가 달린다! 부릉부릉~");
		// 초기 Tire 배열 만들어서 타이어를 장착할 수 있게 설정.
		tireArr = new Tire[4];
	}
	// 차에서 타이어 위치와 해당 객체를 할당할 수 있는 메서드 정의
	/* changeTire(Tire tire, int position){
	 		tireArr[position-1] = tire; }
	 	void showTires(){
	 		String[] posStr = {"앞/왼쪽", "앞/오른쪽", "뒤/왼쪽", "뒤/오른쪽"};
	 		
 		}
	 * 
	 * 
	 */
	void changeTire(Tire t1) {
		if(adIdx < tireArr.length) {
			tireArr[adIdx++]= t1; 
			System.out.println("##교체한 타이어##");
			t1.change();
		} else {
			System.out.println("더 이상 타이어을 교체할 수 없습니다.");
		}
	}
	
	void showInfo(){
		System.out.println("@@ "+name+" 타이어 리스트 @@");
		for(Tire an : tireArr) {
			if(an != null) {
				an.change();
			}
		}
	 }
}
class Tire{
	String brand;
	
	Tire(String brand) {
		super();
		this.brand = brand;
	}
	// 재정의할 메서드 선언.
	void change() {
		System.out.print(brand+" 제품으로 교체합니다.\t");
	}
}
class hkTire extends Tire{
	// 반드시 상위에 선언한 생성자를 호출
	hkTire(){
		super("한국타이어");
	}
	// 상위 메서드 재정의(overriding) 처리
	void change() {
		super.change();	// 한국타이어의 특징을 추가적인 내용으로 재정의
		System.out.println("타이어는 한국타이어");
	}
}
class khTire extends Tire{
	khTire(){
		super("금호타이어");
	}
	void change() {
		super.change();
		System.out.println("잘 굴러가는 금호타이어");
	}
}
class mclTire extends Tire{
	mclTire(){
		super("미쉐린");
	}
	void change() {
		super.change();
		System.out.println("유명한 미쉐린");
	}
}
class nxTire extends Tire{
	nxTire(){
		super("넥센타이어");
	}
	void change() {
		super.change();
		System.out.println("튼튼한 넥센타이어");
	}
}

class Zoo{
	String name;
	// 할당 가능한 동물의 배열을 선언
	Animal[] anims;
	int adIdx;
	Zoo(String name, int cnt){
		// 입력값으로 배열의 개수 설정
		anims = new Animal[cnt];
		// 동물원의 이름 설정
		this.name = name;
	}
	public void addAnim(Animal anim) {	// 매개변수로 상위 객체 타입을 할 경우, 하위 객체를 대입 가능하다.
		// 현재 배열에 동물이 추가될 때마다 처리.
		if(adIdx < anims.length) {
			this.anims[adIdx++]= anim; 
			System.out.println("##동물원에 추가한 동물##");
			anim.sound();
		} else {
			System.out.println("동물원에 더 이상 동물을 추가할 수 없습니다.");
		}
	}
	public void showAll() {
		System.out.println(name+"동물원에 있는 동물들!!");
		for(Animal an : anims) {
			if(an != null)
			an.sound();
		}
		System.out.println("총"+anims.length+"마리가 살고 있습니다.");
	}
}
class Animal{
	private String kind;
	public Animal(String kind) {
		this.kind = kind;
	}
	void sound(){
		System.out.println(kind+"의 울음소리");
	}
}
class Cat extends Animal{

	public Cat() {
		super("고양이");
	}

	@Override
	void sound() {
		super.sound();
		System.out.println("야옹야옹");
	}

}
class Lion extends Animal{
	
	public Lion() {
		super("호랑이");
	}

	@Override
	void sound() {
		super.sound();
		System.out.println("어흥~~");
	}
}
class Panda extends Animal{
	
	public Panda() {
		super("판다");
	}

	@Override
	void sound() {
		super.sound();
		System.out.println("우워!!");
	}
}

package javaexp.a06_inherit;

class Flyway{
	public void flying() {
		System.out.println("기본적으로 나는 날개!!");
	}
}

class Wing01 extends Flyway{
	// public Wing01(){ super(); } default 생성자
	
	@Override
	public void flying() {
		// TODO Auto-generated method stub
//		super.flying();
		System.out.println("30분동안 나는 엔진 장착!! flying!!");
	}
}
class UpgradeWing02 extends Flyway{
	public UpgradeWing02(){ super(); }
	@Override
	public void flying() {
		// TODO Auto-generated method stub
//		super.flying();
		System.out.println("한국 전역을 나는 엔진 장착!! flying");
	}
}
class Robot{
	private Flyway fly;
	public void setFlyway(Flyway fly) {
		this.fly = fly;
		System.out.println("로봇이 날개를 장착했습니다.");
	}
	public void rbflying(){
		System.out.println("로봇!!");
		if (fly != null) {
			fly.flying();
		}else {
			System.out.println("날개 장착 안됨");
		}
	}
	
}

public class A06_PolyMorphism2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Robot r1 = new Robot();
		// Flyway fly에 아직 할당 된 값이 없음
		r1.rbflying();
		
		r1.setFlyway(new Wing01());
		r1.rbflying();
		r1.setFlyway(new UpgradeWing02());
		r1.rbflying();

	}

}

package javaexp.z01_util;

import java.util.ArrayList;

interface Ram{
	public void spec(); 
}
class SsRam implements Ram{
	public void spec(){
		System.out.println("16기가");
	}
}
class HnRam implements Ram{
	public void spec(){
		System.out.println("8기가");
	}
}
class Computer{
	private Ram r1;
	public void setRam(Ram r1){
		this.r1 = r1;
	}
	public void ramInfo(){
		if(r1 != null){
			r1.spec();
		}else{
			System.out.println("램이 장착되지 않았습니다.");
		}
	}
}
public class Z07_homework {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Computer c1 = new Computer();
		c1.ramInfo();
		c1.setRam(new SsRam());
		c1.ramInfo();
		
		Picture p1 = new Picture();
		p1.setPaint(new CirclePaint());
		p1.startPaint();
		p1.setPaint(new SquarePaint());
		p1.startPaint();
		p1.setPaint(new TrianPaint());
		p1.startPaint();
		
		//6. Bus와 버스에 탄 승객(다수)ArrayList로  1:다 관계의 객체를 구성하여,  
		//리스트하세요..
		// 1개 버스 - 승객1, 승객2....
		ArrayList<String> busPeople = new ArrayList<String>();
		String[] busPeople2 = new String[5];
		String[] busPeople3 = new String[6];
		busPeople.add("홍길동");
		busPeople.add("김길동");
		busPeople.add("박길동");
		busPeople.add("신길동");
		System.out.println("## 버스 탑승객 리스트 ##");
		System.out.println("1) for문 사용");
		for(int idx = 0;idx < busPeople.size(); idx++) {
			System.out.print(busPeople.get(idx)+"  ");
			busPeople2[idx] = busPeople.get(idx);
		}
		System.out.println("\n2) 향상된for문 사용");
		for(String name:busPeople) {
			System.out.print(name+"  ");
		}
		System.out.println("\n3) while문 사용");
		int idx = 0;
		while(idx < busPeople.size()) {
			System.out.print(busPeople.get(idx)+"  ");
			idx++;
		}
		System.out.println("\n일반배열");
		for(String name:busPeople2) {
			System.out.print(name+"  ");
		}
		System.out.println("\n일반배열2");
		System.arraycopy(busPeople2, 0, busPeople3, 0, busPeople2.length);
		for(String name:busPeople3) {
			System.out.print(name+"  ");
		}
	}

}
//5. Paint 인터페이스에 drawing() 추상메서드를 선언한 후,
//CirclePaint, SquarePaint, TrianPoint를 선언하고, 호출하세요.

interface Paint{
	public void drawing();
}
class CirclePaint implements Paint{
	@Override
	public void drawing() {
		System.out.println("원을 그려라");
	}
}
class SquarePaint implements Paint{
	@Override
	public void drawing() {
		System.out.println("사각형을 그려라");
	}
}
class TrianPaint implements Paint{
	public void drawing() {
		System.out.println("기차를 그려라");
	}
}
class Picture{
	Paint p1;
	public void setPaint(Paint p1) {
		this.p1 = p1;
	}
	public void startPaint() {
		p1.drawing();
	}
}








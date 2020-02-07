package javaexp.a04_object;
/*

 */
public class Duck {
	// 필드는 접근제어자((Access modifier) private로 선언한다.
	private String kind;
	private String color;
	public int cnt = 3;
	// 생성자는 public 선언한다.
	public Duck() {	// 기본(default) 생성자
		super();
		// TODO Auto-generated constructor stub
	}
	public Duck(String kind, String color) { // 필드를 매개변수로 사용한 생성자
		super();
		this.kind = kind;
		this.color = color;
	}
	
	
	// getter, setter 메서드: private로 제한된 필드를 간접적으로 접근하기 위해 메서드를 이용한다.
	// 1. 저장할 때: setXXX(매개변수)
	// 2. 호출할 때: getXXX()
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getKind() {
		return kind;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getColor() {
		return color;
	}
	
	

}

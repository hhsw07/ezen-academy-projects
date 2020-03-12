package z01_vo;

public class Myclasses {
	private String c_date; // 수강날짜
	private String c_thum; // 썸네일
	private String c_lec; // 강의
	private String c_name; // 클래스명
	public Myclasses(String c_date, String c_thum, String c_lec, String c_name) {
		super();
		this.c_date = c_date;
		this.c_thum = c_thum;
		this.c_lec = c_lec;
		this.c_name = c_name;
	}
	public String getC_date() {
		return c_date;
	}
	public void setC_date(String c_date) {
		this.c_date = c_date;
	}
	public String getC_thum() {
		return c_thum;
	}
	public void setC_thum(String c_thum) {
		this.c_thum = c_thum;
	}
	public String getC_lec() {
		return c_lec;
	}
	public void setC_lec(String c_lec) {
		this.c_lec = c_lec;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	
	
}

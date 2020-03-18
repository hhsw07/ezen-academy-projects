package z01_vo;

public class Point {
	private String pt_date; // 적립/사용날짜
	private String pt_detail; // 적립/사용내역
	private int pt_mileage; // 마일리지
	public Point() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Point(String pt_date, String pt_detail, int pt_mileage) {
		super();
		this.pt_date = pt_date;
		this.pt_detail = pt_detail;
		this.pt_mileage = pt_mileage;
	}
	public String getPt_date() {
		return pt_date;
	}
	public void setPt_date(String pt_date) {
		this.pt_date = pt_date;
	}
	public String getPt_detail() {
		return pt_detail;
	}
	public void setPt_detail(String pt_detail) {
		this.pt_detail = pt_detail;
	}
	public int getPt_mileage() {
		return pt_mileage;
	}
	public void setPt_mileage(int pt_mileage) {
		this.pt_mileage = pt_mileage;
	}
	
	

}

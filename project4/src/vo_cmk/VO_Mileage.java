package vo_cmk;

import java.util.Date;

public class VO_Mileage {
	private int point_no;	//포인트번호
	private String mem_id;	//아이디
	private Date point_date; // 적립/사용날짜
	private String point_detail; // 적립/사용내역
	private int point_mileage; // 마일리지
	public VO_Mileage() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public VO_Mileage(Date point_date, String point_detail, int point_mileage) {
		super();
		this.point_date = point_date;
		this.point_detail = point_detail;
		this.point_mileage = point_mileage;
	}

	public int getPoint_no() {
		return point_no;
	}
	public void setPoint_no(int point_no) {
		this.point_no = point_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public Date getPoint_date() {
		return point_date;
	}
	public void setPoint_date(Date point_date) {
		this.point_date = point_date;
	}
	public String getPoint_detail() {
		return point_detail;
	}
	public void setPoint_detail(String point_detail) {
		this.point_detail = point_detail;
	}
	public int getPoint_mileage() {
		return point_mileage;
	}
	public void setPoint_mileage(int point_mileage) {
		this.point_mileage = point_mileage;
	}
	
}

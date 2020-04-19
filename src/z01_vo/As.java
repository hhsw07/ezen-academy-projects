package z01_vo;

import java.util.Date;

public class As {
	private int as_no;
	private int ord_no;
	private String as_cate;
	private String as_detail;
	private Date as_date;
	
	private String mem_id;
	
	public As() {
		super();
		// TODO Auto-generated constructor stub
	}

	public As(int as_no, int ord_no, String as_cate, String as_detail, Date as_date) {
		super();
		this.as_no = as_no;
		this.ord_no = ord_no;
		this.as_cate = as_cate;
		this.as_detail = as_detail;
		this.as_date = as_date;
	}

	public As(int as_no, String as_cate, Date as_date, String mem_id) {
		super();
		this.as_no = as_no;
		this.as_cate = as_cate;
		this.as_date = as_date;
		this.mem_id = mem_id;
	}

	public int getAs_no() {
		return as_no;
	}

	public void setAs_no(int as_no) {
		this.as_no = as_no;
	}

	public int getOrd_no() {
		return ord_no;
	}

	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}

	public String getAs_cate() {
		return as_cate;
	}

	public void setAs_cate(String as_cate) {
		this.as_cate = as_cate;
	}

	public String getAs_detail() {
		return as_detail;
	}

	public void setAs_detail(String as_detail) {
		this.as_detail = as_detail;
	}

	public Date getAs_date() {
		return as_date;
	}

	public void setAs_date(Date as_date) {
		this.as_date = as_date;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
}

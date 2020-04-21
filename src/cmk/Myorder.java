package cmk;

import java.util.Date;

public class Myorder {
	private int ord_no;
	private String parts_img;
	private String parts_name;
	private int req_cnt;
	private int req;
	private int total;
	private Date ord_date;
	private String ord_stat;
	
	public Myorder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Myorder(int ord_no, String parts_img, String parts_name, int req_cnt, int req, int total, Date ord_date,
			String ord_stat) {
		super();
		this.ord_no = ord_no;
		this.parts_img = parts_img;
		this.parts_name = parts_name;
		this.req_cnt = req_cnt;
		this.req = req;
		this.total = total;
		this.ord_date = ord_date;
		this.ord_stat = ord_stat;
	}
	public int getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}
	public String getParts_img() {
		return parts_img;
	}
	public void setParts_img(String parts_img) {
		this.parts_img = parts_img;
	}
	public String getParts_name() {
		return parts_name;
	}
	public void setParts_name(String parts_name) {
		this.parts_name = parts_name;
	}
	public int getReq_cnt() {
		return req_cnt;
	}
	public void setReq_cnt(int req_cnt) {
		this.req_cnt = req_cnt;
	}
	public int getReq() {
		return req;
	}
	public void setReq(int req) {
		this.req = req;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public Date getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}
	public String getOrd_stat() {
		return ord_stat;
	}
	public void setOrd_stat(String ord_stat) {
		this.ord_stat = ord_stat;
	}
	
	

	
}

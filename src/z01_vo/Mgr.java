package z01_vo;

import java.util.Date;

public class Mgr {
	private int mgr_no;
	private int as_no;
	private Date mgr_date;
	private String mgr_stat;
	private String mgr_note;
	private int mgr_price;
	
	private Date as_date;
	private String as_cate;
	private String mem_id;
	
	
	public Mgr() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Mgr(int mgr_no, int as_no, Date as_date, String as_cate,
			String mem_id, Date mgr_date, String mgr_stat ) {
		super();
		this.mgr_no = mgr_no;
		this.as_no = as_no;
		this.as_date = as_date;
		this.as_cate = as_cate;
		this.mem_id = mem_id;
		this.mgr_date = mgr_date;
		this.mgr_stat = mgr_stat;
	}

	public Mgr(int mgr_no, int as_no, Date mgr_date, String mgr_stat, String mgr_note, int mgr_price) {
		super();
		this.mgr_no = mgr_no;
		this.as_no = as_no;
		this.mgr_date = mgr_date;
		this.mgr_stat = mgr_stat;
		this.mgr_note = mgr_note;
		this.mgr_price = mgr_price;
	}

	public int getMgr_no() {
		return mgr_no;
	}

	public void setMgr_no(int mgr_no) {
		this.mgr_no = mgr_no;
	}

	public int getAs_no() {
		return as_no;
	}

	public void setAs_no(int as_no) {
		this.as_no = as_no;
	}

	public Date getMgr_date() {
		return mgr_date;
	}

	public void setMgr_date(Date mgr_date) {
		this.mgr_date = mgr_date;
	}

	public String getMgr_stat() {
		return mgr_stat;
	}

	public void setMgr_stat(String mgr_stat) {
		this.mgr_stat = mgr_stat;
	}

	public String getMgr_note() {
		return mgr_note;
	}

	public void setMgr_note(String mgr_note) {
		this.mgr_note = mgr_note;
	}

	public int getMgr_price() {
		return mgr_price;
	}

	public void setMgr_price(int mgr_price) {
		this.mgr_price = mgr_price;
	}
	
	
}	

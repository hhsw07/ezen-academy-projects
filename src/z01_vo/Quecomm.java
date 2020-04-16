package z01_vo;

import java.util.Date;

public class Quecomm {
	private int quec_no;
	private int que_no;
	private String mem_id;
	private String quec_etail;
	private Date quec_date;
	
	public Quecomm() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Quecomm(int quec_no, int que_no, String mem_id, String quec_etail, Date quec_date) {
		super();
		this.quec_no = quec_no;
		this.que_no = que_no;
		this.mem_id = mem_id;
		this.quec_etail = quec_etail;
		this.quec_date = quec_date;
	}

	public int getQuec_no() {
		return quec_no;
	}

	public void setQuec_no(int quec_no) {
		this.quec_no = quec_no;
	}

	public int getQue_no() {
		return que_no;
	}

	public void setQue_no(int que_no) {
		this.que_no = que_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getQuec_etail() {
		return quec_etail;
	}

	public void setQuec_etail(String quec_etail) {
		this.quec_etail = quec_etail;
	}

	public Date getQuec_date() {
		return quec_date;
	}

	public void setQuec_date(Date quec_date) {
		this.quec_date = quec_date;
	}
	
}

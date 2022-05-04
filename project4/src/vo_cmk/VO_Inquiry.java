package vo_cmk;

import java.util.Date;

public class VO_Inquiry {
	private int inquiry_no; // 문의번호
	private String mem_id; // 아이디
	private String inquiry_detail; // 문의내용
	private Date inquiry_date; // 문의날짜
	private String inquiry_re; // 답변내용
	public VO_Inquiry() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public VO_Inquiry(Date inquiry_date, String inquiry_detail, String inquiry_re) {
		super();
		this.inquiry_detail = inquiry_detail;
		this.inquiry_date = inquiry_date;
		this.inquiry_re = inquiry_re;
	}

	public int getInquiry_no() {
		return inquiry_no;
	}
	public void setInquiry_no(int inquiry_no) {
		this.inquiry_no = inquiry_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getInquiry_detail() {
		return inquiry_detail;
	}
	public void setInquiry_detail(String inquiry_detail) {
		this.inquiry_detail = inquiry_detail;
	}
	public Date getInquiry_date() {
		return inquiry_date;
	}
	public void setInquiry_date(Date inquiry_date) {
		this.inquiry_date = inquiry_date;
	}
	public String getInquiry_re() {
		return inquiry_re;
	}
	public void setInquiry_re(String inquiry_re) {
		this.inquiry_re = inquiry_re;
	}
	

}

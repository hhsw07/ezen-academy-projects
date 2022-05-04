package vo_khj;

public class Review_VO {
	private int order_no; // 주문번호 p04_pReview
	private String mem_id; // 아이디 p04_Member
	private String pReview_date;  // 등록일 p04_pReview
	private String pReview_detail; // 후기내용 p04_pReview
	
	public Review_VO(int order_no, String mem_id, String pReview_date, String pReview_detail) {
		super();
		this.order_no = order_no;
		this.mem_id = mem_id;
		this.pReview_date = pReview_date;
		this.pReview_detail = pReview_detail;
	}
	public Review_VO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getpReview_date() {
		return pReview_date;
	}
	public void setpReview_date(String pReview_date) {
		this.pReview_date = pReview_date;
	}
	public String getpReview_detail() {
		return pReview_detail;
	}
	public void setpReview_detail(String pReview_detail) {
		this.pReview_detail = pReview_detail;
	}
	
	
}

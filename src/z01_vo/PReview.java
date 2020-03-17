package z01_vo;

public class PReview {
	private int order_no; // 주문번호
	private String mem_id; // 아이디
	private String pReview_detail;     // 후기내용
	private int pReview_star;     // 평점
	private String pReview_date;      // 등록일
	public PReview(int order_no, String mem_id, String pReview_detail, int pReview_star, String pReview_date) {
		super();
		this.order_no = order_no;
		this.mem_id = mem_id;
		this.pReview_detail = pReview_detail;
		this.pReview_star = pReview_star;
		this.pReview_date = pReview_date;
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
	public String getpReview_detail() {
		return pReview_detail;
	}
	public void setpReview_detail(String pReview_detail) {
		this.pReview_detail = pReview_detail;
	}
	public int getpReview_star() {
		return pReview_star;
	}
	public void setpReview_star(int pReview_star) {
		this.pReview_star = pReview_star;
	}
	public String getpReview_date() {
		return pReview_date;
	}
	public void setpReview_date(String pReview_date) {
		this.pReview_date = pReview_date;
	}
	
	
}

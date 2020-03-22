package vo_cmk;

public class VO_Orderlist {
	private int order_no; // 주문번호
	private String order_date; // 주문날짜
	private String store_img; // 썸네일
	private String store_title; // 클래스이름
	private int order_cnt; // 수량
	private String order_code; // 주문상태
	public VO_Orderlist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public VO_Orderlist(int order_no, String order_date, String store_img, String store_title, int order_cnt,
			String order_code) {
		super();
		this.order_no = order_no;
		this.order_date = order_date;
		this.store_img = store_img;
		this.store_title = store_title;
		this.order_cnt = order_cnt;
		this.order_code = order_code;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getStore_img() {
		return store_img;
	}
	public void setStore_img(String store_img) {
		this.store_img = store_img;
	}
	public String getStore_title() {
		return store_title;
	}
	public void setStore_title(String store_title) {
		this.store_title = store_title;
	}
	public int getOrder_cnt() {
		return order_cnt;
	}
	public void setOrder_cnt(int order_cnt) {
		this.order_cnt = order_cnt;
	}
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}
	
	
}

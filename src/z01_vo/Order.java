package z01_vo;

public class Order {
	private int order_no; // 주문번호
	private String mem_id;     // 아이디
	private int store_no;     // 상품번호
	private String order_date;     // 구매날짜
	private String order_code;     // 주문상태
	private int order_cnt;     // 구매갯수
	private String order_delicompany;     // 택배회사
	private String order_delicode;      // 운송장번호
	public Order(int order_no, String mem_id, int store_no, String order_date, String order_code, int order_cnt,
			String order_delicompany, String order_delicode) {
		super();
		this.order_no = order_no;
		this.mem_id = mem_id;
		this.store_no = store_no;
		this.order_date = order_date;
		this.order_code = order_code;
		this.order_cnt = order_cnt;
		this.order_delicompany = order_delicompany;
		this.order_delicode = order_delicode;
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
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}
	public int getOrder_cnt() {
		return order_cnt;
	}
	public void setOrder_cnt(int order_cnt) {
		this.order_cnt = order_cnt;
	}
	public String getOrder_delicompany() {
		return order_delicompany;
	}
	public void setOrder_delicompany(String order_delicompany) {
		this.order_delicompany = order_delicompany;
	}
	public String getOrder_delicode() {
		return order_delicode;
	}
	public void setOrder_delicode(String order_delicode) {
		this.order_delicode = order_delicode;
	}
	
	

}

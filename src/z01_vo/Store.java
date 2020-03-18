package z01_vo;
//ArrayList<Store> sList = new ArrayList<Store>();
//setAttribute("sList", sList);
public class Store {
	private int store_no; // 상품번호
	private String mem_id;     // 호스트
	private String store_title;     // 상품명
	private String store_code;     // 승인상태
	private int store_price;     // 가격
	private int store_totCnt;     // 총갯수
	private String store_detail;     // 상품설명
	private String strore_date;     // 신청일
	private String store_img;      // 상품이미지
	private String store_category;	// 상품분류
	//point는 뺐습니다. 필요에 따라서 넣어주세요
	public Store() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Store(int store_no, String mem_id, String store_title, String store_code, int store_price, int store_totCnt,
			String store_detail, String strore_date, String store_img, String store_category) {
		super();
		this.store_no = store_no;
		this.mem_id = mem_id;
		this.store_title = store_title;
		this.store_code = store_code;
		this.store_price = store_price;
		this.store_totCnt = store_totCnt;
		this.store_detail = store_detail;
		this.strore_date = strore_date;
		this.store_img = store_img;
		this.store_category = store_category;
	}
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getStore_title() {
		return store_title;
	}
	public void setStore_title(String store_title) {
		this.store_title = store_title;
	}
	public String getStore_code() {
		return store_code;
	}
	public void setStore_code(String store_code) {
		this.store_code = store_code;
	}
	public int getStore_price() {
		return store_price;
	}
	public void setStore_price(int store_price) {
		this.store_price = store_price;
	}
	public int getStore_totCnt() {
		return store_totCnt;
	}
	public void setStore_totCnt(int store_totCnt) {
		this.store_totCnt = store_totCnt;
	}
	public String getStore_detail() {
		return store_detail;
	}
	public void setStore_detail(String store_detail) {
		this.store_detail = store_detail;
	}
	public String getStrore_date() {
		return strore_date;
	}
	public void setStrore_date(String strore_date) {
		this.strore_date = strore_date;
	}
	public String getStore_img() {
		return store_img;
	}
	public void setStore_img(String store_img) {
		this.store_img = store_img;
	}
	public String getStore_category() {
		return store_category;
	}
	public void setStore_category(String store_category) {
		this.store_category = store_category;
	}
	
	
}

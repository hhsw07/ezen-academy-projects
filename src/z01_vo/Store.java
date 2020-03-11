package z01_vo;

public class Store {
	private int store_no;
	private String mem_id;
	private String store_title;
	private String store_code;
	private int store_price;
	private int store_totCnt;
	private String store_detail;
	private String strore_date;
	private String store_img;
	public Store(int store_no, String mem_id, String store_title, String store_code, int store_price, int store_totCnt,
			String store_detail, String strore_date, String store_img) {
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
	}
	/**
	 * @return the store_no
	 */
	public int getStore_no() {
		return store_no;
	}
	/**
	 * @param store_no the store_no to set
	 */
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	/**
	 * @return the mem_id
	 */
	public String getMem_id() {
		return mem_id;
	}
	/**
	 * @param mem_id the mem_id to set
	 */
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	/**
	 * @return the store_title
	 */
	public String getStore_title() {
		return store_title;
	}
	/**
	 * @param store_title the store_title to set
	 */
	public void setStore_title(String store_title) {
		this.store_title = store_title;
	}
	/**
	 * @return the store_code
	 */
	public String getStore_code() {
		return store_code;
	}
	/**
	 * @param store_code the store_code to set
	 */
	public void setStore_code(String store_code) {
		this.store_code = store_code;
	}
	/**
	 * @return the store_price
	 */
	public int getStore_price() {
		return store_price;
	}
	/**
	 * @param store_price the store_price to set
	 */
	public void setStore_price(int store_price) {
		this.store_price = store_price;
	}
	/**
	 * @return the store_totCnt
	 */
	public int getStore_totCnt() {
		return store_totCnt;
	}
	/**
	 * @param store_totCnt the store_totCnt to set
	 */
	public void setStore_totCnt(int store_totCnt) {
		this.store_totCnt = store_totCnt;
	}
	/**
	 * @return the store_detail
	 */
	public String getStore_detail() {
		return store_detail;
	}
	/**
	 * @param store_detail the store_detail to set
	 */
	public void setStore_detail(String store_detail) {
		this.store_detail = store_detail;
	}
	/**
	 * @return the strore_date
	 */
	public String getStrore_date() {
		return strore_date;
	}
	/**
	 * @param strore_date the strore_date to set
	 */
	public void setStrore_date(String strore_date) {
		this.strore_date = strore_date;
	}
	/**
	 * @return the store_img
	 */
	public String getStore_img() {
		return store_img;
	}
	/**
	 * @param store_img the store_img to set
	 */
	public void setStore_img(String store_img) {
		this.store_img = store_img;
	}

}
package z01_vo;

public class Orderlist {
	private int o_num; // 주문번호
	private String o_date; // 주문날짜
	private String o_thum; // 썸네일
	private String o_name; // 클래스이름
	private String o_opt; // 옵션
	private int o_qty; // 수량
	private String o_sta; // 주문상태
	public Orderlist(int o_num, String o_date, String o_thum, String o_name, String o_opt, int o_qty, String o_sta) {
		super();
		this.o_num = o_num;
		this.o_date = o_date;
		this.o_thum = o_thum;
		this.o_name = o_name;
		this.o_opt = o_opt;
		this.o_qty = o_qty;
		this.o_sta = o_sta;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public String getO_date() {
		return o_date;
	}
	public void setO_date(String o_date) {
		this.o_date = o_date;
	}
	public String getO_thum() {
		return o_thum;
	}
	public void setO_thum(String o_thum) {
		this.o_thum = o_thum;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
	public String getO_opt() {
		return o_opt;
	}
	public void setO_opt(String o_opt) {
		this.o_opt = o_opt;
	}
	public int getO_qty() {
		return o_qty;
	}
	public void setO_qty(int o_qty) {
		this.o_qty = o_qty;
	}
	public String getO_sta() {
		return o_sta;
	}
	public void setO_sta(String o_sta) {
		this.o_sta = o_sta;
	}
	
	
}

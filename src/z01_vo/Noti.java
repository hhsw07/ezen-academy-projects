package z01_vo;

public class Noti {
	private int noti_no;
	private String noti_title;
	private String noti_detail;
	private String noti_date;
	private String noti_code;
	public Noti(int noti_no, String noti_title, String noti_detail, String noti_date, String noti_code) {
		super();
		this.noti_no = noti_no;
		this.noti_title = noti_title;
		this.noti_detail = noti_detail;
		this.noti_date = noti_date;
		this.noti_code = noti_code;
	}
	/**
	 * @return the noti_no
	 */
	public int getNoti_no() {
		return noti_no;
	}
	/**
	 * @param noti_no the noti_no to set
	 */
	public void setNoti_no(int noti_no) {
		this.noti_no = noti_no;
	}
	/**
	 * @return the noti_title
	 */
	public String getNoti_title() {
		return noti_title;
	}
	/**
	 * @param noti_title the noti_title to set
	 */
	public void setNoti_title(String noti_title) {
		this.noti_title = noti_title;
	}
	/**
	 * @return the noti_detail
	 */
	public String getNoti_detail() {
		return noti_detail;
	}
	/**
	 * @param noti_detail the noti_detail to set
	 */
	public void setNoti_detail(String noti_detail) {
		this.noti_detail = noti_detail;
	}
	/**
	 * @return the noti_date
	 */
	public String getNoti_date() {
		return noti_date;
	}
	/**
	 * @param noti_date the noti_date to set
	 */
	public void setNoti_date(String noti_date) {
		this.noti_date = noti_date;
	}
	/**
	 * @return the noti_code
	 */
	public String getNoti_code() {
		return noti_code;
	}
	/**
	 * @param noti_code the noti_code to set
	 */
	public void setNoti_code(String noti_code) {
		this.noti_code = noti_code;
	}
}

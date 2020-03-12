package z01_vo;

public class Inquiry {
	private int	inquiry_no;
	private String	mem_id;
	private String	inquiry_detail;
	private String	inquiry_date;
	private String	inquiry_code;
	private String	inquiry_re;
	public Inquiry(int inquiry_no, String mem_id, String inquiry_detail, String inquiry_date, String inquiry_code,
			String inquiry_re) {
		super();
		this.inquiry_no = inquiry_no;
		this.mem_id = mem_id;
		this.inquiry_detail = inquiry_detail;
		this.inquiry_date = inquiry_date;
		this.inquiry_code = inquiry_code;
		this.inquiry_re = inquiry_re;
	}
	/**
	 * @return the inquiry_no
	 */
	public int getInquiry_no() {
		return inquiry_no;
	}
	/**
	 * @param inquiry_no the inquiry_no to set
	 */
	public void setInquiry_no(int inquiry_no) {
		this.inquiry_no = inquiry_no;
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
	 * @return the inquiry_detail
	 */
	public String getInquiry_detail() {
		return inquiry_detail;
	}
	/**
	 * @param inquiry_detail the inquiry_detail to set
	 */
	public void setInquiry_detail(String inquiry_detail) {
		this.inquiry_detail = inquiry_detail;
	}
	/**
	 * @return the inquiry_date
	 */
	public String getInquiry_date() {
		return inquiry_date;
	}
	/**
	 * @param inquiry_date the inquiry_date to set
	 */
	public void setInquiry_date(String inquiry_date) {
		this.inquiry_date = inquiry_date;
	}
	/**
	 * @return the inquiry_code
	 */
	public String getInquiry_code() {
		return inquiry_code;
	}
	/**
	 * @param inquiry_code the inquiry_code to set
	 */
	public void setInquiry_code(String inquiry_code) {
		this.inquiry_code = inquiry_code;
	}
	/**
	 * @return the inquiry_re
	 */
	public String getInquiry_re() {
		return inquiry_re;
	}
	/**
	 * @param inquiry_re the inquiry_re to set
	 */
	public void setInquiry_re(String inquiry_re) {
		this.inquiry_re = inquiry_re;
	}
	
	
		
}		
		

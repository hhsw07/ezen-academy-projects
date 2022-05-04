package vo_hsw;

import java.util.Date;

public class Adm_Ckind {
	//CKIND_NO|COURSE_NO|COURSE_KIND|COURSE_OPENDATE    |
	//COURSE_PRICE|COURSE_TOTCNT|COURSE_CURCNT|
	private int ckind_no; 		//수업분류번호
	private int course_no; // 클래스번호
	private String course_kind;	//수업분류 종류
	private Date course_opendate;
	private int course_price;
	private int course_totcnt;
	private int course_curcnt;
	
	
	public Adm_Ckind() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Adm_Ckind(int ckind_no, int course_no, String course_kind) {
		super();
		this.ckind_no = ckind_no;
		this.course_no = course_no;
		this.course_kind = course_kind;
	}


	public Adm_Ckind(int ckind_no, int course_no, String course_kind, Date course_opendate, int course_price,
			int course_totcnt, int course_curcnt) {
		super();
		this.ckind_no = ckind_no;
		this.course_no = course_no;
		this.course_kind = course_kind;
		this.course_opendate = course_opendate;
		this.course_price = course_price;
		this.course_totcnt = course_totcnt;
		this.course_curcnt = course_curcnt;
	}


	/**
	 * @return the ckind_no
	 */
	public int getCkind_no() {
		return ckind_no;
	}


	/**
	 * @param ckind_no the ckind_no to set
	 */
	public void setCkind_no(int ckind_no) {
		this.ckind_no = ckind_no;
	}


	/**
	 * @return the course_no
	 */
	public int getCourse_no() {
		return course_no;
	}


	/**
	 * @param course_no the course_no to set
	 */
	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}


	/**
	 * @return the course_kind
	 */
	public String getCourse_kind() {
		return course_kind;
	}


	/**
	 * @param course_kind the course_kind to set
	 */
	public void setCourse_kind(String course_kind) {
		this.course_kind = course_kind;
	}


	/**
	 * @return the course_opendate
	 */
	public Date getCourse_opendate() {
		return course_opendate;
	}


	/**
	 * @param course_opendate the course_opendate to set
	 */
	public void setCourse_opendate(Date course_opendate) {
		this.course_opendate = course_opendate;
	}


	/**
	 * @return the course_price
	 */
	public int getCourse_price() {
		return course_price;
	}


	/**
	 * @param course_price the course_price to set
	 */
	public void setCourse_price(int course_price) {
		this.course_price = course_price;
	}


	/**
	 * @return the course_totcnt
	 */
	public int getCourse_totcnt() {
		return course_totcnt;
	}


	/**
	 * @param course_totcnt the course_totcnt to set
	 */
	public void setCourse_totcnt(int course_totcnt) {
		this.course_totcnt = course_totcnt;
	}


	/**
	 * @return the course_curcnt
	 */
	public int getCourse_curcnt() {
		return course_curcnt;
	}


	/**
	 * @param course_curcnt the course_curcnt to set
	 */
	public void setCourse_curcnt(int course_curcnt) {
		this.course_curcnt = course_curcnt;
	}
	
	
	
}

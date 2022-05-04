package vo_hsw;

import java.util.Date;

//ArrayList<Course> couList = new ArrayList<Course>();
//setAttribute("couList", couList);
public class Adm_Cou {
	private int course_no; // 클래스번호
	private String mem_id;     // 호스트
	private Date course_inputdate;     // 클래스등록일
	private String course_title;     // 클래스명
	private String course_detail;     // 상세설명
	private String course_img;     // 클래스이미지
	private String course_category;		// 수업분류
	
	public Adm_Cou() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Adm_Cou(int course_no) {
		super();
		this.course_no = course_no;
	}

	public Adm_Cou(int course_no, String mem_id, Date course_inputdate, String course_title, String course_detail,
			String course_img, String course_category) {
		super();
		this.course_no = course_no;
		this.mem_id = mem_id;
		this.course_inputdate = course_inputdate;
		this.course_title = course_title;
		this.course_detail = course_detail;
		this.course_img = course_img;
		this.course_category = course_category;
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
	 * @return the course_inputdate
	 */
	public Date getCourse_inputdate() {
		return course_inputdate;
	}


	/**
	 * @param course_inputdate the course_inputdate to set
	 */
	public void setCourse_inputdate(Date course_inputdate) {
		this.course_inputdate = course_inputdate;
	}


	/**
	 * @return the course_title
	 */
	public String getCourse_title() {
		return course_title;
	}


	/**
	 * @param course_title the course_title to set
	 */
	public void setCourse_title(String course_title) {
		this.course_title = course_title;
	}


	/**
	 * @return the course_detail
	 */
	public String getCourse_detail() {
		return course_detail;
	}


	/**
	 * @param course_detail the course_detail to set
	 */
	public void setCourse_detail(String course_detail) {
		this.course_detail = course_detail;
	}


	/**
	 * @return the course_img
	 */
	public String getCourse_img() {
		return course_img;
	}


	/**
	 * @param course_img the course_img to set
	 */
	public void setCourse_img(String course_img) {
		this.course_img = course_img;
	}


	/**
	 * @return the course_category
	 */
	public String getCourse_category() {
		return course_category;
	}


	/**
	 * @param course_category the course_category to set
	 */
	public void setCourse_category(String course_category) {
		this.course_category = course_category;
	}
	
	
	
}

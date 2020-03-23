package vo_cmk;
//ArrayList<Course> couList = new ArrayList<Course>();
//setAttribute("couList", couList);
public class VO_Course {
	private int course_no; // 클래스번호
	private String mem_id;     // 호스트
	private String course_inputdate;     // 클래스등록일
	private String course_title;     // 클래스명
	private String course_detail;     // 상세설명
	private String course_img;     // 클래스이미지
	private String course_category;		// 수업분류
	
	public VO_Course() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VO_Course(String course_title, String course_img) {
		super();
		this.course_title = course_title;
		this.course_img = course_img;
	}

	public int getCourse_no() {
		return course_no;
	}

	public void setCourse_no(int course_no) {
		this.course_no = course_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getCourse_inputdate() {
		return course_inputdate;
	}

	public void setCourse_inputdate(String course_inputdate) {
		this.course_inputdate = course_inputdate;
	}

	public String getCourse_title() {
		return course_title;
	}

	public void setCourse_title(String course_title) {
		this.course_title = course_title;
	}

	public String getCourse_detail() {
		return course_detail;
	}

	public void setCourse_detail(String course_detail) {
		this.course_detail = course_detail;
	}

	public String getCourse_img() {
		return course_img;
	}

	public void setCourse_img(String course_img) {
		this.course_img = course_img;
	}

	public String getCourse_category() {
		return course_category;
	}

	public void setCourse_category(String course_category) {
		this.course_category = course_category;
	}
	
	
	
}

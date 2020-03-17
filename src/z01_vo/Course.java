package z01_vo;

public class Course {
	private int course_no; // 클래스번호
	private String mem_id;     // 호스트
	private String course_inputdate;     // 클래스등록일
	private String course_title;     // 클래스명
	private String course_kind;     // 클래스종류
	private String course_detail;     // 상세설명
	private int course_curCnt;     // 현인원
	private int course_totCnt;     // 최대인원
	private int course_price;     // 가격
	private String course_img;     // 클래스이미지
	private String course_opendate;      // 수강일
	
	public Course(int course_no, String mem_id, String course_inputdate, String course_title, String course_kind,
			String course_detail, int course_curCnt, int course_totCnt, int course_price, String course_img,
			String course_opendate) {
		super();
		this.course_no = course_no;
		this.mem_id = mem_id;
		this.course_inputdate = course_inputdate;
		this.course_title = course_title;
		this.course_kind = course_kind;
		this.course_detail = course_detail;
		this.course_curCnt = course_curCnt;
		this.course_totCnt = course_totCnt;
		this.course_price = course_price;
		this.course_img = course_img;
		this.course_opendate = course_opendate;
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
	public String getCourse_kind() {
		return course_kind;
	}
	public void setCourse_kind(String course_kind) {
		this.course_kind = course_kind;
	}
	public String getCourse_detail() {
		return course_detail;
	}
	public void setCourse_detail(String course_detail) {
		this.course_detail = course_detail;
	}
	public int getCourse_curCnt() {
		return course_curCnt;
	}
	public void setCourse_curCnt(int course_curCnt) {
		this.course_curCnt = course_curCnt;
	}
	public int getCourse_totCnt() {
		return course_totCnt;
	}
	public void setCourse_totCnt(int course_totCnt) {
		this.course_totCnt = course_totCnt;
	}
	public int getCourse_price() {
		return course_price;
	}
	public void setCourse_price(int course_price) {
		this.course_price = course_price;
	}
	public String getCourse_img() {
		return course_img;
	}
	public void setCourse_img(String course_img) {
		this.course_img = course_img;
	}
	public String getCourse_opendate() {
		return course_opendate;
	}
	public void setCourse_opendate(String course_opendate) {
		this.course_opendate = course_opendate;
	}
	
	
	
}

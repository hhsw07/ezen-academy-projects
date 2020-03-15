package z01_vo;

public class Request {
	private int req_no; // 신청번호
	private int course_no;     // 클래스번호
	private String mem_id;     // 아이디
	private String req_date;     // 신청날짜
	private String req_code;      // 신청상태
	public Request(int req_no, int course_no, String mem_id, String req_date, String req_code) {
		super();
		this.req_no = req_no;
		this.course_no = course_no;
		this.mem_id = mem_id;
		this.req_date = req_date;
		this.req_code = req_code;
	}
	public int getReq_no() {
		return req_no;
	}
	public void setReq_no(int req_no) {
		this.req_no = req_no;
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
	public String getReq_date() {
		return req_date;
	}
	public void setReq_date(String req_date) {
		this.req_date = req_date;
	}
	public String getReq_code() {
		return req_code;
	}
	public void setReq_code(String req_code) {
		this.req_code = req_code;
	}
	
	
	
}

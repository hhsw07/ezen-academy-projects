package z01_vo;
//ArrayList<Notice> notiList = new ArrayList<Notice>();
//setAttribute("notiList", notiList);
public class Notice {
	private int noti_no; // 공지사항번호
	private String noti_title;     // 공지제목
	private String noti_detail;     // 공지내용
	private String noti_date;     // 공지등록일
	private String noti_code;      // 중요여부
	public Notice(int noti_no, String noti_title, String noti_detail, String noti_date, String noti_code) {
		super();
		this.noti_no = noti_no;
		this.noti_title = noti_title;
		this.noti_detail = noti_detail;
		this.noti_date = noti_date;
		this.noti_code = noti_code;
	}
	public int getNoti_no() {
		return noti_no;
	}
	public void setNoti_no(int noti_no) {
		this.noti_no = noti_no;
	}
	public String getNoti_title() {
		return noti_title;
	}
	public void setNoti_title(String noti_title) {
		this.noti_title = noti_title;
	}
	public String getNoti_detail() {
		return noti_detail;
	}
	public void setNoti_detail(String noti_detail) {
		this.noti_detail = noti_detail;
	}
	public String getNoti_date() {
		return noti_date;
	}
	public void setNoti_date(String noti_date) {
		this.noti_date = noti_date;
	}
	public String getNoti_code() {
		return noti_code;
	}
	public void setNoti_code(String noti_code) {
		this.noti_code = noti_code;
	}
	
	
}

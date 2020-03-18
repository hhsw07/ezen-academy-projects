package z01_vo;
//ArrayList<CReview> commList = new ArrayList<CReview>();
//setAttribute("commList", commList);
public class CReview {
	private int req_no; // 신청번호
	private String cReview_detail;     // 후기내용
	private int cReview_star;     // 평점
	private String cReview_date;      // 등록일
	
	public CReview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CReview(int req_no, String cReview_detail, int cReview_star, String cReview_date) {
		super();
		this.req_no = req_no;
		this.cReview_detail = cReview_detail;
		this.cReview_star = cReview_star;
		this.cReview_date = cReview_date;
	}
	public int getReq_no() {
		return req_no;
	}
	public void setReq_no(int req_no) {
		this.req_no = req_no;
	}
	public String getcReview_detail() {
		return cReview_detail;
	}
	public void setcReview_detail(String cReview_detail) {
		this.cReview_detail = cReview_detail;
	}
	public int getcReview_star() {
		return cReview_star;
	}
	public void setcReview_star(int cReview_star) {
		this.cReview_star = cReview_star;
	}
	public String getcReview_date() {
		return cReview_date;
	}
	public void setcReview_date(String cReview_date) {
		this.cReview_date = cReview_date;
	}
	
	
}

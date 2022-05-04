package z01_vo;

public class MpReview {
	private String mr_thum;
	private String mr_name;
	private String mr_date;
	private String mr_review;
	public MpReview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MpReview(String mr_thum, String mr_name, String mr_date, String mr_review) {
		super();
		this.mr_thum = mr_thum;
		this.mr_name = mr_name;
		this.mr_date = mr_date;
		this.mr_review = mr_review;
	}
	public String getMr_thum() {
		return mr_thum;
	}
	public void setMr_thum(String mr_thum) {
		this.mr_thum = mr_thum;
	}
	public String getMr_name() {
		return mr_name;
	}
	public void setMr_name(String mr_name) {
		this.mr_name = mr_name;
	}
	public String getMr_date() {
		return mr_date;
	}
	public void setMr_date(String mr_date) {
		this.mr_date = mr_date;
	}
	public String getMr_review() {
		return mr_review;
	}
	public void setMr_review(String mr_review) {
		this.mr_review = mr_review;
	}
	

}

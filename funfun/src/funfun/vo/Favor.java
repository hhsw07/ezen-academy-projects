package funfun.vo;

public class Favor {
	private String proTitle; // 프로젝트 제목
	private String cateTitle; // 카테고리
	private String dDay; // 프로젝트 종료까지 남은 날짜
	private String image; // 프로젝트 이미지
	private String makerName; // 프로젝트 메이커 이름
	private String memEmail; // 회원 이메일
	private String percent; // 현재모금률
	private String proCode; // 프로젝트 코드
	
	public String getPercent() {
		return percent;
	}

	public String getProCode() {
		return proCode;
	}
	public String getemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getProTitle() {
		return proTitle;
	}
	public String getCateTitle() {
		return cateTitle;
	}
	public String getdDay() {
		return dDay;
	}
	public String getImage() {
		return image;
	}
	public String getMakerName() {
		return makerName;
	}
}

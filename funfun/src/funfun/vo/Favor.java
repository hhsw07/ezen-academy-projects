package funfun.vo;

public class Favor {
	private String proTitle; // 프로젝트 제목
	private String cateTitle; // 카테고리
	private String dDay; // 프로젝트 종료까지 남은 날짜
	private String image; // 프로젝트 이미지
	private String makerName; // 프로젝트 메이커 이름
	private String memCode; // 회원 코드
	
	public String getMemCode() {
		return memCode;
	}
	public void setMemCode(String memCode) {
		this.memCode = memCode;
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

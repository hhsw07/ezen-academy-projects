package funfun.vo;

public class Withdrawl {
	private String wiDate;
	private int minusBal;
	private String wiCurr;
	private String memEmail;
	public String getWiDate() {
		return wiDate;
	}
	public void setWiDate(String wiDate) {
		this.wiDate = wiDate;
	}

	public int getMinusBal() {
		return minusBal;
	}
	public void setMinusBal(int minusBal) {
		this.minusBal = minusBal;
	}
	public String getWiCurr() {
		return wiCurr;
	}
	public void setWiCurr(String wiCurr) {
		this.wiCurr = wiCurr;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
}

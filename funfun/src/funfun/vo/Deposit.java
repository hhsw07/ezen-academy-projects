package funfun.vo;

public class Deposit {
	private String rddate;
	private String amount;
	private String curr;
	private String memEmail;
	private String chargeQueryAmount;
	
	public String getChargeQueryAmount() {
		return chargeQueryAmount;
	}
	public void setChargeQueryAmount(String chargeQueryAmount) {
		this.chargeQueryAmount = chargeQueryAmount;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getRddate() {
		return rddate;
	}
	public void setRddate(String rddate) {
		this.rddate = rddate;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCurr() {
		return curr;
	}
	public void setCurr(String curr) {
		this.curr = curr;
	}
}

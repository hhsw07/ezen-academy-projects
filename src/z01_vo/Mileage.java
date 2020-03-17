package z01_vo;
//ArrayList<Mileage> ptList = new ArrayList<Mileage>();
//setAttribute("ptList", ptList);
public class Mileage {
	private String m_date; // 적립/사용날짜
	private String m_detail; // 적립/사용내역
	private int point; // 마일리지
	public Mileage(String m_date, String m_detail, int point) {
		super();
		this.m_date = m_date;
		this.m_detail = m_detail;
		this.point = point;
	}
	public String getM_date() {
		return m_date;
	}
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	public String getM_detail() {
		return m_detail;
	}
	public void setM_detail(String m_detail) {
		this.m_detail = m_detail;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	

}

package z01_vo;
//ArrayList<Mileage> ptList = new ArrayList<Mileage>();
//setAttribute("ptList", ptList);
public class Mileage {
	private int point_no;	//포인트번호
	private String mem_id;	//아이디
	private String m_date; // 적립/사용날짜
	private String m_detail; // 적립/사용내역
	private int point_mileage; // 마일리지
	
	public Mileage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Mileage(int point_no, String mem_id, String m_date, String m_detail, int point_mileage) {
		super();
		this.point_no = point_no;
		this.mem_id = mem_id;
		this.m_date = m_date;
		this.m_detail = m_detail;
		this.point_mileage = point_mileage;
	}

	public int getPoint_no() {
		return point_no;
	}

	public void setPoint_no(int point_no) {
		this.point_no = point_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
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

	public int getPoint_mileage() {
		return point_mileage;
	}

	public void setPoint_mileage(int point_mileage) {
		this.point_mileage = point_mileage;
	}

	

}

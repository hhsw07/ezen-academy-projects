package z01_vo;
//ArrayList<Addr> addList = new ArrayList<Addr>();
//setAttribute("addList", addList);
public class Shipment {
	private String ship_tit;     // 배송지명
	private String ship_name;     // 수령인
	private String ship_tel;     // 연락처
	private String ship_tel2;     // 추가연락처
	private String ship_zip;     // 우편번호
	private String ship_addr;     // 주소
	private String ship_addr2;      // 상세주소
	
	public Shipment() {
		super();
	}

	public Shipment(String ship_tit, String ship_name, String ship_tel, String ship_tel2, String ship_zip,
			String ship_addr, String ship_addr2) {
		super();
		this.ship_tit = ship_tit;
		this.ship_name = ship_name;
		this.ship_tel = ship_tel;
		this.ship_tel2 = ship_tel2;
		this.ship_zip = ship_zip;
		this.ship_addr = ship_addr;
		this.ship_addr2 = ship_addr2;
	}

	public String getShip_tit() {
		return ship_tit;
	}

	public void setShip_tit(String ship_tit) {
		this.ship_tit = ship_tit;
	}

	public String getShip_name() {
		return ship_name;
	}

	public void setShip_name(String ship_name) {
		this.ship_name = ship_name;
	}

	public String getShip_tel() {
		return ship_tel;
	}

	public void setShip_tel(String ship_tel) {
		this.ship_tel = ship_tel;
	}

	public String getShip_tel2() {
		return ship_tel2;
	}

	public void setShip_tel2(String ship_tel2) {
		this.ship_tel2 = ship_tel2;
	}

	public String getShip_zip() {
		return ship_zip;
	}

	public void setShip_zip(String ship_zip) {
		this.ship_zip = ship_zip;
	}

	public String getShip_addr() {
		return ship_addr;
	}

	public void setShip_addr(String ship_addr) {
		this.ship_addr = ship_addr;
	}

	public String getShip_addr2() {
		return ship_addr2;
	}

	public void setShip_addr2(String ship_addr2) {
		this.ship_addr2 = ship_addr2;
	}
	
	
}

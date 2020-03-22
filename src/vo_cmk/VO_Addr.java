package vo_cmk;

public class VO_Addr {
	private int addr_no; // 배송지번호
	private String mem_id;     // 아이디
	private String addr_title;     // 배송지명
	private String addr_name;     // 수령인
	private String addr_phone;     // 연락처
	private String addr_phone2;     // 추가연락처
	private String addr_mailAddr;     // 우편번호
	private String addr_address;     // 주소
	private String addr_address2;      // 상세주소
	public VO_Addr() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public VO_Addr(String addr_title, String addr_name, String addr_phone, String addr_phone2, String addr_mailAddr,
			String addr_address, String addr_address2) {
		super();
		this.addr_title = addr_title;
		this.addr_name = addr_name;
		this.addr_phone = addr_phone;
		this.addr_phone2 = addr_phone2;
		this.addr_mailAddr = addr_mailAddr;
		this.addr_address = addr_address;
		this.addr_address2 = addr_address2;
	}
	public VO_Addr(int addr_no, String mem_id, String addr_title, String addr_name, String addr_phone,
			String addr_phone2, String addr_mailAddr, String addr_address, String addr_address2) {
		super();
		this.addr_no = addr_no;
		this.mem_id = mem_id;
		this.addr_title = addr_title;
		this.addr_name = addr_name;
		this.addr_phone = addr_phone;
		this.addr_phone2 = addr_phone2;
		this.addr_mailAddr = addr_mailAddr;
		this.addr_address = addr_address;
		this.addr_address2 = addr_address2;
	}

	public int getAddr_no() {
		return addr_no;
	}
	public void setAddr_no(int addr_no) {
		this.addr_no = addr_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getAddr_title() {
		return addr_title;
	}
	public void setAddr_title(String addr_title) {
		this.addr_title = addr_title;
	}
	public String getAddr_name() {
		return addr_name;
	}
	public void setAddr_name(String addr_name) {
		this.addr_name = addr_name;
	}
	public String getAddr_phone() {
		return addr_phone;
	}
	public void setAddr_phone(String addr_phone) {
		this.addr_phone = addr_phone;
	}
	public String getAddr_phone2() {
		return addr_phone2;
	}
	public void setAddr_phone2(String addr_phone2) {
		this.addr_phone2 = addr_phone2;
	}
	public String getAddr_mailAddr() {
		return addr_mailAddr;
	}
	public void setAddr_mailAddr(String addr_mailAddr) {
		this.addr_mailAddr = addr_mailAddr;
	}
	public String getAddr_address() {
		return addr_address;
	}
	public void setAddr_address(String addr_address) {
		this.addr_address = addr_address;
	}
	public String getAddr_address2() {
		return addr_address2;
	}
	public void setAddr_address2(String addr_address2) {
		this.addr_address2 = addr_address2;
	}
	
}
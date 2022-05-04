package vo_cmk;

import java.util.Date;

public class VO_Member {
	private String mem_id; // 아이디
	private String mem_pass;     // 비밀번호
	private String mem_name;     // 이름
	private String mem_mail;     // 이메일
	private String mem_nickname;     // 닉네임
	private Date mem_birth;     // 생년월일
	private String mem_phone;     // 휴대폰
	private String mem_code;     // 등급
	public VO_Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public VO_Member(String mem_mail, String mem_nickname, String mem_phone) {
		super();
		this.mem_mail = mem_mail;
		this.mem_nickname = mem_nickname;
		this.mem_phone = mem_phone;
	}

	public VO_Member(String mem_id, String mem_name, String mem_mail, String mem_nickname, Date mem_birth,
			String mem_phone) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_mail = mem_mail;
		this.mem_nickname = mem_nickname;
		this.mem_birth = mem_birth;
		this.mem_phone = mem_phone;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pass() {
		return mem_pass;
	}
	public void setMem_pass(String mem_pass) {
		this.mem_pass = mem_pass;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_mail() {
		return mem_mail;
	}
	public void setMem_mail(String mem_mail) {
		this.mem_mail = mem_mail;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public Date getMem_birth() {
		return mem_birth;
	}
	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
	}
	

}

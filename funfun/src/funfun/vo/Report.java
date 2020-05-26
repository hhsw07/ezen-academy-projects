package funfun.vo;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public class Report {
	private int report_code; // 신고번호
	private int mem_code; // 회원번호
	private int pro_code; // 프로젝트 번호
	private String report_detail; // 신고내용
	private String report_img; // 첨부파일
	private String report_date; // 신고날짜
	
	// 파일 등록 처리 객체
		private MultipartFile[] report;
		private ArrayList<String> filenames;
		// 파일 로딩 정보 가지고 오기
		private String[] fnames;
	
	public int getReport_code() {
		return report_code;
	}
	public void setReport_code(int report_code) {
		this.report_code = report_code;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public int getPro_code() {
		return pro_code;
	}
	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}
	public String getReport_detail() {
		return report_detail;
	}
	public void setReport_detail(String report_detail) {
		this.report_detail = report_detail;
	}
	public String getReport_img() {
		return report_img;
	}
	public void setReport_img(String report_img) {
		this.report_img = report_img;
	}
	public String getReport_date() {
		return report_date;
	}
	public void setReport_date(String report_date) {
		this.report_date = report_date;
	}
	public MultipartFile[] getReport() {
		return report;
	}
	public void setReport(MultipartFile[] report) {
		this.report = report;
	}
	public ArrayList<String> getFilenames() {
		return filenames;
	}
	public void setFilenames(ArrayList<String> filenames) {
		this.filenames = filenames;
	}
	public String[] getFnames() {
		return fnames;
	}
	public void setFnames(String[] fnames) {
		this.fnames = fnames;
	}
	
	

}

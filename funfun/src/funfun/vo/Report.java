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
	private String pro_title; //  프로젝트 명
	private String mem_name; // 회원이름
	
	// 2. 페이지
	private int count; 		// 총 데이터 건수
	private int pageSize; 	// 한번에 보여줄 페이지 크기..
	private int pageCount; 	// 총 페이지 수. count/pageSize
	private int curPage; 	// 클릭한 현재 페이지번호
	private int start;		// 화면에 보여줄 페이지의 시작번호
	private int end;		// 화면에 보여줄 페이지의 마지막번호
	// 3. 블럭 처리.
	private int blocksize;  // 한번에 보여줄 block의 크기
	private int startBlock;	// block의 시작번호
	private int endBlock;	// block의 마지막번호
	
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
	public String getPro_title() {
		return pro_title;
	}
	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBlocksize() {
		return blocksize;
	}
	public void setBlocksize(int blocksize) {
		this.blocksize = blocksize;
	}
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	

}

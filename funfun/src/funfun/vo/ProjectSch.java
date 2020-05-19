package funfun.vo;

public class ProjectSch {
	private String projectsch;
	private String cate_title; // 카테고리 명
	private String pro_title; // 프로젝트 명
	private String pro_keyword; // 키워드
	private String maker_name; // 메이커 명
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
	
	
	public String getProjectsch() {
		return projectsch;
	}
	public void setProjectsch(String projectsch) {
		this.projectsch = projectsch;
	}
	public String getCate_title() {
		return cate_title;
	}
	public void setCate_title(String cate_title) {
		this.cate_title = cate_title;
	}
	public String getPro_title() {
		return pro_title;
	}
	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}
	public String getPro_keyword() {
		return pro_keyword;
	}
	public void setPro_keyword(String pro_keyword) {
		this.pro_keyword = pro_keyword;
	}
	public String getMaker_name() {
		return maker_name;
	}
	public void setMaker_name(String maker_name) {
		this.maker_name = maker_name;
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

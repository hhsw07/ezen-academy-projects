package funfun.vo;

public class Project {

	private int pro_code;
	private int maker_code;
	private String mem_code;
	private String pro_reg_date;
	private String pro_sub_date;
	private String pro_title;
	private String cate_title;
	private int pro_target;
	private String pro_start_date;
	private String pro_finish_date;
	private String pro_image;
	private String pro_story;
	private String pro_docu;
	private String pro_keyword;
	private String pro_curr;
	
	private String maker_name;
	
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
	
	public Project() {
		super();
	}
	public int getPro_code() {
		return pro_code;
	}
	public void setPro_code(int pro_code) {
		this.pro_code = pro_code;
	}
	public int getMaker_code() {
		return maker_code;
	}
	public void setMaker_code(int maker_code) {
		this.maker_code = maker_code;
	}
	public String getPro_reg_date() {
		return pro_reg_date;
	}
	public void setPro_reg_date(String pro_reg_date) {
		this.pro_reg_date = pro_reg_date;
	}
	public String getPro_sub_date() {
		return pro_sub_date;
	}
	public void setPro_sub_date(String pro_sub_date) {
		this.pro_sub_date = pro_sub_date;
	}
	public String getPro_title() {
		return pro_title;
	}
	public void setPro_title(String pro_title) {
		this.pro_title = pro_title;
	}
	public String getCate_title() {
		return cate_title;
	}
	public void setCate_title(String cate_title) {
		this.cate_title = cate_title;
	}
	public int getPro_target() {
		return pro_target;
	}
	public void setPro_target(int pro_target) {
		this.pro_target = pro_target;
	}
	public String getPro_start_date() {
		return pro_start_date;
	}
	public void setPro_start_date(String pro_start_date) {
		this.pro_start_date = pro_start_date;
	}
	public String getPro_finish_date() {
		return pro_finish_date;
	}
	public void setPro_finish_date(String pro_finish_date) {
		this.pro_finish_date = pro_finish_date;
	}
	public String getPro_image() {
		return pro_image;
	}
	public void setPro_image(String pro_image) {
		this.pro_image = pro_image;
	}
	public String getPro_story() {
		return pro_story;
	}
	public void setPro_story(String pro_story) {
		this.pro_story = pro_story;
	}
	public String getPro_docu() {
		return pro_docu;
	}
	public void setPro_docu(String pro_docu) {
		this.pro_docu = pro_docu;
	}
	public String getPro_keyword() {
		return pro_keyword;
	}
	public void setPro_keyword(String pro_keyword) {
		this.pro_keyword = pro_keyword;
	}
	public String getPro_curr() {
		return pro_curr;
	}
	public void setPro_curr(String pro_curr) {
		this.pro_curr = pro_curr;
	}
	public String getMaker_name() {
		return maker_name;
	}
	public void setMaker_name(String maker_name) {
		this.maker_name = maker_name;
	}
	public String getMem_code() {
		return mem_code;
	}
	public void setMem_code(String mem_code) {
		this.mem_code = mem_code;
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

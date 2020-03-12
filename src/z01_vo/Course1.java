package z01_vo;

public class Course1 {
		private int course_no;
		private String course_host;
		private String course_name;
		private String course_kind;
		private String course_explain;
		private int course_nowCnt;
		private int course_totCnt;
		private String course_date;
		private int course_price;
		private String course_img;
		
		public Course1(int course_no, String course_host, String course_name, String course_kind, String course_explain,
				int course_nowCnt, int course_totCnt, String course_date, int course_price, String course_img) {
			super();
			this.course_no = course_no;
			this.course_host = course_host;
			this.course_name = course_name;
			this.course_kind = course_kind;
			this.course_explain = course_explain;
			this.course_nowCnt = course_nowCnt;
			this.course_totCnt = course_totCnt;
			this.course_date = course_date;
			this.course_price = course_price;
			this.course_img = course_img;
		}
		public int getCourse_no() {
			return course_no;
		}
		public void setCourse_no(int course_no) {
			this.course_no = course_no;
		}
		public String getCourse_host() {
			return course_host;
		}
		public void setCourse_host(String course_host) {
			this.course_host = course_host;
		}
		public String getCourse_name() {
			return course_name;
		}
		public void setCourse_name(String course_name) {
			this.course_name = course_name;
		}
		public String getCourse_kind() {
			return course_kind;
		}
		public void setCourse_kind(String course_kind) {
			this.course_kind = course_kind;
		}
		public String getCourse_explain() {
			return course_explain;
		}
		public void setCourse_explain(String course_explain) {
			this.course_explain = course_explain;
		}
		public int getCourse_nowCnt() {
			return course_nowCnt;
		}
		public void setCourse_nowCnt(int course_nowCnt) {
			this.course_nowCnt = course_nowCnt;
		}
		public int getCourse_totCnt() {
			return course_totCnt;
		}
		public void setCourse_totCnt(int course_totCnt) {
			this.course_totCnt = course_totCnt;
		}
		public String getCourse_date() {
			return course_date;
		}
		public void setCourse_date(String course_date) {
			this.course_date = course_date;
		}
		public int getCourse_price() {
			return course_price;
		}
		public void setCourse_price(int course_price) {
			this.course_price = course_price;
		}
		public String getCourse_img() {
			return course_img;
		}
		public void setCourse_img(String course_img) {
			this.course_img = course_img;
		}
	 

}

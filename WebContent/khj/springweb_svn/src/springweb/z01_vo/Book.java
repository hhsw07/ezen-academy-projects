package springweb.z01_vo;

public class Book {
	private String title;
	private int price;
	private String publisher;
	private String writer;
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(String title, int price, String publisher, String writer) {
		super();
		this.title = title;
		this.price = price;
		this.publisher = publisher;
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
}

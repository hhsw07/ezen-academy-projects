package javaexp.a07_object2;

import java.util.ArrayList;
// 1대 다 클래스 구성
class SchoolClass{
	private String clsName;
	private ArrayList<Student> slist;
	public SchoolClass(String clsName) {
		// 생성자로 반의 이름과 학생list 초기값 설정
		super();
		this.clsName = clsName;
		slist = new ArrayList<Student>();
	}
	// 학생정보 등록
	public void regStudent(Student ins) {
		System.out.println("#학생정보 등록#");
		slist.add(ins);
	}
	// 학생 성적 조회
	public void searchStudent(String name) {
		Student sc = null;	// 조회된 학생
		for(Student sch: slist) {
			// 이름이 검색되면
			if(sch.getName().equals(name)) {
				// 조회된 학생 객체를 할당 처리
				sc = sch;
			}
		}
		System.out.println("# 이름: "+name+" 검색된 학생정보 #");
		System.out.print(sc.getName()+"\t");
		System.out.print(sc.getKor()+"\t");
		System.out.print(sc.getEng()+"\t");
		System.out.print(sc.getMath()+"\n");
	}
	// 전체 학생 정보 출력
	public void showList(){
		System.out.println("# "+clsName+"반 학생 성적 #");
		for(Student std: slist) {
			System.out.print(std.getName()+"\t");
			System.out.print(std.getKor()+"\t");
			System.out.print(std.getEng()+"\t");
			System.out.print(std.getMath()+"\n");
		}
	}
}



public class A03_ArrayListVsObject {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ArrayList<데이터유형>
		// ArrayList<class명> : 여러개의 속성 값을 가진 객체 단위의 동적배열을 만들 수 있다.
		// ex) 1반 학생들의 국영수 성적 동적배열
		ArrayList<Student> class01 = new ArrayList<Student>();
		// 1. 단위 객체들을 추가 처리	.add(new 클래스명());
		// [(속성1,속성2), (속성1,속성2), (속성1,속성2)]
		class01.add(new Student("홍길동", 90, 80, 85));
		class01.add(new Student("신길동", 60, 70, 90));
		class01.add(new Student("김길동", 70, 85, 86));
		class01.add(new Student("마길동", 78, 90, 80));
		class01.add(new Student("오길동", 80, 100, 70));
		/* 2. ArrayList안에 포함된 객체의 속성 접근
		 	1) ArrayList의 참조 변수를 호출
			2) 해당 참조변수의 순번을 index로 호출: 참조변수.get(index)
				참조변수.get(index): 포함된 객체를 의미함.
			3) 속성을 접근: .getXXX() 개체에 포함된 속성 접근
		 */
		// ex) 1반의 첫번째 학생의 이름과 영어 점수 출력 처리
		Student stu = class01.get(0);
		System.out.println("이름: "+ stu.getName()+"\t영어점수: "+stu.getEng() );
		// ex) 3번째 학생의 국어, 여어, 수학 점수의 합산 (3번째학생의 index = 2)
		int tot = class01.get(2).getKor() + class01.get(2).getEng()+ class01.get(2).getMath();
		System.out.println("3번째 학생의 국영수 점수 합산: "+tot);
		// ex) 구매한 물건을 list하려고 한다. Product 클래스( 물건명, 가격, 개수)로 선언하고
		//		ArrayList에 물건 객체를 3개 이상 담아서 2번째 물건의 총비용을 출력하세요.
		/*
		 * spList					spList 배열 = 객체를 
		 * 	1번 사과 5000원 2개			{"사과", 5000, 2}	-> 1번상품정보(객체1)
		 * 	2번 커피 20000원 1개			{"커피",20000,1}	-> 2번상품정보(객체2)
		 * 	3번 생수 500 12개			{"생수",500,12}	-> 3번상품정보(객체3)
		 * 	...						...				-> Product 클래스로 설계
		 * 
		 * 
		 */
		ArrayList<Product> spList = new ArrayList<Product>();
		spList.add(new Product("사과",5000,2));
		spList.add(new Product("커피",20000,1));
		spList.add(new Product("생수",500,12));
		Product prod = spList.get(1);
		tot = prod.getCost() * prod.getCnt();
		System.out.println("2번째 물건의 총비용: "+ tot);
		prod.show();
		int sum = 0;
		System.out.println("물건명\t가격\t개수\t총계");
		for(Product prd:spList) {
			// show()가 각 단위 객체의 가격*개수 리턴하기 때문에 전체 구매 합산을 누적할 수 있다.
			sum += prd.show();
		}
		System.out.println("총합계: "+sum);
		System.out.println();
		System.out.println("#################################");
		System.out.println();
		// 3-5 이름의 반을 선언(생성, 초기화)
		SchoolClass sc = new SchoolClass("3-5");
		// 학생정보 등록
		sc.regStudent(new Student("홍길동", 90, 80, 85));
		sc.regStudent(new Student("신길동", 60, 70, 90));
		sc.regStudent(new Student("김길동", 70, 85, 86));
		sc.regStudent(new Student("마길동", 78, 90, 80));
		sc.regStudent(new Student("오길동", 80, 100, 70));
		
		sc.showList();
		sc.searchStudent("홍길동");
		
		// 연도별 프로야구팀(rank3) 성적 처리
		// 1:다 관계로 2019,2018 데이터 기준으로 처리되게 클래스를 선언하세요.
		/*
		 * 2018년				-> 1:다 클래스 연결
		 * 등수 이름 승 패 무
		 * 1  SK				-> 팀 클래스 생성 
		 * 2    두산
		 * 3    한화
		 * 2019년
		 * 등수 이름 승 패 무
		 * 1    두산 
		 * 2    키움
		 * 3  SK
		 * 
		 */
		BaseBall b1 = new BaseBall(2018);
		b1.regTeam(new Team("SK",78,65,1));
		b1.regTeam(new Team("두산",93,51,0));
		b1.regTeam(new Team("한화",77,67,0));
		b1.showLeague();
		
		BaseBall b2 = new BaseBall(2019);
		b2.regTeam(new Team("두산",88,55,1));
		b2.regTeam(new Team("키움",86,57,1));
		b2.regTeam(new Team("SK",88,55,1));
		b2.showLeague();
		
		
		
	}
}
class Team{
	private String name;
	private int win;
	private int def;
	private int draw;
	public Team(String name, int win, int def, int draw) {
		super();
		this.name = name;
		this.win = win;
		this.def = def;
		this.draw = draw;
	}
	public void showRecord() {
		System.out.print(name+"\t"+win+"\t"+def+"\t"+draw+"\t");
		System.out.printf("%2.3f\n",win/(double)(win+def));
	}
}

class BaseBall{
	private int year;
	private ArrayList<Team> tlist;
	public BaseBall(int year) {
		super();
		this.year = year;
		tlist = new ArrayList<Team>();
	}
	public void regTeam(Team t1) {
		tlist.add(t1);
		System.out.println("팀 정보 등록");
	}
	public void showLeague() {
		System.out.println("등수\t이름\t승\t패\t무\t승률");
		int idx = 1;
		for(Team t2: tlist) {
			System.out.print(idx++ +"\t");
			t2.showRecord();
		}
			
		
		
	}
}


class Product{
	private String name;
	private int cost;
	private int cnt;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String name, int cost, int cnt) {
		super();
		this.name = name;
		this.cost = cost;
		this.cnt = cnt;
	}
	public int show() {
		System.out.print(name+"\t");
		System.out.print(cost+"\t");
		System.out.print(cnt+"\t");
		System.out.println((cost*cnt)+"\t");
		return cost*cnt;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the cost
	 */
	public int getCost() {
		return cost;
	}
	/**
	 * @param cost the cost to set
	 */
	public void setCost(int cost) {
		this.cost = cost;
	}
	/**
	 * @return the cnt
	 */
	public int getCnt() {
		return cnt;
	}
	/**
	 * @param cnt the cnt to set
	 */
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
}



class Student{
	private String name;
	private int kor;
	private int eng;
	private int math;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(String name, int kor, int eng, int math) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the kor
	 */
	public int getKor() {
		return kor;
	}
	/**
	 * @param kor the kor to set
	 */
	public void setKor(int kor) {
		this.kor = kor;
	}
	/**
	 * @return the eng
	 */
	public int getEng() {
		return eng;
	}
	/**
	 * @param eng the eng to set
	 */
	public void setEng(int eng) {
		this.eng = eng;
	}
	/**
	 * @return the math
	 */
	public int getMath() {
		return math;
	}
	/**
	 * @param math the math to set
	 */
	public void setMath(int math) {
		this.math = math;
	}
	
}
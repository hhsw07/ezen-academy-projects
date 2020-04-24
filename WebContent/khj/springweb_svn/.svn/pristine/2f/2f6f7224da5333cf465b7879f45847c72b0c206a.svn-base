package springweb.z02.util;

import java.util.ArrayList;

import com.google.gson.Gson;

import springweb.d01_database.A01_Database;
import springweb.z01_vo.Book;
import springweb.z01_vo.Emp;
import springweb.z01_vo.EmpList;
import springweb.z01_vo.Member;
import springweb.z01_vo.Person;
import springweb.z01_vo.ProdList;
import springweb.z01_vo.Product;

public class A01_GSONexp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# GSon api의 활용
1. 객체 ==> json문자열, json문자열 ==> 객체
2. 단위 객체, 배열 객체..
 * */
		// 객체 ==> json문자열 변환처리( client==>server, server ==> client)
		// json데이터 전송할 때, 활용..
		// ex) webserver에서 폰에 json데이터를 전송할 때, 활용된다.
		//     webserver단(jsp, spring에서 처리)
		// 1. 객체 생성 
		Product p01 = new Product("사과",3000,2);
		// 2. Gson 객체 생성과 메서드 toJSON(객체참조) 사용.
		Gson gson = new Gson();
		String jsondata = gson.toJson(p01);
		System.out.println("# Product의 json 데이터 #");
		System.out.println(jsondata);
		/*
		ex1) Person 객체로 이름 나이 사는곳을 설정하고,
		객체에 데이터를 입력한 후, Gson api에 의해서.
		json 데이터를 만들세요..
		ex2) A01_Database.java의 public Emp getEmp(int empno)
		를 활용하여, Emp의 json데이터를 처리하세요.
		 * 
		 * */
		Person p1 = new Person("홍길동",25,"서울 신림동");
		String jsondata2 = gson.toJson(p1);
		System.out.println(jsondata2);
		A01_Database dao = new A01_Database();
		Emp emp = dao.getEmp(7369);
		String jsonEmp = gson.toJson(emp);
		System.out.println(jsonEmp);
/*
# list형 데이터에 대한 json data변환처리..
[ { "empno":7934,"ename":"MILLER","job":"CLERK", "sal":1300.0 }, { "empno":7902,"ename":"FORD","job":"ANALYST", "sal":3000.0 }, { "empno":7900,"ename":"JAMES","job":"CLERK", "sal":950.0 }] 
 * */		
		ArrayList<Emp> elist = dao.getEmpList();
		String jsonList = gson.toJson(elist);
		System.out.println(jsonList);
/*
3. client(핸드폰)에서 서버에서온 json 데이터 객체화 처리.
 * */		
		// {"id":"himan","pass":"7777"}
		String jsData = "{\"id\":\"himan\",\"pass\":\"7777\"}";
		Member mem = gson.fromJson(jsData, Member.class);
		System.out.println("#json를 통해서 만들어진 Member의 데이터#");
		System.out.println(mem.getId());
		System.out.println(mem.getPass());
		// ex) 도서명 도서가격  출판사 저자 속성값을 가진 json 데이터를
		// 만들고, 이 json데이터를 통해 할당할 객체 Book을 선언하고,
		// 해당 Book객체에 데이터를 처리하세요..
		// {"title":"안드로이드 실무","price":30000,"publisher":"아이티나라","writer":"홍길동"}
		// 
		String jsData2 = "{\"title\":\"안드로이드 실무\",\"price\":30000,\"publisher\":\"아이티나라\",\"writer\":\"홍길동\"}";
		Book bk = gson.fromJson(jsData2, Book.class);
		System.out.println("## Book ##");
		System.out.println(bk.getTitle());
		System.out.println(bk.getPrice());
		System.out.println(bk.getWriter());
		System.out.println(bk.getPublisher());
/*
4. ArrayList<VO>의 json 데이터 처리..
	1) gson.fromJson(jsData2, ArrayList<Book>().class) (X)
	2) ArrayList<Book>의 객체를 수용할 수 있는 객체를 따로 선언하고 사용하여야 한다.
	3) {"emplist":[{"empno":7934,"ename":"MILLER","job":"CLERK",
					"mgr":7782,"hiredate":"2012. 12. 20. 오후 12:00:00","sal":1300.0,
					"comm":0.0,"deptno":10},
				    {"empno":7902,"ename":"FORD","job":"ANALYST","mgr":7566,"hiredate":"2012. 12. 20. 오후 12:00:00",
				    "sal":3000.0,"comm":0.0,"deptno":20}]} 
	4) 사용자 정의 객체가 필요로 한다.
 * 
 */
		String jsData3 = "{\"emplist\":[{\"empno\":7934,\"ename\":\"MILLER\",\"job\":\"CLERK\",\r\n" + 
				"					\"mgr\":7782,\"sal\":1300.0,\r\n" + 
				"					\"comm\":0.0,\"deptno\":10},\r\n" + 
				"				    {\"empno\":7902,\"ename\":\"FORD\",\"job\":\"ANALYST\",\"mgr\":7566,\r\n" + 
				"				    \"sal\":3000.0,\"comm\":0.0,\"deptno\":20}]} ";
		EmpList emplist = gson.fromJson(jsData3, EmpList.class);
		ArrayList<Emp> list = emplist.getEmplist();
		for(Emp e:list) {
			System.out.print(e.getEmpno()+"\t");
			System.out.print(e.getEname()+"\t");
			System.out.print(e.getJob()+"\t");
			System.out.print(e.getSal()+"\n");
		}
		String jsData4="{\"plist\":[ {\"name\":\"사과\",\"price\":3000,\"cnt\":5},\r\n" + 
				"		   {\"name\":\"바나나\",\"price\":4000,\"cnt\":3},\r\n" + 
				"		   {\"name\":\"딸기\",\"price\":12000,\"cnt\":2} ]}";
		
		ProdList plist= gson.fromJson(jsData4, ProdList.class);
		for(Product p:plist.getPlist()) {
			System.out.print(p.getName()+"\t");
			System.out.print(p.getPrice()+"\t");
			System.out.print(p.getCnt()+"\n");
		}
		
	}

}








<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_vo.*, java.util.ArrayList"
    %>
    <!-- 
    jspexp.z01_vo.* : 특정 package에 있는 모든 클래스 다 import 시킬때,
    사용.
    
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
# 스크립트(script) 요소
1. 요청을 처리하는 데 필요한 자바코드를 실행.
2. 동적으로 응답 결과를 생성하기 위해 사용
3. 스크립트 요소 세가지.
	1) 스클립트릿(scriptlet)
	2) 표현식(expression)
	3) 선언부(declaration)
# 스크립트릿(scriptlet)
1. 자바 코드를 실행할 때, 사용되는 코드의 블럭.
2. 구조
	%	
		자바코드1;
		자바코드2;
	%
# 표현식(Expression)
1. 값을 출력 결과에 포함시키고자 할 때, 사용
2. 표현식 구문
	%=출력할내용%
	
# 선언부(Declaration)
1. 스크립트릿이나 표현식에사 사용할 수 있는 함수를 작성할 때, 사용
2. 선언부 형식
	%!
	public int sum(int price, int cnt){
		return price*cnt;
	}
	%
3. 호출
	int tot = sum(3000,2);		
 -->
<%!
	public int sum(int price, int cnt){
		return price*cnt;
	}
%> 
<%!
	public String login(String id, String pass){
		return id.equals("himan")&&pass.equals("7777")?
				"로그인 성공":"로그인실패";
	}
%>

<%
	String pname="사과";
	int price= 3000;
	int cnt2 = 2;
%>
	<h2><%=pname%>을  단가<%=price%>원에 <%=cnt2%>개 구매하여,
		총 비용이 <%=sum(price,cnt2)%>원 입니다</h2>
<%
	String inputId = "himan";
	String inputPass = "7778";
%>
	<h2>입력된 id:<%=inputId%>, 입력한 pass:<%=inputPass %>,
		결과:<%=login(inputId,inputPass)%></h2>		
		
<!-- ex) delaration 연습
	login 메서드로 id와 pass을 입력하게 하여, himan//7777일때는
	인증성공 그 외에는 인증실패 문자열을 return 처리하세요
 -->
<table border> 
<%
// 변수 선언..
String name= "홍길동";
// 반복문 처리..
for(int cnt=1;cnt<=10;cnt++){
	if(cnt%2==0){
%> 
	<tr><td><%=cnt%></td><td><%=name%></td></tr>	
<%	}

}%> 
</table>

<!-- 
ex1) 과일명, 가격, 갯수를 선언하고, table에 출력 처리하세요
ex2) 빨/주/노/초/파/남/보  h3를 출력하여 나타내세요.
ex3) 4X4 테이블을 for문을 이용해서 1~16 번호와 함께 출력하세요.
ex4) ol li 를 이용하여, 메뉴리스트를 출력하세요. 메뉴내용을 java의 배열
	로 선언 후..
 -->
<%
Product p = new Product("수박",3000,2);
%>
<h3>물건 정보</h3>
<table border>
	<tr><th>과일명</th><td><%=p.getName() %></td></tr>
	<tr><th>가격</th><td><%=p.getPrice() %></td></tr>
	<tr><th>갯수</th><td><%=p.getCnt() %></td></tr>
</table>
<%
String []rainbow={"빨","주","노","초","파","남","보"};
String []colors={"red","orange","yellow","green","blue","navy","purple"};
for(int idx=0;idx<rainbow.length;idx++){
%>
<h3 style="background-color:<%=colors[idx]%>"><%=rainbow[idx] %></h3>

<%} %>
<!-- 
ex3) 4X4 테이블을 for문을 이용해서 1~16 번호와 함께 출력하세요.
 -->
<table border>
<%for(int cnt=1;cnt<=16;cnt++){%>
	<!-- 4단위로 나머지가 1일때 tr시작-->
	<%if(cnt%4==1){%>
		<tr>
	<%}%>
	<td><%=cnt%></td>
	<!-- 4단위로 나머지가 0일때 tr닫기-->
	<%if(cnt%4==0){%>
		</tr>
	<%}%>	
<%}%>
</table>
<!-- 
ex4) ol li 를 이용하여, 메뉴리스트를 출력하세요. 메뉴내용을 java의 배열
	로 선언 후..
 -->
<%
String[] menu = {"메인","가전","식품류","잡화","관리자"};
%>
<ol>
	<%for(String m:menu){%>
	<li><%=m %></li>
	<%}%>
</ol>
<%
ArrayList<Product> plist = new ArrayList<Product>();
plist.add(new Product("사과",3000,2));
plist.add(new Product("바나나",4000,3));
plist.add(new Product("딸기",12000,3));
plist.add(new Product("오렌지",2000,5));

%>
<table border>
	<tr><th>번호</th><th>물건명</th><th>가격</th>
		<th>갯수</th><th>총계</th></tr>
	<%
	int cnt=1;
	for(Product pro:plist){ %>
	<tr>
		<td><%=cnt++%></td>
		<td><%=pro.getName()%></td>
		<td><%=pro.getPrice()%></td>
		<td><%=pro.getCnt()%></td>
		<td><%=pro.getPrice()*pro.getCnt()%></td>
	</tr>
	<%}%>	
</table>
<!-- 
구매할 도서 list를 ArrayList로 설정하고, 출력 처리하세요.
Book(도서명 저자 출판사  가격 )

 -->
<table border>
	<tr><th>도서명</th><th>저자</th><th>출판사</th><th>가격</th></tr>
<%
ArrayList<Book> blist = new ArrayList<Book>();
blist.add(new Book("자바기초","자바맨","성안당",28000));
blist.add(new Book("jsp세계로","웹맨","웹개발서적",32000));
blist.add(new Book("스프링마무리","웹개발자","웹서적",33000));
for(Book bk:blist){
%>
	<tr>
		<td><%=bk.getTitle() %></td>
		<td><%=bk.getWriter() %></td>
		<td><%=bk.getPublisher() %></td>
		<td><%=bk.getPrice() %></td>
	</tr>	
<%}%>

</table>

</body>
</html>
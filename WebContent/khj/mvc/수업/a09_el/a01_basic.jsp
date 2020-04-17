<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# 표현 언어(Expression Language)
1. jsp에서 사용 가능한 새로운 스크립트 언어
2. 주요 기능
	1) jsp의 네 가지 기본 객체가 제공하는 영역의 속성 사용
		(page, request, session, application)에서 변수를 사용
		session.setAttribute("name","홍길동");
		${name} :session 범위 안에서 해당 변수의 데이터를 ${}형식으로
		활용할 수 있다.
	2) 객체와 집합 객체에 대한 접근 방법 제공
		- 객체
		request.setAttribute("p01", new Person("홍길동",25,"서울신림"));
		${변수명.get프로퍼터}
		${p01.name} ${p01.age} ${p01.loc}
		- 집합객체
		request.setAttribute("arr01", {"사과","바나나","딸기"});
		${arr01[0]},${arr01[1]},${arr01[2]},
		ArrayList<Product> plist = new ArrayList<Product>();
		plist.add(new Product("사과",3000,2);
		plist.add(new Product("바나나",4000,3);
		plist.add(new Product("딸기",12000,3);
		request.setAttribute("plist",plist);
		${plist.get(0).name},
		${plist.get(1).name},
		${plist.get(2).name},
	3) 수치연산, 관계연산, 논리 연산을 제공
		request.setAttribute("num01",25);	
		request.setAttribute("num02",5);	
		${num01+num02}, ${num01*num02} 사칙연산
		${num01>=num02} 관계연산
		request.setAttribute("mem",new Member("himan",7777");
		${mem.id=='himan' and mem.pass=='7777'}
		비교연산자 - ==,eq, !=, ne, 
					< 또는 lt, >, gt, >= ge
		논리연산 처리 && and, || or, ! not
	4) empty
		${변수명 !=null && 변수명 !=""}
		${not empty 변수명} null 아니고 공백이 아닐때
		${empty 변수명} null 이거나 공백일때, 
	5) 3항 연산자
		${ 변수==변수?"true일때":"false일때" }	
 --%>
<%
	pageContext.setAttribute("name", "사과");
	pageContext.setAttribute("price", 3000);
	pageContext.setAttribute("cnt", 2);
	request.setAttribute("p01", new Person("홍길동",25,"서울신림"));
	// ex1) 좋아하는 음료수명, 가격을 변수를 선언하고 el로 호출하세요
	request.setAttribute("favor_bev","탄산소다");
	request.setAttribute("favor_price",2000);
	// ex2) session scope 범위로 Member객체의 id pass name auth를 할당하고,
	//      el로 호출 하고, 다음 페이지 이동하여 해당 내용을 확인하세요.
	//(String id, String pass, String name, int point, String auth)
	session.setAttribute("mem01", new Member("himan","7777","홍길동",0,"admin"));
	request.setAttribute("arry01",new String[]{"사과","바나나","딸기"});
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
	<h2>${name} - ${price} - ${cnt} - ${price*cnt} </h2>
	<h3>이름 : ${p01.name}</h3>
	<h3>나이 : ${p01.age}</h3>
	<h3>사는곳 : ${p01.loc}</h3>
	<h2>연습 예제</h2>
	<h3>좋아하는 음료수:${favor_bev}</h3>
	<h3>좋아하는 음료수 가격:${favor_price}</h3>
	<h3>회원 아이디:${mem01.id}</h3>
	<h3>회원 패스워드:${mem01.pass}</h3>
	<h3>회원 이름:${mem01.name}</h3>
	<h3>회원 권한:${mem01.auth}</h3>
	<a href="a02_send.jsp">다음 페이지에서 확인</a>
	<h2>집합객체 처리</h2>
	<h3>${arry01[0]}, ${arry01[1]}, ${arry01[2]}</h3>
	<%
	ArrayList<Product> plist = new ArrayList<Product>();
	plist.add(new Product("사과",3000,2));
	plist.add(new Product("바나나",4000,3));
	plist.add(new Product("딸기",12000,3));
	request.setAttribute("plist",plist);
	for(int idx=0;idx<3;idx++){
		request.setAttribute("idx", idx);
	%>
	<h3>${plist.get(idx).name},${plist.get(idx).price},${plist.get(idx).cnt}</h3>
	<%}%>
	<%--
	ex) A04_MemberDao에서 getMemberList()를 이용해서,
	데이터를 할당하고,현재 등록된 회원리스트를 출력 처리
	하세요.el을 이용해서.
	 --%>
	<h2>집합객체</h2>
	<table>
		<tr><th>아이디</th><th>패스워드</th>
			<th>이름</th><th>포인트</th>
			<th>권한</th><th>등록일</th>
	<%
	A04_MemberDao dao = new A04_MemberDao();
	for(Member m:dao.getMemberList()){
		pageContext.setAttribute("m", m);
	%> 
		<tr><td>${m.id}</td><td>${m.pass}</td>
			<td>${m.name}</td><td>${m.point}</td>
			<td>${m.auth}</td><td>${m.regdte}</td></tr>
	<%}%>
	</table>
	<h2>수치 연산, 관계연산, 논리 연산 제공</h2>
	<%
	pageContext.setAttribute("num01", 25);
	pageContext.setAttribute("num02", 5);
	pageContext.setAttribute("mem", new Member("himan","7777"));
	%>
	<h3>${num01 } + ${num02 } = ${num01+num02}</h3>
	<h3>${num01 } - ${num02 } = ${num01-num02}</h3>
	<h3>${num01 } * ${num02 } = ${num01*num02}</h3>
	<h3>${num01 } / ${num02 } = ${num01/num02}</h3>
	<h3>관계연산:${num01} >= ${num02} : ${num01>=num02}</h3>
	<h3>논리연산: ${mem.id=='himan' and mem.pass=='7777' }</h3>
	<!-- 
	ex1) point로 임의의 점수가 발생하게 하고, el로 해당 점수가 70점 이상일 때,
	합격 여부를 boolean으로 출력하게 하세요..   70  true
	ex2) 구매 물건명, 가격, 갯수를 할당하고, el로 물건명과 구매금액 총액을
	표현하고, 삼항연산자를 이용하여 50000이상일 때, MVP고객 그외에는 일반고객
	을 출력하게 el로 완성하세요
	 -->
	<%
	pageContext.setAttribute("point", (int)(Math.random()*101));
	%> 
	<h2>연습예제</h2>
	<h3>점수: ${point}, 합격여부:${point>=70}</h3>
	<%
	pageContext.setAttribute("prod01", new Product("사과",3000,100));
	%>
	<h3>물건명:${prod01.name}, 구매총액:${prod01.price*prod01.cnt}</h3>
	<h3>고객등급:${ prod01.price*prod01.cnt>=50000?"MVP고객":"일반고객"}</h3>
	
</body>
</html>








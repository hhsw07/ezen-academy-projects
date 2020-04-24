<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# jstl의 반복문 처리.
1. 기본 형식
	<c:forEach var="cnt" begin="시작변수" end="마지막변수"
		step="증감단위">
2. 기타 옵션..
	1) varStatus="sts" 
		${sts.index} : 반복문에서 0부터 시작하는 index를 출력
		${sts.count} : 반복문에서 1부터 시작하는 카운트 출력
		${sts.first} : boolean을 첫번째 값인지 여부를 나타냄..
		${sts.last} : boolean으로 마지막 값인지 여부를 나타냄..	
		
 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>
<%--
	1) varStatus="sts" 
		${sts.index} : 반복문에서 0부터 시작하는 index를 출력(배열일때)
		${sts.count} : 반복문에서 1부터 시작하는 카운트 출력
		${sts.first} : boolean을 첫번째 값인지 여부를 나타냄..
		${sts.last} : boolean으로 마지막 값인지 여부를 나타냄..
	2) 배열 객체를 설정 속성.
		- items : 배열유형의 객체를 설정할 때, 활용되는 속성..
	3) vo형 ArrayList(객체유형 배열/list유형 처리)
		- ArrayList나 객체형배열을 선언.
			pageContext.setAttribute("list", 
				new Person[]{
					new Person("홍길동", 25,"서울신림"),
					new Person("신길동", 28,"부산해운대"),
					new Person("마길동", 32,"수원권선구")
				}	
			ArrayList<Person> plist = new ArrayList<Person>();
			plist.add(new Person("홍길동", 25,"서울신림"));	
			plist.add(new Person("신길동", 28,"부산해운대"));	
			plist.add(new Person("마길동", 32,"수원권선구"));	
			pageContext.setAttribute("list", plist);
			for(Person p01:plist){
				p01.getName() p01.getAge() p01.getLoc()
			}
			<c:forEach var="p01" items="${list}" varStatus="sts">
				${p01.name}, ${p01.age}, ${p01.loc}
			</c:forEach>
 --%>	
 	<%
 	pageContext.setAttribute("fruits", new String[]{"사과","바나나","딸기"});
 	%>
	<h2>10~15까지 출력</h2>
	<c:forEach var="cnt" begin="10" end="15" varStatus="sts">
		<h3>${sts.index}-${sts.count}-${sts.first}-${sts.last} :${cnt}</h3>
	</c:forEach>
	<h2>과일배열</h2>
	<c:forEach var="fruit" items="${fruits}" varStatus="sts">
		<h3>${sts.index} - ${sts.count} - ${fruit} - ${sts.first} - ${sts.last}</h3>
	</c:forEach>
<%--
ex) pageContext객체로 물건명, 가격, 갯수를 배열로 선언한 후,
	물건 정보 3개를 table 출력하세요..
 --%>
	<h2>구구단 5단</h2>
	<c:forEach var="cnt" begin="1" end="9" step="1" varStatus="sts" >
		<h3>${5} X ${cnt} = ${5*cnt}</h3> 
	</c:forEach>
	<!-- 
	ex) 구구단 입력 시작과 마지막 단수만큼 출력 처리.
		테이블에 list
		시작 :[    ]  마지막 [   ]  [구구단 생성]
			3단         4단      5단
		   3*1= 3   4*1=4  5*1=5
		   3*2= 6   4*2=8  5*2=10
		   3*3= 9   4*3=12 5*3=15
		   ..        ..     ..
	 -->
	<form method="post">
		시작 : <input type="text" name="grade1" size="2" />
		마지막 : <input type="text" name="grade2" size="2" />
		<input type="submit" value="구구단 생성"/>
	</form>
	<h2>${param.grade1}단 ~ ${param.grade2}단</h2>
	<table>
		<c:forEach var="cnt" begin="1" end="9" varStatus="sts">
			<c:if test="${sts.first}">
				<tr>
					<c:forEach var="grade" 
						begin="${param.grade1}" 
						end="${param.grade2}">
					<th>${grade} 단</th>
					</c:forEach>
				</tr>
			</c:if>
			<tr>
				<c:forEach var="grade" 
					begin="${param.grade1}" 
					end="${param.grade2}">
				<td>${grade} X ${cnt} = ${grade*cnt}</td>
				</c:forEach>			
			</tr>
		</c:forEach>
	</table>	
<%--
ex) pageContext객체로 물건명, 가격, 갯수를 배열로 선언한 후,
	물건 정보 3개를 table 출력하세요..
 --%>
	<%
	pageContext.setAttribute("pnames", new String[]{"컴퓨터","세탁기","냉장고"});
	pageContext.setAttribute("prices", new int[]{1500000,1100000,1800000});
	pageContext.setAttribute("cnts", new int[]{2,3,4});
	%> 
	<table>
		<tr><th>물건명</th><th>가격</th><th>갯수</th></tr>
		<c:forEach var="name" items="${pnames}" varStatus="sts">
		<tr>
			<td>${name}</td><td>${prices[sts.index]}</td><td>${cnts[sts.index]}</td>
		</tr>	
		</c:forEach>
	
	</table> 
	<%
		ArrayList<Person> plist = new ArrayList<Person>();
		plist.add(new Person("홍길동", 25,"서울신림"));	
		plist.add(new Person("신길동", 28,"부산해운대"));	
		plist.add(new Person("마길동", 32,"수원권선구"));	
		pageContext.setAttribute("list", plist);
	 %>
	<h2>회원 정보</h2>
	<table>
		<tr><th>이름</th><th>나이</th><th>사는곳</th></tr>
		<c:forEach var="p01" items="${list}">
		<tr>
			<td>${p01.name}</td><td>${p01.age}</td><td>${p01.loc}</td>
		</tr>
		</c:forEach>
	</table> 
	<%--
	ex) A01_Database.java의 getEmpList()
	모듈을 pageContext에 할당한 후, 
	forEach 구문을 활용하여 출력 처리하세요.
	
	 --%>
	<%
	A01_Database dao = new A01_Database();
	pageContext.setAttribute("elist", dao.getEmpList());
	
	%> 
 	<h2>사원 정보 리스트</h2>
 	<table>
 		<tr>
	 		<th>사원번호</th>
	 		<th>사원명</th>
	 		<th>직책</th>
	 		<th>관리자번호</th>
	 		<th>입사일</th>
	 		<th>급여</th>
	 		<th>보너스</th>
	 		<th>부서번호</th>
 		</tr>
		<c:forEach var="emp" items="${elist}">
		<tr>
			<td>${emp.empno}</td>
			<td>${emp.ename}</td>
			<td>${emp.job}</td>
			<td>${emp.mgr}</td>
			<td>${emp.hiredate}</td>
			<td>${emp.sal}</td>
			<td>${emp.comm}</td>
			<td>${emp.deptno}</td>
		</tr>
		</c:forEach> 	
 	</table>
 
 
 
 
 
 
 
 
 
 
 
 	
</body>
</html>
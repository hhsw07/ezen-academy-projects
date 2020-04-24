<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# 자바빈(java beans)
1. 웹 프로그램에서 데이터의 표현을 효과적으로 처리하기 위하여 사용한다.
2. 구성
	1) 값을 저장하기 위한 필드(field)
	2) 값을 필드에 할당하기 위한 setter 메서드
	3) 저장된 값을 가져오기 위한 getter 메서드.
3. 프로퍼티(property)
	1) 자바빈에 저장/호출 되는 값을 표현하는 것을 말한다.
	2) 일반적으로 메서드 이름을 사용해서 프로퍼티 이름을 결정한다.
		setName(String n) ==> 저장하는 name 프로퍼티
		getAge() ==> 호출하는 age 프로퍼티
		메서드명에서 get/set을 제외하고 소문자로 변경된 핵심적인 이름
4. <jsp:useBean>태그
	1) jsp에서 자바빈 객체를 생성할 때, 사용된다.
	2) <jsp:useBean id="빈이름" class="자바빈클래스명" 
			scope="session범위"
		자바빈클래스명 	빈이름 = new  자바빈클래스명();
		
			
			
5. property의 활용..
	1) set 프로퍼티.
		<jsp:setProperty name="bean의 id명" 
			property="프로퍼터명" value="저장할데이터"/>
	2) get 프로퍼터ㅣ.
		<jsp:getProperty name="bean의 id명"
			property="프로퍼터명"/>						
 --%>
<%
Member m02 = new Member();
session.setAttribute("m02",m02);
Member m03 = (Member)session.getAttribute("m02");
m03.setName("신길동");
%> 
<jsp:useBean id="m01" class="jspexp.z01_vo.Member" scope="session">
</jsp:useBean>
<%	m01.setName("홍길동");
	m01.setId("himan");
%>
<jsp:setProperty name="m01" property="id" value="himan" />
<jsp:setProperty name="m01" property="point" value="1000" />
<jsp:setProperty name="m01" property="auth" value="관리자" />
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<body>	
	일반 객체생성활용:<%=m03.getName()%><br>
	useBean활용:<%=m01.getName()%><br>
	<h2>property이용해서 가져오기..</h2>
	아이디:<jsp:getProperty  name="m01" property="id"/><br>
	이름:<jsp:getProperty  name="m01" property="name"/><br>
	권한:<jsp:getProperty  name="m01" property="auth"/><br>
	<!-- 
	useBean을 이용해서 생성(Product클래스활용)
	물건 3가지 물건명 가격 갯수를 property를 이용해서
		할당과 호출하세요..
	
	 -->
	<a href="a02_show.jsp">다음 페이지에서 확인</a>
	<jsp:useBean id="prod" class="jspexp.z01_vo.Product"/>
	<jsp:setProperty property="name" value="사과" name="prod" />
	<jsp:setProperty property="price" value="3000" name="prod" />
	<jsp:setProperty property="cnt" value="2" name="prod" />
	<jsp:useBean id="prod2" class="jspexp.z01_vo.Product"/>
	<jsp:setProperty property="name" value="바나나" name="prod2" />
	<jsp:setProperty property="price" value="4000" name="prod2" />
	<jsp:setProperty property="cnt" value="3" name="prod2" />
	<jsp:useBean id="prod3" class="jspexp.z01_vo.Product"/>
	<jsp:setProperty property="name" value="딸기" name="prod3" />
	<jsp:setProperty property="price" value="12000" name="prod3" />
	<jsp:setProperty property="cnt" value="5" name="prod3" />
	<table>
		<tr><th>물건명</th><th>가격</th><th>갯수</th></tr>
		<tr><td><jsp:getProperty property="name" name="prod"/> </td>
			<td><jsp:getProperty property="price" name="prod"/></td>
			<td><jsp:getProperty property="cnt" name="prod"/></td></tr>
		<tr><td><jsp:getProperty property="name" name="prod2"/> </td>
			<td><jsp:getProperty property="price" name="prod2"/></td>
			<td><jsp:getProperty property="cnt" name="prod2"/></td></tr>
		<tr><td><jsp:getProperty property="name" name="prod3"/> </td>
			<td><jsp:getProperty property="price" name="prod3"/></td>
			<td><jsp:getProperty property="cnt" name="prod3"/></td></tr>			
	</table>

	
	
	
</body>
</html>
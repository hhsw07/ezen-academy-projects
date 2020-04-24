<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>
<%--
# jsp의 기본 객체
1. jsp는 변수들을 저장할 때, 특정한 범위로 저장을 할 수 있다..
	이때, 활용되는 객체가 session scope범위로 
	1) 한 페이지 단위에서 데이터를 저장하고 활용할 수 있는 pageContext, 
	2) 요청 page까지 데이터를 저장하고 활용할 수 있는 request,
		<jsp:forward page="요청페이지"/> request와 response를 요청페이지에
		전달..
		RequestDispatcher rd= request.getRequestDispatcher("페이지");
		rd.forward(request, response);	
		request.setAttribute("p01", new Person("홍길동",27,"서울신림동");
		요청된 페이지에서.
		Person p01 = (Person)request.getAttribute("p01");
		 
	3) 브라우저가 닫힐 때까지 데이터를 저장하고 활용할 수 있는 session, 
		response.sendRedirect("이동할페이지")
		location.href="이동할페이지");
		<a href="이동할페이지">안녕하세요</a>
		로 이동했을 때, 페이지를 이동했을지라도 특정 데이터나 객체를
		가지고 있을 수 있게 처리한다.
		ex) session.setAttribute("mem01", new Member("himan",7777,"홍길동",3000);
		Member mem01 = (Member)session.getAttribute("mem01");
		
		
	4) 서버단위로 데이터를 저장하고 활용할 수 있는 application으로 기본 객체를
	지원하고 있다.
		다른 브라우저(client)가 다를지라도, 
		브라우저를 다 닫고, 다시 시작하더라도 데이터를 가지고 있을 수 
		있는 객체..ex) 주의 session은 url주소를 복사하여 같은 브라우저에서는
		창을 닫기까지 session값을 유지하나, 다른 브라우저(client가 다름)에서
		유지 되지 않으나, application 범위로를 접근이 가능하다.
		ex) application.setAttribute("data01", new Emp(7778,"홍길동","사원");
		Emp emp = (Emp)application.getAttribute("data01");
		
		
		
	
	
	
2. scope가 지원하는 기본 객체의 메서드..
	1) .setAttribute("key", 할당할 객체);
	2) .getAttribute("key") : 특정한 key로 저장된 객체를 가져올 수 있음.
 --%>
<%
String pgName="홍길동";
pageContext.setAttribute("name01", pgName);
// 세션 범위로 객체을 할당..
session.setAttribute("name02", "세션김길동");
session.setAttribute("p01", new Person("마길동",25,"서울"));

%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>페이지 범위로 저장된 이름:
<%=pageContext.getAttribute("name01")%></h2>
<h2>세션 범위로 저장된 이름:<%=session.getAttribute("name02")%></h2>
<%
Person p01 = (Person)session.getAttribute("p01");
%>
<h3>세션 범위로 저장한 객체의 이름, 나이, 사는 곳:
<%=p01.getName()%>,<%=p01.getAge()%>,<%=p01.getLoc()%></h3>
<a href="a02_next.jsp">다음 페이지에서 호출</a>
<!-- 
# 페이지 범위로 구매할 물건명을 할당하고, 
세션 범위로 구매할 물건명, 가격, 갯수를 할당하고,
1. 현재 페이지에서 로딩..
2. link한 다음 페이지에서 페이지범위로/세션범위로 설정한
	물건명, 가격, 갯수를 출력하세요.
	

 -->


</body>
</html>

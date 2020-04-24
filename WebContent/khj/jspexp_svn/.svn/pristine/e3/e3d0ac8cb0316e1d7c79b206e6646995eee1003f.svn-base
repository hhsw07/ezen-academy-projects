<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    errorPage="z01_error.jsp"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--
# jsp에서 에러 처리
1. jsp는 servlet 클래스로 컴파일되기 때문에, 자바관련 여러
에러가 페이지에서 발생한다. 이 때문에 페이지 단위로 에러에
대한 처리가 필요하고, 일반적으로 에러페이지를 화면으로
보이게 하여, 해당 사이트에 대한 신뢰성을 높이기도 한다.
2. 에러 페이지 지정 처리
	1) 에러페이지를 만들고,
		<%@ page isErrorPage="true" %>
		현재페이지가 에러 처리를 위한 페이지 임을 나타낸다.
		예외의 기본 객체인 exception를 참조값으로 가지고 있다.
		ex) exception.getMessage(), 
			exception.printStackTrace()를 활용한다.
		주의) IE(인터넷익스플로러)에서는 예외가 올바르게
			보이기위해 에러 페이지가 출력한 응답 데이터 크기가
			513바이트보다 커야 한다.	
	2) 페이지 작성시, 상단에 에러가 발생하였을 때,
		대체할 에러페이지를 지정..
		<%@ page errorPage="error.jsp" %>
3. 서버단위(web.xml)에서 
	1) 응답 상태 코드별 에러 페이지 지정.
		<error-page>
			<error-code>에러코드</error-code>
			<location>에러페이지 uri</location>
		404 : 해당 페이지가 없을 때, 나타나는 에러..	
	2) 예외 타입 별 에러 페이지 지정.
4. 에러 페이지 우선 순위 및 에러 페이지 지정 형태.
5. 버퍼와 에러 페이지 처리..	
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String s=null;

%>

<body>
<h2>정상화면:<%=s.toString()%></h2>

</body>
</html>
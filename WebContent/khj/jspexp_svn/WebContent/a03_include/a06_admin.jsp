<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>관리자 페이지</h2>
	<%--
	jsp:forward 지시자로 요청값까지 넘겨받기 때문에
	request.getParameter("id")를 받을 수 있다.
	
	 --%>
	<h3><%=request.getParameter("id")%>님 환영합니다!</h3>
</body>
</html>








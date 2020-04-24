<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jsp 세계에 오신 것을 환영합니다!!</h1>
	<%=request.getParameter("name") %>
	<%
	response.sendRedirect("index2.jsp?name="
		+URLEncoder.encode("홍길동"));
	%>
</body>
</html>
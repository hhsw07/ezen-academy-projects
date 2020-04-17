<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>     
<!DOCTYPE html>
<%--

 --%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="<%=path%>/a00_com/a00_com.css">
</head>
<%
// session 객체 가져오기.
// 1. 일반 객체..
Member m03 = (Member)session.getAttribute("m02");
%>
<!-- el태그를 이용하면 생략이 가능 -->
<jsp:useBean id="m01" class="jspexp.z01_vo.Member" scope="session"/>
<body>
	<h2>이동된 페이지</h2>
	<h3>일반 session 처리:<%=m03.getName()%></h3>
	<h3>useBean 처리:<%=m01.getName()%></h3>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"
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
<body>
<%
Member m = (Member)session.getAttribute("mem");
%>
<h3 style="text-align:right"><%=m.getName()%>님 로그인중</h3>
<h3 style="text-align:right">현재포인트:<%=m.getPoint()%></h3>
<h3 style="text-align:right">권한:<%=m.getAuth()%></h3>
<h1><%=m.getId()%>님 환영합니다.</h1>
</body>
</html>
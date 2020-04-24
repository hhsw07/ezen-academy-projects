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
<body>
	<h2>연습 예제</h2>
	<h3>좋아하는 음료수:${favor_bev}</h3>
	<h3>좋아하는 음료수 가격:${favor_price}</h3>
	<h3>회원 아이디:${mem01.id}</h3>
	<h3>회원 패스워드:${mem01.pass}</h3>
	<h3>회원 이름:${mem01.name}</h3>
	<h3>회원 권한:${mem01.auth}</h3>
</body>
</html>
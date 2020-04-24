<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.ArrayList,jspexp.z01_vo.*"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>하단</h1>
	<%
	String id = request.getParameter("id");
	if(id.equals("")) {
	%>
	<form action="0313_clu_main" method="post">
		id:<input type="text" name="id"/><br>
		<input type="submit" value="로그인"/>
	</form>
	<%}else{ %>
	<h2>메인화면 입니다</h2>
	<%} %>
</body>
</html>
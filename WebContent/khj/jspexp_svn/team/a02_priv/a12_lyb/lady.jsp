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
<h1><%=session.getAttribute("sex")%> <%=session.getAttribute("id") %>님 환영합니다</h1>
</body>
</html>
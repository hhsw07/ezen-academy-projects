<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="javaexp.a01_start.A02_Person"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name="홍길동";
A02_Person p = new A02_Person();
%>
<h1><%=name %>님 환영합니다!</h1>
<h2>이름:<%=p.name %></h2>
<h2>나이:<%=p.age %></h2>
</body>
</html>
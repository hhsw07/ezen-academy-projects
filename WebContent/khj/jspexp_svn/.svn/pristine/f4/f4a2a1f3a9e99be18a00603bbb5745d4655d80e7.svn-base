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
<%
String list[]=request.getParameterValues("ckProd");
%>
<body>
<h2>최종 결재 목록</h2>
<%for(String prod:list){%>
<h3><%=prod%></h3>
<%} %>
</body>
</html>
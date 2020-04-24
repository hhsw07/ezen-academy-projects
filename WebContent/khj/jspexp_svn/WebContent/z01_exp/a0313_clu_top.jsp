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
</head>
<body>
<h2>상단</h2>
<h3 style="text-align:right">
<%
String id=request.getParameter("id");
if(id.equals("")){
%>
로그인하세요
<%}else{%>
    <%=request.getParameter("id")%>님 
	로그인 중
<%} %>
</h3>
</body>
</html>
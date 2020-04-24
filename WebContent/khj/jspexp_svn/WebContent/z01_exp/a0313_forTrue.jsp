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
	<h2>축하합니다. 정답</h2>
	<h3>
	<%=request.getParameter("num01")%> X
	<%=request.getParameter("num02")%> =
	<%=request.getParameter("tot")%>
	</h3>
	<a href="a0313_forwardExp.jsp">한번 더?</a>
</body>
</html>
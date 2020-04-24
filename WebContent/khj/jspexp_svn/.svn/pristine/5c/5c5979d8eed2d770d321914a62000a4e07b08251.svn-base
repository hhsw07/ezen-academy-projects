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
<body>
<h2>페이지 범위로 저장된 이름:
<%=pageContext.getAttribute("name01")%></h2>
<h2>세션 범위로 저장된 이름:<%=session.getAttribute("name02")%></h2>
<%
Person p01 = (Person)session.getAttribute("p01");
%>
<h3>세션 범위로 저장한 객체의 이름, 나이, 사는 곳:
<%=p01.getName()%>,<%=p01.getAge()%>,<%=p01.getLoc()%></h3>




</body>
</html>
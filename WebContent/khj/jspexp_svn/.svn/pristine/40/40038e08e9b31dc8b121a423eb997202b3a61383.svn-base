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
pageContext.setAttribute("page01","홍길동(page)");
request.setAttribute("request02", "김길동(request)");
session.setAttribute("session03", "마길동(session)");
application.setAttribute("application04", "신길동(application)");
// 호출되는 순간. request로 해당 페이지에 이동..
// request, response 정보를 가지고 해당 페이지로 이당.
// pageContext: 없어지고,
// request:는 가지고,
// session :도 가지고..
request.getRequestDispatcher("a06_reqPage.jsp").forward(
		request, response);


%>

<body>

</body>
</html>
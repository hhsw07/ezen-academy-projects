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
<h2>session 로그인</h2>
<form method="post">
아이디:<input type="text" name="id"><br>
<input type="submit" value="로그인"/><br>
</form>
<%
String id= request.getParameter("id");
if(id!=null){
	session.setAttribute("mem",new Member(id,0));
	response.sendRedirect("a04_showSession.jsp");
}else{
	// 다른 페이지에서 로그 아웃으로 이쪽으로 처리되었을 때.
	// session 삭제 처리..
	session.invalidate();
};
%>
</body>
</html>
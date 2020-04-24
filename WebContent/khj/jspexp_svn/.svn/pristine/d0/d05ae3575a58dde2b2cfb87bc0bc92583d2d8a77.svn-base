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
<%
Member m = (Member)session.getAttribute("mem");
if(m!=null){
	// 세션값 변경..
	m.setPoint(m.getPoint()+1);
%>
<h2><%=m.getId()%>님 현재 <%=m.getPoint()%>회 방문 중</h2>
<input type="button" value="로그아웃" onclick="logout()"/>
<%
}else{
	response.sendRedirect("a03_sessionLogin.jsp");
}
%>
<script type="text/javascript">
function logout(){
	if(confirm("로그아웃하시겠습니까?")) 
		location.href="a03_sessionLogin.jsp";
}
</script>


</body>
</html>
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
Member m = (Member)session.getAttribute("mem");
boolean isLogin=false;
if(m!=null) isLogin=true;
%>
<script type="text/javascript">
	var isLogin=<%=isLogin%>;
	if(!isLogin){
		alert("로그인이 필요합니다!");
		location.href="a0311_sessionLogin.jsp";
	}
</script>


<body>
<h2>로그인 성공</h2>
<%if(isLogin){ %>
<h3><%=m.getName() %>님 환영합니다.</h3>
<h3>아이디:<%=m.getId() %></h3>
<h3>이름:<%=m.getName() %></h3>
<h3>포인트:<%=m.getPoint() %></h3>
<h3>권한:<%=m.getAuth() %></h3>
<%}%>
</body>
</html>



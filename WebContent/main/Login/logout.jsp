<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	</style>
	<script type="text/javascript">
	</script>
</head>
<body>
<%
	session.invalidate();
	response.sendRedirect("../Start.jsp");
%>
</body>
	<script type="text/javascript">
	</script>
</html>
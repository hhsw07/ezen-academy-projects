<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*,jspexp.b01_database.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post">
	<input type="hidden" name="proc" value="login"/>
<table>
	<tr>
		<td colspan="3">PC냥이</td>
	</tr>
	<tr>
		<td colspan="3"><img alt="" src="../image/logo.png"></td>
	</tr>
	<tr>
		<td colspan="3"><input type="text"/></td>	
	</tr>
	<tr>
		<td colspan="3"><input type="text"/></td>
	</tr>
	<tr>
		<td colspan="3"><input type="submit" value="로그인"/></td>
	</tr>
	<tr>
		<td>아이디찾기</td><td>비밀번호찾기</td><td>회원가입</td>
	</tr>
</table>
</form>

</body>
</html>
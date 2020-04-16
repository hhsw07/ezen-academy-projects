<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.* "
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<%--

--%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css" >
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
<%--

--%>
		$("h2").text("시작");
	});
</script>
</head>

<body>
<h2 align="center"></h2>
<table>
	<tr>
		<th>이미지</th><th>이름</th><th>가격</th><th>버튼</th>
	</tr>
	<c:forEach var="prod" items="${plist}">
	<tr>
		<td><img src="${path}/image/cpu/${prod.parts_img}" style="width:60px;"/></td>
		<td>${prod.parts_name}</td>
		<td><fmt:formatNumber pattern="###,###" value="${prod.parts_price}"/>원</td>
		<td><input type="button" onclick="regCart(${prod.parts_no})" style="width:100%"/></td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
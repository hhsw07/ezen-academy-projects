<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<style>
	input.cls[type=text]{width:40%;}
	.ordR{text-align:right;}
	.ordL{text-align:left;}
</style>	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("구매완료현황");
	});
	function goMain(){
		$(location).attr("href","${path}/sellingproduct");
	}	
</script>
</head>

<body>
<h2 align='center'></h2>
<table  align='center'>
	<tr><th>물건명</th><th>단가</th><th>구매갯수</th>
		<th>진행상태</th><th>구매일</th></tr>
	<c:forEach var="buy" items="${buylist}">
	<tr><td>${buy.name}</td>
		<td class="ordR"><fmt:formatNumber value="${buy.price}"/></td>
		<td class="ordR"><fmt:formatNumber value="${buy.cnt}"/></td>
		<td>${buy.status}</td>
		<td><fmt:formatDate value="${buy.buydte}"/></td>
	</tr>
	</c:forEach>	
	<tr><td colspan="5" style="text-align:right">
		<input type="button" value="조회화면"  onclick="javascript:goMain()"/>
	</td></tr>	
</table>
</body>
</html>
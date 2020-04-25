<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.* "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.mgr-wrap{width:1080px; margin:20px auto;}
	.mgr-table{width:100%; border-collapse:collapse; cursor:pointer; border-bottom:3px solid black;}
	.mgr-table thead{visibility:visible; border-top:3px solid black; border-bottom:3px solid black;}
	.mgr-table tr{border-top:1px solid gray;}
	table tr td,th {padding:10px 10px;}
	
</style>
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("주문/배송관리");
	});
</script>
</head>
<body>
	<jsp:include page="../../main/admintop.jsp"/>
	
	<div class="mgr-wrap">
		<header>
			<h2></h2>
		</header>
		
		<table class="mgr-table">
			<colgroup>
				<col width="10%">
				<col width="25%">
				<col width="10%">
				<col width="10%">
				<col width="25%">
				<col width="20%">
			</colgroup>
			<thead>
				<tr>
					<th>신청번호</th><th>신청일</th><th>분류</th><th>신청자</th><th>입고일</th><th>진행상태</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>신청번호</td><td>신청일</td><td>분류</td><td>신청자</td><td>입고일</td><td>진행상태</td>
				</tr>
				<tr>
					<td>신청번호</td><td>신청일</td><td>분류</td><td>신청자</td><td>입고일</td><td>진행상태</td>
				</tr>
				<tr>
					<td>신청번호</td><td>신청일</td><td>분류</td><td>신청자</td><td>입고일</td><td>진행상태</td>
				</tr>
			</tbody>
		</table>
	</div>
	

</body>
</html>
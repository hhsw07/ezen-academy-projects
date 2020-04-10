<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
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
	.as-title{width:1080px; margin:0 auto;}
	.cs-wrap{width:1080px; margin:0 auto;}
	.cs-menu{width:160px; height:40px; outline:none; margin-bottom:20px; font-size:20px;}
	.as-table{width:1080px; margin:20px auto;}
	.as-thead{width:100%; border-top:3px solid black;}
	.as-tbody{width:100%; border-top:3px solid black; border-collapse:collapse;}
	.as-thead tr th{padding:12px 10px; font-weight:700;}
	.as-tbody tr td{padding:12px 10px; border-bottom:1px solid gray;}
	.as-code{text-align:center;}
	
</style>
<script type="text/javascript" src="${path}/a00_com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("고객센터");
	});
</script>
</head>
<body>
	<jsp:include page="../top.jsp"/>
	<header class="as-title">
		<h2></h2>
	</header>
	<div class="cs-wrap">
		<select name="cs-menu" class="cs-menu">
	      <option>공지사항</option>
	      <option>문의사항</option>
	      <option>상품후기</option>
	      <option selected="selected">AS신청</option>
	    </select>
	</div>
	<div class="as-table">
		<table class="as-thead">
			<colgroup>
				<col width="12%">
				<col width="8%">
				<col width="53%">
				<col width="12%">
				<col width="15%">
			</colgroup>
			<tr>
				<th>글번호</th><th>분류</th><th>제목</th><th>작성자</th><th>등록일</th>
			</tr>
		</table>
		<table class="as-tbody">
			<colgroup>
				<col width="12%">
				<col width="8%">
				<col width="53%">
				<col width="12%">
				<col width="15%">
			</colgroup>
			<tr>
				<td class="as-code">글번호</td>
				<td class="as-code">분류</td>
				<td>제목</td>
				<td class="as-code">작성자</td>
				<td class="as-code">등록일</td>
			</tr>
			<tr>
				<td class="as-code">글번호</td>
				<td class="as-code">분류</td>
				<td>제목</td>
				<td class="as-code">작성자</td>
				<td class="as-code">등록일</td>
			</tr>
		</table>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>
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
	.cs-content{min-height:800px;}
	.as-title{width:1080px; margin:0 auto;}
	.cs-wrap{width:1080px; margin:0 auto;}
	.cs-menu{width:160px; height:40px; outline:none; margin-bottom:20px; font-size:20px;}
	.as-table{width:1080px; margin:20px auto;}
	.as-thead{width:100%; border-top:3px solid black;}
	.as-tbody{width:100%; border-top:3px solid black; border-collapse:collapse;}
	.as-thead tr th{padding:12px 10px; font-weight:700;}
	.as-tbody tr td{padding:12px 10px; border-bottom:1px solid gray;}
	.as-code{text-align:center;}
	.as-search{width:1080px; margin:20px auto; vertical-align:center;}
	
	.input-box{width:250px; height:35px; outline:none; padding:0; margin:0; cursor:pointer;}
	.search-btn{width:80px; height:40px; background-color:#63145F; color:white; border:none; font-size:20px; outline:none; padding:0; margin:0; cursor:pointer;}
	.reg-btn{width:80px; height:40px; background-color:#63145F; color:white; border:none; font-size:20px; outline:none; padding:0; margin:0; cursor:pointer;}
	
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
	<div class="cs-content">
		<header class="as-title">
			<h2></h2>
		</header>
	<div style="min-height:700px;">
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
			<c:if test="${not empty asList}">
				<c:forEach var="as" items="${asList}">
				<tr>
					<td class="as-code">${as.as_no}</td>
					<td class="as-code">${as.as_cate}</td>
					<td>AS 관련 문의드립니다</td>
					<td class="as-code">${as.mem_id}</td>
					<td class="as-code">${as.as_date}</td>
				</tr>
				</c:forEach>
			</c:if>
			</table>
		</div>
	</div>
		<div class="as-search">
			<span style="margin-right:150px">
				<input class="input-box" type="text">
				<input class="search-btn" type="submit" value="검색">
			</span>
			<span class="as-write" style="margin-left:500px">
				<input class="reg-btn" type="button" value="글쓰기">
			</span>
		</div>
	</div>
	
	<jsp:include page="../bottom.jsp"/>
	
</body>
</html>
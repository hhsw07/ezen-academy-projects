<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
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
<style type="text/css">
.all-wrap{width:800px; margin:0 auto;}
	.go-list{margin-top:10px; width:100px; height:50px; background-color:black; color:white;
				 border:1px solid black; cursor:pointer; float:right;}
	table{width:800px; margin:20px 0px; border-collapse: collapse;}
		.title-1{padding:10px 0px; width:100px}
		.title-2{width:693px; height:33px;}
		.content-write{width:776px; height:500px; font-size:20px; padding:10px; outline:none;}
		.reg-btn{width:60px; height:40px; background-color:black; color:white;
						border:1px solid black; margin:5px; cursor:pointer; float:right;}

</style>
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

<jsp:include page="../../main/top.jsp"/>

<div class="all-wrap">
	<div style="height:50px;">
		<input class="go-list" type="button" value="목록"	/>
	</div>
	<form>
		<table border>
			<tr>
				<td class="title-1">제목</td>
				<td><input class="title-2" type="text" placeholder="게시글 제목을 입력해주세요"/></td>
			</tr>
			<tr>
				<td colspan="2"><textarea class="content-write"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input class="reg-btn" type="submit" value="등록"/></td>
			</tr>
		</table>
	</form>
</div>

<jsp:include page="../../main/bottom.jsp"/>

</body>
</html>
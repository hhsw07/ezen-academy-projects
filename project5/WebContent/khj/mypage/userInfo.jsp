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
.all-wrap{width:1280px; margin:0 auto;}
	.title{}
	.menu-wrap{}
		.menu-bar{border-bottom:1px solid black; padding-bottom:20px; font-size:25px;}
			.menu-bar a{padding-right:30px;}
			.menu-bar a:hover{color:orange;}
	.info-wrap{width:1000px; margin:40px auto;}
		table{aling:center; width:1000px;}
			table tr td,th {padding-top:12px;} 
			table input{width:300px; height:30px;}
			.sub-title{font-size:25px; width:160px; padding-bottom:10px;}
			.drop-btn{width:100px; height:40px; background-color:black; 
					color:white; border-color:black; cursor:pointer; float:right;}
			.line{border-bottom:1px solid gray;}
			.modify-btn{height:40px; background-color:black; color:white; border-color:black; cursor:pointer;}
</style>


<!-- 서버 안에 jquery lib를 다운 받아서 설정 -->	
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

	<jsp:include page="../../main/myPageTop.jsp"/>

	<div class="info-wrap">
	<form>
		<table>
			<tr>
				<td class="sub-title">회원정보 수정</td>
				<td><input class="drop-btn" type="button" value="회원탈퇴"/></td>
			</tr>
			<tr>
				<td colspan="2" class="line"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<td colspan="2" class="line"></td>
			</tr>
			<tr>
				<td>새 비밀번호</td>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<td>재입력</td>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<td colspan="2" class="line"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text"/></td>
			</tr>
			<tr>
				<td colspan="2" class="line"></td>
			</tr>
			<tr>
				<th colspan="2"><input class="modify-btn" type="submit" value="수정"/></th>
			</tr>
			<tr>
				<td colspan="2" class="line"></td>
			</tr>
		</table>
	</form>
	</div>
</div>

<jsp:include page="../../main/bottom.jsp"/>

</body>
</html>
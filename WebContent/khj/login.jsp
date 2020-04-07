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
<style type="text/css">
.wrap{width:1080px; margin:0 auto;
		position: absolute; left: 50%;  top: 50%; transform: translate(-50%, -50%);}
		table tr td,th{padding:5px 10px;}
		table{cursor:pointer;}
.input-id{width:350px; height:45px; font-size:15px;}
.input-ps{width:350px; height:45px; font-size:15px;}
.login-btn{width:355px; height:45px; font-size:20px; font-weight:800; 
		background-color:black; color:white; border:3px solid purple;
		cursor:pointer;}
		
</style>
<title>Insert title here</title>
<link rel="stylesheet" 
	href="path/a00_com/a00_com.css">
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
<div class="wrap">
<form method="post">
	<table align="center">
		<tr>
			<th colspan="3">PC냥이</th>
		</tr>
		<tr>
			<th colspan="3">이미지</th>
		</tr>
		<tr>
			<th colspan="3"><input class="input-id" type="text" placeholder="아이디"/></th>
		</tr>
		<tr>
			<th colspan="3"><input class="input-ps" type="text" placeholder="비밀번호"/></th>
		</tr>
		<tr>
			<th colspan="3"><input class="login-btn" type="submit" value="로그인"/></th>
		</tr>
		<tr>
			<th>아이디 찾기</th>
			<th>비밀번호 찾기</th>
			<th>회원가입</th>
		</tr>
	</table>
</form>
</div>
</body>
</html>
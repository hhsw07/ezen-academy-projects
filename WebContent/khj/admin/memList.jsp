<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
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
.all-wrap{margin-top:100px; margin-bottom:200px;}
.wrap{width:1080px; margin:0 auto;}
          table{border-collapse:collapse; cursor:pointer; border-bottom:3px solid black;}
          table tr{border-top:1px solid gray;}
          table tr:first-child{visibility:visible; border-top:3px solid black; border-bottom:3px solid black;}
          table tr td,th {padding:10px 10px;} 
          
          
          .input-box{width:250px; height:45px; outline:none; padding:0; margin:0; cursor:pointer;}
          .search-btn{width:80px; height:40px; background-color:black; color:white; border:1px solid black; font-size:20px;
          outline:none; padding:0; margin:0; cursor:pointer;}
          .reg-btn{width:80px; height:40px; background-color:black; color:white; border:1px solid black; font-size:20px;
          outline:none; padding:0; margin:0; cursor:pointer;}
</style>

<link rel="stylesheet" 
	href="path/a00_com/a00_com.css">
<!-- 서버 안에 jquery lib를 다운 받아서 설정 -->	
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("서비스센터");
	});
</script>
</head>
<body>

<jsp:include page="../../main/admintop.jsp"/>

<div class="all-wrap">
	<div class="wrap">
	<h1>회원관리</h1>
	<!-- 게시판 목록 -->
	
	<table align="center">
		<colgroup>
			<col style="width:150px;"/>
			<col style="width:310px;"/>
			<col style="width:310px;"/>
			<col style="width:310px;"/>
		</colgroup>
		
	<!-- 타이틀 -->
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>이메일</th>
			<th>연락처</th>
		</tr>
		
	<!-- 글목록  -->	
		<tr>
			<th>홍길동</th>
			<th>ezen01</th>
			<th>ezen01@naver.com</th>
			<th>010-0000-0000</th>
		</tr>
	
	<!-- 목록페이징 -->	
		<tr>
			<th colspan="4"> 1 2 3 4 5 </th>
		</tr>	
		
	</table>
	</div>
</div>


</body>
</html>
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
			<col style="width:260px;"/>
			<col style="width:260px;"/>
			<col style="width:260px;"/>
			<col style="width:150px;"/>
		</colgroup>
		
	<!-- 타이틀 -->
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>이메일</th>
			<th>연락처</th>
			<th>상세보기</th>
		</tr>
		
	<!-- 글목록  -->	
		<tr>
			<td style="padding-left:20px;">홍길동</td>	
			<td style="padding-left:40px;">ezen01</td>
			<td style="padding-left:40px;">ezen01@naver.com</td>
			<td style="padding-left:40px;">010-0000-0000</td>
			<td style="padding-left:20px;">상세보기</td>
		</tr>
		
				<tr>
			<td style="padding-left:20px;">김길동</td>
			<td style="padding-left:40px;">ezen00201</td>
			<td style="padding-left:40px;">ezen13201@naver.com</td>
			<td style="padding-left:40px;">010-0000-0000</td>
			<td style="padding-left:20px;">상세보기</td>
		</tr>
		
		
				<tr>
			<td style="padding-left:20px;">오길동</td>
			<td style="padding-left:40px;">ezen012351</td>
			<td style="padding-left:40px;">ezen0142@naver.com</td>
			<td style="padding-left:40px;">010-0000-0000</td>
			<td style="padding-left:20px;">상세보기</td>
		</tr>
		
		
				<tr>
			<td style="padding-left:20px;">진길동</td>
			<td style="padding-left:40px;">ezen61501</td>
			<td style="padding-left:40px;">ezen02311@naver.com</td>
			<td style="padding-left:40px;">010-0000-0000</td>
			<td style="padding-left:20px;">상세보기</td>
		</tr>
		
		

	
	<!-- 목록페이징 -->	
		<tr>
			<th colspan="5"> 1 2 3 4 5 </th>
		</tr>	
		
	</table>
	</div>
</div>


</body>
</html>
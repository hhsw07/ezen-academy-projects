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
          
          select{width:160px; height:40px; outline:none; margin-bottom:20px; font-size:20px;}
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

	});
	function go(noti_no){
		$("[name=noti_no]").val(noti_no);
		$("[name=proc]").val("noticeDetail");
		$("form").submit();
		
	}
</script>
</head>
<body>

<jsp:include page="../../main/top.jsp"/>

<div class="all-wrap">
	<div class="wrap">
	<h1>서비스센터</h1>
	<!-- 게시판 목록 -->
	<select align="center">
		<option>공지사항</option>
		<option>문의사항</option>
		<option>상품후기</option>
		<option>AS신청</option>
	</select>
	
	<table align="center">
	<form method="post">
	<input type="hidden" name="proc2"/>
		<colgroup>
			<col style="width:100px;"/>
			<col style="width:600px;"/>
			<col style="width:200px;"/>
			<col style="width:180px;"/>
		</colgroup>
		
	<!-- 타이틀 -->
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
		</tr>
		
	<!-- 글목록  -->	
	<c:forEach var="notice" items="${nlist}">
		<tr ondblclick="javascript:go(${notice.noti_no})">
			<td align="center">${notice.noti_no}</td>
			<td>${notice.noti_name}</td>
			<td align="center">관리자</td>
			<td align="center">${notice.noti_date}</td>
		</tr>
	</c:forEach>

	<!-- 목록페이징 -->	
		<tr>
			<th colspan="4"> 1 </th>
		</tr>	
		
	<!-- 검색 + 글등록 -->
	
		<tr style="border:none;">
			<td colspan="3">
			<input class="input-box" type="text" name="noti_name" value="${param.noti_name}"/>
			<input class="search-btn" type="submit" value="검색"/>
			</td>		
			<th><input class="reg-btn" type="button" value="글쓰기"/></th>
		</tr>
	</form>
	</table>
	</div>
</div>

<jsp:include page="../../main/bottom.jsp"/>

</body>
</html>
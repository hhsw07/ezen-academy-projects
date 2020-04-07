<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body{margin:0 auto; width:1080px;}
          table{border-collapse:collapse; cursor:pointer; border-bottom:3px solid black;}
          table tr{border-top:1px solid gray;}
          table tr:first-child{visibility:visible;border-top:3px solid black;border-bottom:3px solid black;}
          table tr td,th {padding:10px 10px;} 
          
          select{width:160px; height:40px; outline:none; margin-bottom:20px; font-size:20px;}
          .input-box{width:170px; height:30px; outline:none;}
          .search-btn{width: height:}
          .reg-btn{}
</style>

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

<h2>서비스센터</h2>
<!-- 게시판 목록 -->
<select align="center">
	<option>공지사항</option>
	<option>문의사항</option>
	<option>상품후기</option>
</select>

<table align="center">
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
	<tr>
		<th>1</th>
		<td>제목이 출력되는곳</td>
		<td>작성자가 출력되는곳</td>
		<th>등록날짜</th>
	</tr>
	<tr>
		<th>2</th>
		<td>제목이 출력되는곳</td>
		<td>작성자가 출력되는곳</td>
		<th>등록날짜</th>
	</tr>
	<tr>
		<th>3</th>
		<td>제목이 출력되는곳</td>
		<td>작성자가 출력되는곳</td>
		<th>등록날짜</th>
	</tr>
	<tr>
		<th>4</th>
		<td>제목이 출력되는곳</td>
		<td>작성자가 출력되는곳</td>
		<th>등록날짜</th>
	</tr>

	
	<tr>
		<th colspan="4"> 1 2 3 4 5 </th>
	</tr>	
<!-- 검색 + 글등록 -->
	<tr style="border:none;">
		<td colspan="3">
		<input class="input-box" type="text"/>
		<input class="search-btn" type="submit" value="등록"/>
		</td>		
		<th><input class="reg-btn" type="button" value="글쓰기"/></th>
	</tr>
</table>
</body>
</html>
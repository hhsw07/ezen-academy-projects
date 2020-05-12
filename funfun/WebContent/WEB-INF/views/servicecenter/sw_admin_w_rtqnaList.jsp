<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/template/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.ordR {text-align:right;}
	.ordC {text-align:center;}
	.ordL {text-align:left;}
</style>
<script>
	$(document).ready(function(){
		
	})
	
	function go(no){
		alert(no);
		//$(location).attr("href","${path}/faq.do?method=detail&no="+no);
	}
	function goPage(no){
		alert(no);
		//$("#curPage").val(no);
		//$("form").submit();
	}
	
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container noticeList" style="max-width:1200px; padding-top:100px">
	        <div>
		        <h2>FAQ 목록(관리자)</h2>
		    </div>
	        <div class="collapse navbar-collapse ordC" style="margin-bottom:30px;">
	        	<div class="btn-group btn-group-lg " style="width:80%;">
					<button type="button" class="btn btn-warning" style="width:30%;">공지사항</button>
					<button type="button" class="btn btn-fill btn-warning" style="width:30%;">FAQ</button>
					<button type="button" class="btn btn-warning" style="width:30%;">실시간 채팅 상담</button>
				</div>
	        </div>
	    	<div>
	        	총건수 : @@건 
	        	<select style="margin-left:950px;" name="pageCount">
	        		<option value="5">5건</option>
	        		<option value="10">10건</option>
	        		<option value="20">20건</option>
	        	</select>
			</div>
			<div>
		        <table class="table table-bordered table-hover">
		        	<col width="10%">
		        	<col width="50%">
		        	<col width="20%">
		        	<col width="20%">
		        	<tr class=""><th>번호</th>
		        		<th>제목</th>
		        		<th>작성자</th>
		        		<th>등록일</th></tr>
		        	<tr class="item" onclick="javascript:go(1)"><td>1</td>
		        		<td>공지제목1</td>
		        		<td>작성자1</td>
		        		<td>20.05.08</td></tr>
		        	<tr class="item" onclick="javascript:go(2)"><td>2</td>
		        		<td>제목2</td>
		        		<td>작성자2</td>
		        		<td>등록일2</td></tr>
		        	<tr class="item" onclick="javascript:go(3)"><td>3</td>
		        		<td>제목3</td>
		        		<td>작성자3</td>
		        		<td>등록일3</td></tr>
		        	<tr class="item" onclick="javascript:go(4)"><td>4</td>
		        		<td>제목4</td>
		        		<td>작성자4</td>
		        		<td>등록일4</td></tr>
		        	<tr class="item" onclick="javascript:go(5)"><td>5</td>
		        		<td>제목5</td>
		        		<td>작성자5</td>
		        		<td>등록일5</td></tr>
		        </table>
			</div>
	        <div class="ordC">
		        <ul class="pagination ct-orange"> 
					<li><a href="#">&laquo;</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li class="active"><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&raquo;</a></li>
				</ul>
	        </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
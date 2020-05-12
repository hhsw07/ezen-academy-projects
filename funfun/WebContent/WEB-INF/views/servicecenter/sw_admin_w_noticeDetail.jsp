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
		$(".updateNoti").click(function(){
			if(confirm("수정하시겠습니까?")){
				alert("수정 후 상세화면으로 이동");
				//$("form").attr("action","${path}/notice.do?method=update");
				//$("form").submit();
			}
		});
		$(".deleteNoti").click(function(){
			if(confirm("삭제하시겠습니까?")){
				alert("삭제 후 목록으로 이동");
				//$("form").attr("action","${path}/notice.do?method=delete");
				//$("form").submit();
			}
		});
		$(".goList").click(function(){
			alert("목록으로 이동");
			//$(location).attr("href","${path}/notice.do?method=adminlist");
		});
		
	})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <div>
		        <h2>공지사항 상세</h2>
		    </div>
	        <div>
		    	<form class="form-group" method="post">
			    	<input type="hidden" name="curPage" value="" />
			    	<table class="table table-bordered">
			        	<col style="width:15%">
			        	<col style="width:35%">
			        	<col style="width:15%">
			        	<col style="width:35%">
			        	<tr><th>번호</th>
			        		<td>1</td>
			        		<th>등록일</th>
			        		<td>20.05.02</td></tr>
			        	<tr><th rowspan="2">중요</th>
			        		<td rowspan="2">
			        			<label class="radio ct-orange"><input type="radio" data-toggle="radio" name="noti_ck" value="Y"/>Y</label>
			        			<label class="radio ct-orange"><input type="radio" data-toggle="radio" name="noti_ck" value="N"/>N</label></td>
			        		<th>수정일</th>
			        		<td>20.05.03</td></tr>
			        	<tr><th>작성자</th>
			        		<td>한송우</td></tr>
			        	<tr><th>제목</th>
			        		<td colspan="3"><input type="text" class="form-control" name="noti_title" placeholder="공지제목" /></td></tr>
			        	<tr><th>내용</th>
			        		<td colspan="3">
			        			<textarea class="form-control" name="noti_detail" placeholder="공지내용" style="resize:none;" ></textarea></td></tr>
			        </table>
		        </form>
		    </div>
		    <div class="ordR">
		    	<button class="btn btn-warning updateNoti">수정</button>
		    	<button class="btn btn-warning deleteNoti">삭제</button>
		    	<button class="btn btn-warning goList">목록</button>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
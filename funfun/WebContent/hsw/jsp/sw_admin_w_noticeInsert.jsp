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
		var noti_title="";
	
		$(".insertNoti").click(function(){
			if(confirm("등록하시겠습니까?")){
				alert("등록 후 추가 등록할 지 확인. 등록화면 또는 상세화면으로 이동");
				//$("form").attr("action","${path}/notice.do?method=update");
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
		        <h2>공지사항 등록</h2>
		    </div>
	        <div>
		    	<form class="form-group">
			    	<table class="table table-bordered">
			        	<col style="width:15%">
			        	<col style="width:85%">
			        	<tr><th>제목</th>
			        		<td colspan="3"><input type="text" class="form-control" name="noti_title" placeholder="공지사항 제목" /></td></tr>
			        	<tr><th>내용</th>
			        		<td colspan="3">
			        			<textarea class="form-control" name="noti_detail" placeholder="공지사항 내용" style="resize: none;"></textarea></td></tr>
			        </table>
		        </form>
		    </div>
		    <div class="ordR">
		    	<button class="btn btn-warning insertNoti">등록</button>
		    	<button class="btn btn-warning goList">목록</button>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
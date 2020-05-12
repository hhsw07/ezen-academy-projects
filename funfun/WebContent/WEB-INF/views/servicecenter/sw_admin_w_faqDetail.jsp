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
		$(".updateFaq").click(function(){
			if(confirm("수정하시겠습니까?")){
				alert("수정 후 상세화면으로 이동");
				//$("form").attr("action","${path}/faq.do?method=update");
				//$("form").submit();
			}
		});
		$(".deleteFaq").click(function(){
			if(confirm("삭제하시겠습니까?")){
				alert("삭제 후 목록으로 이동");
				//$("form").attr("action","${path}/faq.do?method=delete");
				//$("form").submit();
			}
		});
		$(".goList").click(function(){
			alert("목록으로 이동");
			//$(location).attr("href","${path}/faq.do?method=adminlist");
		});
		
	})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <div>
		        <h2>FAQ 상세</h2>
		    </div>
	        <div>
		    	<form:form class="form-group" commandName="" method="post">
			    	<form:hidden path="curPage" />
			    	<table class="table table-bordered">
			        	<col style="width:15%">
			        	<col style="width:35%">
			        	<col style="width:15%">
			        	<col style="width:35%">
			        	<tr><th>번호</th>
			        		<td>1</td>
			        		<th>등록일</th>
			        		<td>20.05.02</td></tr>
			        	<tr><th>작성자</th>
			        		<td>한송우</td>
			        		<th>수정일</th>
			        		<td>20.05.03</td></tr>
			        	<tr><th>제목</th>
			        		<td colspan="3"><form:input type="text" class="form-control" path="" placeholder="FAQ 제목" /></td></tr>
			        	<tr><th>내용</th>
			        		<td colspan="3">
			        			<form:textarea class="form-control" style="resize: none;" path="" placeholder="FAQ 내용" /></td></tr>
			        </table>
		        </form:form>
		    </div>
		    <div class="ordR">
		    	<button class="btn btn-warning updateFaq">수정</button>
		    	<button class="btn btn-warning deleteFaq">삭제</button>
		    	<button class="btn btn-warning goList">목록</button>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
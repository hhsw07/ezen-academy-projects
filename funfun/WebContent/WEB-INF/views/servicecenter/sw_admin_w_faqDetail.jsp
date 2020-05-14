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
<link href="${path }/css/sw_user_w_notice.css" rel="stylesheet" />
<script>
	$(document).ready(function(){
		
		$(".updateFaq").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","${path}/faq.do?method=update");
				$("form").submit();
			}
		});
		$(".deleteFaq").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$(location).attr("href","${path}/faq.do?method=delete&faq_code=${faq.faq_code}");
			}
		});
		$(".goList").click(function(){
			//alert("목록으로 이동");
			$(location).attr("href","${path}/faq.do?method=admList");
		});
		
	})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <div class="sctitle">
		        <h2>FAQ 상세</h2>
		    </div>
	        <div>
		    	<form class="form-group" method="post">
			    	<input type="hidden" name="curPage" value="${paging.curPage}" />
			    	<table class="table table-bordered">
			        	<col style="width:15%">
			        	<col style="width:35%">
			        	<col style="width:15%">
			        	<col style="width:35%">
			        	<tr><th>번호</th>
			        		<td><input type="hidden" name="faq_code" value="${faq.faq_code}"/>${faq.faq_code}</td>
			        		<th>등록일</th>
			        		<td>${faq.faq_reg_date}</td></tr>
			        	<tr><th>작성자</th>
			        		<td><input type="hidden" name="admin_code" value="${faq.admin_code}"/>${faq.admin_name}</td>
			        		<th>수정일</th>
			        		<td>${not empty faq.faq_upt_date?faq.faq_upt_date:"없음"}</td></tr>
			        	<tr></tr>
			        	<tr><th>제목</th>
			        		<td colspan="3"><input type="text" class="form-control" name="faq_title" placeholder="공지제목" value="${faq.faq_title}"/></td></tr>
			        	<tr><th>내용</th>
			        		<td colspan="3">
			        			<textarea class="form-control" rows="20" name="faq_detail" placeholder="공지내용" style="resize:none;" >${faq.faq_detail}</textarea></td></tr>
			        </table>
		        </form>
		    </div>
		    <div class="text-right">
		    	<button class="btn btn-warning updateFaq">수정</button>
		    	<button class="btn btn-warning deleteFaq">삭제</button>
		    	<button class="btn btn-warning goList">목록</button>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
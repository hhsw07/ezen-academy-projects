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
		var faq_title = "${faq.faq_title}";
		if(faq_title != ""){
			if(!confirm("추가로 등록하시겠습니까?")){
				$(location).attr("href","${path}/faq.do?method=admList");
			}
		}
		
		
		$(".insertFaq").click(function(){
			if(confirm("등록하시겠습니까?")){
				if($("[name=faq_title]").val() != "" && $("[name=faq_detail]").val() != ""){
					$("form").attr("action","${path}/faq.do?method=insert");
					$("form").submit();
				}else{
					alert("제목 및 내용을 입력하세요.");
				}
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
		        <h2>FAQ 등록</h2>
		    </div>
	        <div>
		    	<form class="form-group" method="post">
			    	<input type="hidden" name="admin_code" value="1001" />
			    	<table class="table table-bordered">
			        	<col style="width:15%">
			        	<col style="width:85%">
			        	<tr><th>제목</th>
			        		<td colspan="3"><input type="text" class="form-control" name="faq_title" placeholder="FAQ 제목" /></td></tr>
			        	<tr><th>내용</th>
			        		<td colspan="3">
			        			<textarea class="form-control" name="faq_detail" placeholder="FAQ 내용" style="resize: none;" rows="20"></textarea></td></tr>
			        </table>
		        </form>
		    </div>
		    <div class="text-right">
		    	<button class="btn btn-fill btn-warning insertFaq">등록</button>
		    	<button class="btn btn-fill btn-warning goList">목록</button>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
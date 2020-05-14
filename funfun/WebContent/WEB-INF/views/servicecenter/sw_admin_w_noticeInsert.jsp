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
		var noti_title="${notice.noti_title}";
		if(noti_title != ""){
			if(!confirm("추가로 등록하시겠습니까?")){
				$(location).attr("href","${path}/notice.do?method=admList");
			}
		}
		
		
		$(".insertNoti").click(function(){
			if(confirm("등록하시겠습니까?")){
				$("form").attr("action","${path}/notice.do?method=insert");
				$("form").submit();
			}
		});
		
		$(".goList").click(function(){
			//alert("목록으로 이동");
			$(location).attr("href","${path}/notice.do?method=admList");
		});
		
	})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <div class="sctitle">
		        <h2>공지사항 등록</h2>
		    </div>
	        <div>
		    	<form class="form-group" method="post">
			    	<input type="hidden" name="admin_code" value="1001" />
			    	<table class="table table-bordered">
			        	<col style="width:15%">
			        	<col style="width:85%">
			        	<tr><th>제목</th>
			        		<td colspan="3"><input type="text" class="form-control" name="noti_title" placeholder="공지사항 제목" /></td></tr>
			        	<tr><th>중요</th>
			        		<td colspan="3">
			        			<label class="radio ct-orange" ><input type="radio" data-toggle="radio" name="noti_ck" value="Y" />Y</label>
			        			<label class="radio ct-orange" ><input type="radio" data-toggle="radio" name="noti_ck" value="N" checked/>N</label></td></tr>
			        	<tr><th>내용</th>
			        		<td colspan="3">
			        			<textarea class="form-control" name="noti_detail" placeholder="공지사항 내용" style="resize: none;" rows="20"></textarea></td></tr>
			        </table>
		        </form>
		    </div>
		    <div class="text-right">
		    	<button class="btn btn-warning insertNoti">등록</button>
		    	<button class="btn btn-warning goList">목록</button>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
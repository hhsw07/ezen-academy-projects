<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		$("#pageSize").change(function(){
	    	$("#curPage").val(1);	// 페이지크기를 바꾸면 초기 첫페이지가 나오도록 처리
			$("form").submit();
		});
	    
	    $("#notice").click(function(){
	    	$(location).attr("href","${path}/notice.do?method=admList");
	    });
	    $("#faq").click(function(){
	    	$(location).attr("href","${path}/faq.do?method=admList");
	    });
	    $("#chatting").click(function(){
	    //	$(location).attr("href","${path}/chatting.do?method=list");
	    });
	    $(".insertFaq").click(function(){
		 	$(location).attr("href","${path}/faq.do?method=insForm");	
	    });
	})
	
	function go(faq_code){
		$(location).attr("href","${path}/faq.do?method=detail&faq_code="+faq_code);
	}
	function goPage(no){
		$("#curPage").val(no);
		$("form").submit();
	}
	
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container faqList" style="max-width:1200px; padding-top:100px">
	        <div class="sctitle">
		        <h2>FAQ 목록(관리자)</h2>
		    </div>
	        <div class="collapse navbar-collapse text-center">
	        	<div class="btn-group btn-group-lg scnav" style="width:80%;">
					<button type="button" class="btn btn-warning" id="notice" style="width:30%;">공지사항</button>
					<button type="button" class="btn btn-fill btn-warning" id="faq" style="width:30%;">FAQ</button>
					<button type="button" class="btn btn-warning" id="chatting" style="width:30%;">실시간 채팅 상담</button>
				</div>
	        </div>
	    	<div>
        	<form:form class="form" commandName="paging" method="post">
	        <form:hidden path="curPage" />
	        <div>
	        	총건수 : ${paging.count}건 
	        	<span style="margin-left:930px;" >페이지수 : </span>
	        	<form:select path="pageSize">
	        		<form:option value="5">5건</form:option>
	        		<form:option value="10">10건</form:option>
	        		<form:option value="20">20건</form:option>
	        	</form:select>
			</div>
			</form:form>
			</div>
			<div>
		        <table class="table table-hover sctable">
		        	<col width="10%">
		        	<col width="70%">
		        	<col width="20%">
		        	<tr><th>번호</th>
		        		<th>제목</th>
		        		<th>작성자</th></tr>
		        	<c:forEach var="faq" items="${list}">
			        	<tr class="item" onclick="javascript:go(${faq.faq_code})"><td>${faq.cnt}</td>
			        		<td>${faq.faq_title}</td>
			        		<td>${faq.admin_name}</td>
		        	</c:forEach>
		        	<tr><td colspan="3"></td></tr>
		        </table>
			</div>
	        <div class="text-center">
		        <ul class="pagination ct-orange"> 
					<li><a href="javascript:goPage(${paging.startBlock-1})">&laquo;</a></li>
					<c:forEach var="cnt" begin="${paging.startBlock}" end="${paging.endBlock}">
						<li class="${paging.curPage==cnt?'active':'' }"><a href="javascript:goPage(${cnt})">${cnt}</a></li>
					</c:forEach>
					<li><a href="javascript:goPage(${paging.endBlock==paging.pageCount?paging.pageCount:paging.endBlock+1})">&raquo;</a></li>
				</ul>
	        </div>
	        <div class="text-right">
				<button class="btn btn-fill btn-warning insertFaq">등록</button>
			</div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
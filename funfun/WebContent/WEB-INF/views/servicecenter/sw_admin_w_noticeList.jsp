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
<style type="text/css">
	.hide {display:none;}  
    .notishow {display:show;}
    .form th, td {font-size:20px;}
    #scnav button {margin-top:15px; height:75px;}
</style>
<script>
	$(document).ready(function(){
	    
	    $("#pageSize").change(function(){
	    	$("#curPage").val(1);	// 페이지크기를 바꾸면 초기 첫페이지가 나오도록 처리
			$("form").submit();
		});
	    
	    $("#notice").click(function(){
	    	$(location).attr("href","${path}/notice.do?method=list");
	    });
	    $("#faq").click(function(){
	    	$(location).attr("href","${path}/faq.do?method=list");
	    });
	    $("#chatting").click(function(){
	    //	$(location).attr("href","${path}/chatting.do?method=list");
	    });
	})
	
	function go(noti_code){
		$(location).attr("href","${path}/notice.do?method=detail&noti_code="+noti_code);
	}
	function goPage(no){
		$("#curPage").val(no);
		$("form").submit();
	}
	
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container noticeList" style="max-width:1200px; padding-top:100px">
	        <div>
		        <h2>고객센터(관리자)</h2>
		    </div>
	        <div class="collapse navbar-collapse text-center" style="margin-bottom:30px;">
	        	<div class="btn-group btn-group-lg " id="scnav" style="width:80%;">
					<button type="button" class="btn btn-fill btn-warning" id="notice" style="width:30%;">공지사항</button>
					<button type="button" class="btn btn-warning" id="faq" style="width:30%;">FAQ</button>
					<button type="button" class="btn btn-warning" id="chatting" style="width:30%;">실시간 채팅 상담</button>
				</div>
	        </div>
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
			<div>
		        <table class="table table-hover text-center">
		        	<col width="10%">
		        	<col width="50%">
		        	<col width="20%">
		        	<col width="20%">
		        	<tr><th class="text-center">번호</th>
		        		<th class="text-center">제목</th>
		        		<th class="text-center">작성자</th>
		        		<th class="text-center">등록일</th></tr>
		        	<c:forEach var="noti" items="${list}">
			        	<tr class="item" onclick="javascript:go(${noti.noti_code})"><td>중요</td>
			        		<td class="text-left">${noti.noti_title}</td>
			        		<td>${noti.admin_code}</td>
			        		<td>${noti.noti_reg_date}</td></tr>
		        	</c:forEach>
		        	<c:forEach var="noti" items="${list}">
			        	<tr class="item" onclick="javascript:go(${noti.noti_code})"><td>${noti.cnt}</td>
			        		<td class="text-left">${noti.noti_title}</td>
			        		<td>${noti.admin_code}(admin_name)</td>
			        		<td>${noti.noti_reg_date}</td></tr>
		        	</c:forEach>
		        	<tr><td colspan="4"></td></tr>
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
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
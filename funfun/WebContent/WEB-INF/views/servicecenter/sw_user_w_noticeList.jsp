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
	.ordR {text-align:right;}
	.ordC {text-align:center;}
	.ordL {text-align:left;}
	.hide {display:none;}  
    .notishow {display:show;}
</style>
<script>
	$(document).ready(function(){
		var article = (".noticeList .notishow");  
	    $(".noticeList .item  td").click(function() {  
	    	var myArticle =$(this).parents().next("tr");  
	        if($(myArticle).hasClass('hide')) {  
	            $(article).removeClass('notishow').addClass('hide');  
	            $(myArticle).removeClass('hide').addClass('notishow');  
	        }  
	        else {  
	            $(myArticle).addClass('hide').removeClass('notishow');  
	        }  
	    });
	    
	    $("#pageSize").change(function(){
	    	$("#curPage").val(1);	// 페이지크기를 바꾸면 초기 첫페이지가 나오도록 처리
			$("form").submit();
			
		});
	    
	    $("#notice").click(function(){
	    	$(location).attr("href","${path}/notice.do?method=list");
	    });
	    $("#faq").click(function(){
	    //	$(location).attr("href","${path}/faq.do?method=list");
	    });
	    $("#chatting").click(function(){
	    //	$(location).attr("href","${path}/chatting.do?method=list");
	    });
	})
	
	function go(no){
		//$(location).attr("href","${path}/notice.do?method=detail&no="+no);
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
		        <h2>고객센터</h2>
		    </div>
	        <div class="collapse navbar-collapse ordC" style="margin-bottom:30px;">
	        	<div class="btn-group btn-group-lg " style="width:80%;">
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
		        <table class="table table-bordered table-hover">
		        	<col width="10%">
		        	<col width="50%">
		        	<col width="20%">
		        	<col width="20%">
		        	<tr class=""><th >번호</th>
		        		<th>제목</th>
		        		<th>작성자</th>
		        		<th>등록일</th></tr>
		        	<c:forEach var="noti" items="${list}">
			        	<tr class="item" onclick="javascript:go(${noti.noti_code})"><td>${noti.cnt}</td>
			        		<td>${noti.noti_title}</td>
			        		<td>${noti.admin_code}</td>
			        		<td>${noti.noti_reg_date}</td></tr>
			        	<tr class="hide"><td></td><td colspan="3">${noti.noti_detail}</td></tr>
		        	</c:forEach>
		        	
		        	
		        </table>
			</div>
	        <div class="ordC">
		        <ul class="pagination ct-orange"> 
					<li><a href="javascript:goPage(${paging.startBlock-1})">&laquo;</a></li>
					<c:forEach var="cnt" begin="${paging.startBlock}" end="${paging.endBlock}">
						<li class="${paging.curPage==cnt?'active':'' }"><a href="javascript:goPage(${cnt})">${cnt}</a></li>
					</c:forEach>
					<li><a href="javascript:goPage(${paging.endBlock+1})">&raquo;</a></li>
					
					
					
					
				</ul>
	        </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
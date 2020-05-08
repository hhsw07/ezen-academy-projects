<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/view/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.ordR {text-align:right;}
	.ordL {text-align:left;}
	.hide {display:none;}  
    .notishow {display:show;}
</style>
<script>
		$(document).ready(function(){
			
		})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container noticeList" style="max-width:800px; padding-top:100px">
	        <div>
		        <h2>고객센터</h2>
		        <div class="collapse navbar-collapse">
		        	<ul class="nav navbar-nav nav-justifie">
		        		<li class="active"><h3>공지사항</h3></li>
		        		<li class=""><h3>FAQ</h3></li>
		        		<li class=""><h3>실시간 채팅 상담</h3></li>
		        	</ul>
		        </div>
		    </div>
	        <div>
		        <table class="table table-hover">
		        	<col width="10%">
		        	<col width="50%">
		        	<col width="20%">
		        	<col width="20%">
		        	<tr><td colspan="3">총 건수 : 00건</td>
		        		<td>[3/5/10]</td></tr>
		        	<tr><th>번호</th>
		        		<th>제목</th>
		        		<th>작성자</th>
		        		<th>등록일</th></tr>
		        	<tr class="item"><td>1</td>
		        		<td>공지제목1</td>
		        		<td>작성자1</td>
		        		<td>20.05.08</td></tr>
		        	<tr class="hide"><td></td><td colspan="3">공지내용</td></tr>
		        	<tr class="item"><td>2</td>
		        		<td>제목2</td>
		        		<td>작성자2</td>
		        		<td>등록일2</td></tr>
		        	<tr class="hide"><td></td><td colspan="3">공지내용</td></tr>
		        	<tr class="item"><td>3</td>
		        		<td>제목3</td>
		        		<td>작성자3</td>
		        		<td>등록일3</td></tr>
		        	<tr class="hide"><td></td><td colspan="3">공지내용</td></tr>
		        	<tr class="item"><td>4</td>
		        		<td>제목4</td>
		        		<td>작성자4</td>
		        		<td>등록일4</td></tr>
		        	<tr class="hide"><td></td><td colspan="3">공지내용</td></tr>
		        	<tr class="item"><td>5</td>
		        		<td>제목5</td>
		        		<td>작성자5</td>
		        		<td>등록일5</td></tr>
		        	<tr class="hide"><td></td><td colspan="3">공지내용</td></tr>
		        </table>
			</div>
	        <div style="text-align:center;">
		        <ul class="pagination">
				  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
				  <li class="page-item"><a class="page-link" href="#">1</a></li>
				  <li class="page-item active"><a class="page-link" href="#">2</a></li>
				  <li class="page-item"><a class="page-link" href="#">3</a></li>
				  <li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
	        </div>
	    </div>
	</div>
	<!-- end main -->
</body>
<script type="text/javascript">  
$(function(){  
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
});

    </script>
</html>
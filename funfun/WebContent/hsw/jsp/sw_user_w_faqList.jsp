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
	.hide {display:none;}  
    .faqshow {display:show;}
</style>
<script>
	$(document).ready(function(){
		var article = (".faqList .faqshow");  
	    $(".faqList .item  td").click(function() {  
	    	var myArticle =$(this).parents().next("tr");  
	        if($(myArticle).hasClass('hide')) {  
	            $(article).removeClass('faqshow').addClass('hide');  
	            $(myArticle).removeClass('hide').addClass('faqshow');  
	        }  
	        else {  
	            $(myArticle).addClass('hide').removeClass('faqshow');  
	        }  
	    }); 
	})
	
	function go(no){
		$(location).attr("href","${path}/faq.do?method=detail&no="+no);
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
	        <div>
		        <h2>고객센터</h2>
		    </div>
	        <div class="collapse navbar-collapse ordC"  style="margin-bottom:30px;">
	        	<ul class="nav navbar-nav nav-justifie" style="width:100%;">
	        		<li class="" style="width:30%;"><h3>공지사항</h3></li>
	        		<li class="active" style="width:30%;"><h3>FAQ</h3></li>
	        		<li class="" style="width:30%;"><h3>실시간 채팅 상담</h3></li>
	        	</ul>
	        </div>
	        <div>
	        	총건수 : @@건 
	        	<select style="margin-left:950px;" name="pageCount">
	        		<option value="5">5건</option>
	        		<option value="10">10건</option>
	        		<option value="20">20건</option>
	        	</select>
			</div>
			<div>
		        <table class="table table-hover ordC">
		        	<col width="10%">
		        	<col width="70%">
		        	<col width="20%">
		        	<tr><th>번호</th>
		        		<th>제목</th>
		        		<th>작성자</th></tr>
		        	<tr class="item"><td>1</td>
		        		<td>FAQ제목1</td>
		        		<td>작성자1</td></tr>
		        	<tr class="hide"><td></td><td colspan="2">FAQ내용</td></tr>
		        	<tr class="item"><td>2</td>
		        		<td>FAQ제목2</td>
		        		<td>작성자2</td></tr>
		        	<tr class="hide"><td></td><td colspan="2">FAQ내용</td></tr>
		        	<tr class="item"><td>3</td>
		        		<td>제목3</td>
		        		<td>작성자3</td></tr>
		        	<tr class="hide"><td></td><td colspan="2">FAQ내용</td></tr>
		        	<tr class="item"><td>4</td>
		        		<td>제목4</td>
		        		<td>작성자4</td></tr>
		        	<tr class="hide"><td></td><td colspan="2">FAQ내용</td></tr>
		        	<tr class="item"><td>5</td>
		        		<td>제목5</td>
		        		<td>작성자5</td></tr>
		        	<tr class="hide"><td></td><td colspan="2">FAQ내용</td></tr>
		        	<tr><td colspan="3"></td></tr>
		        </table>
			</div>
	        <div class="ordC">
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
</html>
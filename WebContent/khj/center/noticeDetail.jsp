<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.all-wrap{width:800px; margin:0 auto;}
	.go-list{margin-top:10px; width:100px; height:50px; background-color:black; color:white;
				 border:1px solid black; cursor:pointer; float:right;}
	.box{width:800px; margin:20px auto; border:1px solid black;}
		.title-box{width:100%; font-size:20px; border-bottom:1px solid gray;}
			.sub-title2{display:inline; padding-left:10px;}
			.sub-title3{float:right; padding-right:10px;}
				.title-user{color:gray;}
				.title-date{color:gray; font-size:12px;}
		.content{padding:10px;}
		.comment-box{width:790px; margin:10px auto; border:1px solid black;}
			.comment-regArea{width:750px; border-bottom:1px dotted gray; padding-left:10px; margin:10px auto; padding-bottom:10px;}
				.reg-name{font-size:20px;}
				.reg-date{font-size:15px; padding-left:10px; color:gray;}
			.comment-reg{width:780px; height:100px; border:1px solid gray; margin:5px auto;}
				textarea{width:99%; height:94px; border:none; outline:none; font-size:20px; }
				.reg-btn{width:60px; height:40px; background-color:black; color:white;
						border:1px solid black; margin:5px; cursor:pointer; float:right;}

</style>
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("시작");
	});
</script>
</head>
<body>

<jsp:include page="../../main/top.jsp"/>

<div class="all-wrap">
	<div style="height:50px;">
		<input class="go-list" type="button" value="목록"	/>
	</div>
	<div class="box">
		<div class="title-box">
		
<!-- 제목 추력 부분 -->
			<div class="sub-title2">
				<span>제목</span>
			</div>
			
<!-- 작성자 등록일 출력 부분 -->
			<div class="sub-title3">
				<span class="title-user">작성자</span>
				<span class="title-date">작성일</span>				
			</div>
		</div>
		
<!-- 본문 출력 부분 -->
		<div>
			<span class="content">본문<br><br><br><br><br><br><br><br><br></span>
		</div>
		<div class="comment-box">
		
<!-- 댓글 작성자 이름 등록일 내용 출력 부분 -->
			<div class="comment-regArea">
				<ul>
					<li><span class="reg-name">이름</span><span class="reg-date">등록일</span></li>
					<li><span>내용<br><br><br><br><br><br><br></span></li>
				</ul>
			</div>
		<form>
<!-- 댓글 작성하는 부분 -->
			<div class="comment-reg">
				<textarea></textarea>
			</div>
			
<!-- 댓글 등록 버튼 -->
			<div style="height:50px;">
				<input class="reg-btn" type="submit" value="등록"/>
			</div>
		</form>
		</div>
	</div>
</div>

<jsp:include page="../../main/bottom.jsp"/>

</body>
</html>
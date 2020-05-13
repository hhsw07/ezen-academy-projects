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
<link rel="stylesheet" href="css/mk_user_w_projectList.css">
<script>
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	    	<div class="project-title" >
	    		<div class="label label-warning">카테고리</div>
	    		<h3 style="font-weight:800;">"STOLI 립파우치" - 매일 쓰는 당신의 립스틱을 아름답게 품어줄게요</h3>
	    	</div>
	    	<div class="row">
	    		<div class="projectDetail_img">
	    			<img alt="" src="https://cdn.wadiz.kr/wwwwadiz/green001/2020/0416/20200416012327812_63526.jpg/wadiz/format/jpg/quality/80/optimize" class="img-rounded">
	    			<div class="container alert alert-warning" style="width:600px; margin:50px 0;">
           			<b>목표 금액 2,000,000원     펀딩기간 2020.05.11-2020.06.01</b><br><br>
            		100% 이상 모이면 펀딩이 성공되는 프로젝트<br>
					이 프로젝트는 펀딩 마감일까지 목표 금액이 100% 모이지 않으면 결제가 진행되지 않습니다.
		        </div>
	    		</div>
	    		
	    	</div>
	    
	    
	    
		</div>
	</div>
	
</body>
</html>
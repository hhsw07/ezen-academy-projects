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
<style type="text/css">
.project-maker{width:100%; padding: 10px 10px 20px;}
.project-opt{text-align:right;}
</style>
<script>
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	    	<div class="project-title" >
	    		<div class="label label-warning">${project.cate_title}</div>
	    		<h3 style="font-weight:800;">"${project.pro_title}</h3>
	    	</div>
	    	<div class="row project-basic col-md-8 col-sm-6">
	    		<div class="projectDetail_img">
	    			<img alt="" src="img/${project.pro_image}">
	    			<div class="container alert alert-warning" style="width:678px; margin:50px 0;">
           			<b>목표 금액 <fmt:formatNumber type="number" maxFractionDigits="3" value="${project.pro_target}"/>원     펀딩기간 2020.05.11-2020.06.01</b><br><br>
            		100% 이상 모이면 펀딩이 성공되는 프로젝트<br>
					이 프로젝트는 펀딩 마감일까지 목표 금액이 100% 모이지 않으면 결제가 진행되지 않습니다.
		        	</div>
	    		</div>
	    	</div>
	    	
	    	<div class="project-state col-md-4 col-sm-6">
				<div class="state-box">
					<p class="remainday">19일 남음</p>
					<div class="progress">
						<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="${project.percent}" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
							<span class="sr-only">60% Complete</span>
						</div>
					</div>
					<p class=""><strong>${project.percent}</strong>% 달성</p>
					<p class=""><strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${project.pro_money}"/></strong>원  펀딩</p>
				</div>
				<div class="btn-funding">
					<button class="btn btn-block btn-lg btn-fill btn-warning">펀딩하기</button>
				</div>

				<div class="btn-wrap share">
					<div class="btn-wrap-flex">
						<button class="btn btn-block btn-lg btn-round btn-warning">관심프로젝트 등록</button>
					</div>
				</div>
				
				<div class="project-report">
					<p style="font-size:13px;">신고하기란?</p>
					<p>해당 프로젝트에 허위내용 및 지적재산권을<br>침해하는 내용이 있다면 제보해주세요.</p>
					<button class="btn btn-block btn-lg btn-default" >프로젝트 신고하기</button>
				</div>
			</div>
			
			<!-- 메이커정보 -->
			<div class="project-maker">
				<div class="img-thumbnail" style="width:100%">
                    <img src="${path}/assets/img/mockup.png" alt="Circle Image" class="img-circle"  style="width: 40px; height: 40px;">
                    <h4>Circle Image</h4>
                </div>
			
			</div>
			
			<!-- 프로젝트 소개 -->
			<div class="col-md-8 col-sm-6">
				<h3>프로젝트 스토리</h3>
			</div>
			
			<!-- 프로젝트 옵션 -->
			<div class="project-opt col-md-4 col-sm-6">
				<div class="">
					<button href="#fakelink" class="img-thumbnail" style="width:300px;">
						<h6>opt_title</h6>
						<p>opt_detail</p><br>
						<p class="text-muted">opt_condition</p><br>
						<p class="text-muted">배송비</p>
						<p>opt_delivery</p>
						<p class="text-muted">리워드 발송 시작일</p>
						<p>opt_delivery_date</p>
					</button>
				</div>
				<div class="">
					<button href="#fakelink" class="img-thumbnail" style="width:300px;">
						<h6>opt_title</h6>
						<p>opt_detail</p><br>
						<p class="text-muted">opt_condition</p><br>
						<p class="text-muted">배송비</p>
						<p>opt_delivery</p>
						<p class="text-muted">리워드 발송 시작일</p>
						<p>opt_delivery_date</p>
					</button>
				</div>
				<div class="">
					<button href="#fakelink" class="img-thumbnail" style="width:300px;">
						<h6>opt_title</h6>
						<p>opt_detail</p><br>
						<p class="text-muted">opt_condition</p><br>
						<p class="text-muted">배송비</p>
						<p>opt_delivery</p>
						<p class="text-muted">리워드 발송 시작일</p>
						<p>opt_delivery_date</p>
					</button>
				</div>
			
			</div>
	    
	    
	    
		</div>
	</div>
	
</body>
</html>
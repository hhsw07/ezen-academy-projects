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
.project-opt-info{margin:10px 0;}
.opt-cont{text-align:left; padding:20px 10px 20px 30px;}
.report-modal{width:100%;}
.report-modal tr th, td {padding: 10px 5px;}
.report-cont{resize: none;}

</style>
<script>
	$(document).ready(function(){
		
	});
</script>
</head>
<body>
	<div class="main" style="overflow:hidden;">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	    	<div class="project-title" >
	    		<div class="label label-warning">${project.cate_title}</div>
	    		<h3 style="font-weight:800;">${project.pro_title}</h3>
	    	</div>
	    	<div class="row project-basic col-md-8 col-sm-6">
	    		<div class="projectDetail_img">
	    			<img alt="" src="img/${project.pro_image}">
	    			<div class="container alert alert-warning" style="width:678px; margin:50px 0;">
           			<b>목표 금액 <fmt:formatNumber type="number" maxFractionDigits="3" value="${project.pro_target}"/>원     펀딩기간 ${project.pro_start_date}-${project.pro_finish_date}</b><br><br>
            		100% 이상 모이면 펀딩이 성공되는 프로젝트<br>
					이 프로젝트는 펀딩 마감일까지 목표 금액이 100% 모이지 않으면 결제가 진행되지 않습니다.
		        	</div>
	    		</div>
	    	</div>
	    	
	    	<div class="project-state col-md-4 col-sm-6">
				<div class="state-box">
					<c:choose>
						<c:when test="${project.dday>0}">
							<p class="remainday">${project.dday}일 남음</p>
						</c:when>
						<c:when test="${project.dday<0}">
							<p class="remainday">펀딩 종료</p>
						</c:when>
						<c:when test="${project.dday==0}">
							<p class="remainday">오늘 자정 마감</p>
						</c:when>
					</c:choose>
					<div class="progress">
						<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="${project.percent}" aria-valuemin="0" aria-valuemax="100" style="width: ${project.percent}%;">
							<span class="sr-only">${project.percent}% Complete</span>
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
					<button class="btn btn-block btn-lg btn-default" data-toggle="modal" data-target="#myModal">프로젝트 신고하기</button>
					
					<div class="modal fade in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">프로젝트 신고하기</h4>
								</div>
								<div class="modal-body">
									<table class="report-modal">
										<colgroup>
											<col width="20%">
											<col width="80%">
										</colgroup>
										<tr>
											<th>프로젝트명</th><th>${project.pro_title}</th>
										</tr>
										<tr>
											<th>신고내용</th>
											<td>
												<textarea placeholder="신고할 내용을 작성해주세요" class="form-control report-cont" rows="5" ></textarea>
											</td>
										</tr>
										<tr>
											<th>파일첨부</th>
											<td><input type="file" /></td>
										</tr>
									</table>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default btn-simple" data-dismiss="modal">취소</button>
									<div class="divider"></div>
									<button type="button" class="btn btn-warning btn-simple">신고하기</button>
								</div>
							</div>
						</div>
					</div>
					
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
				<div>
					${project.pro_story}
				</div>
			</div>
			
			<!-- 프로젝트 옵션 -->
			<div class="project-opt col-md-4 col-sm-6">
				<div class="project-opt-info">
					<button href="#fakelink" class="img-thumbnail opt-cont" style="width:300px;">
						<h6>opt_title</h6>
						<p>opt_detail</p><br>
						<p class="text-muted">opt_condition</p><br>
						<p class="text-muted">배송비</p>
						<p>opt_delivery</p>
						<p class="text-muted">리워드 발송 시작일</p>
						<p>opt_delivery_date</p>
					</button>
				</div>
				<div class="project-opt-info">
					<button href="#fakelink" class="img-thumbnail opt-cont" style="width:300px;">
						<h6>opt_title</h6>
						<p>opt_detail</p><br>
						<p class="text-muted">opt_condition</p><br>
						<p class="text-muted">배송비</p>
						<p>opt_delivery</p>
						<p class="text-muted">리워드 발송 시작일</p>
						<p>opt_delivery_date</p>
					</button>
				</div>
				<div class="project-opt-info">
					<button href="#fakelink" class="img-thumbnail opt-cont" style="width:300px;">
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
	    	<!-- 문의 -->
	    	<div>
	    	
	    	</div>
	    
	    
		</div>
	</div>
	
</body>
</html>
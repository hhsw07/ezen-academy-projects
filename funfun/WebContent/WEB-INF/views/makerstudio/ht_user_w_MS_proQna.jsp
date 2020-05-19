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
<link rel="stylesheet" href="css/ht_user_w_MS_projectReg.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<script src="js/bootstrap-datepicker.js"></script>
<script>
	$(document).ready(function(){

		$(".basicReqBtn").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=basicReq")
		})
		$(".basicInfoBtn").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=basicInfo")
		})
		$(".storyBtn").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=story")
		})
		$(".rewardBtn").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=reward")
		})
		$(".riskBtn").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=risk")
		})
		$(".proQnaBtn").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=proQna")
		})		
		
		
	})
		
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">

 
 	<jsp:include page="../project_reg/ht_user_w_MS_projectReg_menu.jsp"/>
 
 
  	<div class="col-sm-10" style="padding-left:30px;padding-right:200px;">
  	
  	<h3 style="font-weight:bolder">프로젝트 문의 관리</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">프로젝트에 등록된 문의사항에 답변을 등록해 주세요</span>

  	<br><br><br><br>

	<table class="table table-hover">
		<thead>
			<tr>
			<th style="width:15%;">문의자 이름</th>
			<th style="width:15%;">등록 날짜</th>
			<th style="width:55%;">내용</th>
			<th style="width:15%;text-align:center;">등록하기</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<td>John</td>
			<td>Doe</td>
			<td style="word-break:break-all;">john@example.com</td>
			<td style="text-align:center;">
				<button class="btn btn-warning btn_custom regAnswerBtn" data-toggle="modal" data-target="#myModal">답변등록</button>
			</td>
			</tr>
		</tbody>
	</table>








	<div class="form-group">
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="padding:30px 20px 20px 30px;">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				  	<h3 class="modal-title" id="myModalLabel" style="font-weight:bolder">답변 등록하기</h3>
				</div>
				<div class="modal-body" style="padding-left:70px;padding-right:70px;">
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">문의 내용</div>
						<div class="reward_reg_content_container2">
							
							<span class="sub_gray_font">xx자 남음</span>
						</div>
					</div>
				
					<br><br>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">답변 내용</div>
						<div class="reward_reg_content_container2">
							<textarea class="form-control"></textarea>
							<span class="sub_gray_font">xx자 남음</span>
						</div>
					</div>
				
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-simple" data-dismiss="modal">취소</button>
						<div class="divider"></div>
					<button type="button" class="btn btn-info btn-simple">등록</button>
				</div>
			</div>
		</div>
	</div>

	
	</div>




  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
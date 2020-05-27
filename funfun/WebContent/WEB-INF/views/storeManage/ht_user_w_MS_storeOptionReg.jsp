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
<link rel="stylesheet" href="css/ht_user_w_MS_projectManage.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<script src="js/bootstrap-datepicker.js"></script>
<script>
	$(document).ready(function(){
		$(".proCancel").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=proCancel")
		})
		$(".proCurrnet").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=proCurrnet")
		})
		$(".proQnAManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=proQnAManage")
		})

		$(".storeOpenReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOpenReg")
		})
		$(".storeBasicInfoReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeBasicInfo")
		})
		$(".storeOptionReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOption")
		})
		$(".storeOpenRegSubmit").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOpenRegSubmit")
		})
		$(".storeOrderManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOrderManage")
		})
		$(".storeQnAManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeQnAManage")
		})
		
	})
		
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">

 
 	<jsp:include page="../makerstudio/ht_user_w_MS_menu.jsp"/>
 
 
  	<div class="col-sm-10" style="padding-left:30px;padding-right:200px;">
  	
  	<h3 style="font-weight:bolder">스토어 옵션 설계</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">
  	프로젝트에 등록한 옵션과 관련하여<br>
	스토어에 등록될 옵션 사항을 등록할 수 있습니다.</span>

  	<br><br><br><br>

	<c:forEach var="opt" items="${proOptList}">
			<div class="optUnitContainer">
			<div class="optUnitTitle">${opt.opt_title}</div>
			<div class="optUnitDetail">${opt.opt_detail}</div>
			<hr>
			<div><button class="btn btn-warning btn_custom" data-toggle="modal" data-target="#myModal">+ 추가하기</button></div>
			</div>
	</c:forEach>	
	

	<div class="form-group">

	<form method="post" action="${path}/ProjectReg.do" id="OptUnitSubmitForm">
	<input type="hidden" name="method" value="rewardUnitReg"/>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="padding:30px 20px 20px 30px;">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				  	<h3 class="modal-title" id="myModalLabel" style="font-weight:bolder">리워드 옵션 추가</h3>
				</div>
				<div class="modal-body" style="padding-left:70px;padding-right:70px;">
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">펀딩 금액</div>
						<div class="reward_reg_content_container2">
							<input type="text" name="opt_price" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp원
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">옵션명</div>
						<div class="reward_reg_content_container2">
							<input type="text" name="opt_title" class="form-control"/>
							<span class="sub_gray_font">xx자 남음</span>
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">상세설명</div>
						<div class="reward_reg_content_container2">
							<textarea class="form-control" name="opt_detail"></textarea>
							<span class="sub_gray_font">xx자 남음</span>
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">옵션조건</div>
						<div class="reward_reg_content_container2">
							<select class="form-control" name="opt_condition" id="sel1" style="width:60%;">
							<option>옵션 없음</option>
							<option>선택 옵션(사이즈, 색상 등)</option>
							<option>직접 입력 옵션(각인, 메세지 등)</option>
							</select>
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">배송비</div>
						<div class="reward_reg_content_container2">
							<div style="padding-left:30px;line-height:1.5em">
								<div class="reward_reg_content_container2">
									<input type="text" name="opt_delivery" class="form-control" style="width:80%;display:inline-block;height:30px;"/>&nbsp&nbsp&nbsp원
								</div>
								<span class="sub_gray_font">배송금액이 필요 없는 경우 0을 입력하세요</span>
							</div>
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">제한수량</div>
						<div class="reward_reg_content_container2">
							<input type="text" name="opt_max" class="form-control" style="width:30%;display:inline-block;"/>&nbsp&nbsp&nbsp개
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">발송시작 예정일</div>
						<div class="reward_reg_content_container2">
							<input type="text" placeholder="날짜를 선택하세요" name="opt_deliver_date" id="deliveryDat" class="form-control" style="width:60%;" >
						</div>
					</div>
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-simple" data-dismiss="modal">취소</button>
						<div class="divider"></div>
					<button type="button" class="btn btn-info btn-simple" id="subBtn">등록</button>
				</div>
			</div>
		</div>
	</div>
	</form>


	<br><br><br><br>

  	<button class="btn btn-warning btn_custom" style="width:40%" id="saveBtn">저장하기</button>


  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->

</body>
</html>
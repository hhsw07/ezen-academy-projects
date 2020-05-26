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

	$( function() {
		$( "#deliveryDate" ).datepicker();
<<<<<<< HEAD
	});
	
	
=======
	} );	

>>>>>>> parent of 7f1046d... 1111
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">

 	<jsp:include page="ht_user_w_MS_projectReg_menu.jsp"/>


  	<div class="col-sm-10" style="padding-left:30px;">
  	
  	<h3 style="font-weight:bolder">리워드 설계</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">서포터에게 제공할 리워드 옵션 내용을 입력하세요</span>

  	<br><br><br><br>



	

	<div class="form-group">

	<button class="btn btn-warning btn_custom" data-toggle="modal" data-target="#myModal">+ 추가하기</button>


	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="padding:30px 20px 20px 30px;">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				  	<h3 class="modal-title" id="myModalLabel" style="font-weight:bolder">리워드 옵션 추가</h3>
				</div>
				<div class="modal-body" style="padding-left:70px;padding-right:70px;">
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">금액</div>
						<div class="reward_reg_content_container2"><input type="text" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp원</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">리워드명</div>
						<div class="reward_reg_content_container2">
							<input type="text" class="form-control"/>
							<span class="sub_gray_font">xx자 남음</span>
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">상세설명</div>
						<div class="reward_reg_content_container2">
							<textarea class="form-control"></textarea>
							<span class="sub_gray_font">xx자 남음</span>
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">옵션조건</div>
						<div class="reward_reg_content_container2">
							<select class="form-control" id="sel1" style="width:60%;" name="maker_type">
							<option>옵션 없음</option>
							<option>선택 옵션(사이즈, 색상 등)</option>
							<option>직접 입력 옵션(각인, 메세지 등)</option>
							</select>
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">배송조건</div>
						<div class="reward_reg_content_container2">

							<label class="radio">
	    					<input type="radio" name="optionsRadios" data-toggle="radio" id="optionsRadios1" value="option1">
						    <i></i>배송이 필요한 리워드입니다
							</label>
							<div style="padding-left:30px;line-height:1.5em">
								<div class="reward_reg_content_container1">배송비</div>
								<div class="reward_reg_content_container2"><input type="text" class="form-control" style="width:80%;display:inline-block;height:30px;"/>&nbsp&nbsp&nbsp원</div>
								<span class="sub_gray_font">배송금액이 필요 없는 경우 0을 입력하세요</span>
							</div>
							<label class="radio">
	    					<input type="radio" name="optionsRadios" data-toggle="radio" id="optionsRadios1" value="option1">
						    <i></i>배송이 필요 없는 리워드입니다
							</label>
							
						
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">제한수량</div>
						<div class="reward_reg_content_container2"><input type="text" class="form-control" style="width:30%;display:inline-block;"/>&nbsp&nbsp&nbsp개</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">발송시작 예정일</div>
						<div class="reward_reg_content_container2">

							<input type="text" placeholder="날짜를 선택하세요" name="date" id="deliveryDate" class="form-control" style="width:60%;" >

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



	<br><br><br><br>

  	<button class="btn btn-warning btn_custom" style="width:40%">저장하기</button>

	<br><br><br><br>

	</div>
  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
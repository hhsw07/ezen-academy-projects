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
			$(location).attr("href", "${path}/MakerStudio.do?method=proCurrnet&pro_code=${projectCode}")
		})
		$(".proQnAManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=proQnAManage")
		})

		$(".storeOpenReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOpenReg")
		})
		$(".storeRegReady").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeRegReady")
		})

		$(".storeBasicInfoReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeBasicInfo")
		})
		$(".storeOptionReg").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOption")
		})
		$(".storeOrderManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeOrderManage")
		})
		$(".storeQnAManage").css('cursor','pointer').click(function(){
			$(location).attr("href", "${path}/Store.do?method=storeQnAManage")
		})

		$(".deleteX").css('cursor','pointer');

		
	})
		
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">

 
 	<jsp:include page="../makerstudio/ht_user_w_MS_menu.jsp"/>
 
 
  	<div class="col-sm-10" style="padding-left:30px;padding-right:200px;">
  	
  	<h3 style="font-weight:bolder">????????? ?????? ??????</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">
  	??????????????? ????????? ???????????? ????????????<br>
	???????????? ????????? ?????? ????????? ????????? ??? ????????????.</span>

  	<br><br><br><br>

	<c:forEach var="opt" items="${proStoOptList}">
		<div class="optUnitContainer">
		<div class="optUnitIntro">???????????? ?????????</div>
		<div class="optUnitPrice"><fmt:formatNumber type="number" maxFractionDigits="3" value="${opt.opt_price}"/>???</div>
		<div class="optUnitPrice">${opt.opt_title}</div>
		<div class="optUnitTitle">${opt.opt_detail}</div>
		<hr>
		<div>

		<c:choose>
		<c:when test="${opt.sto_opt_code==0 }">
			<button class="btn btn-warning btn_custom stoOptAdd" 
					data-toggle="modal"
					data-target="#myModal"
					data-opt_code="${opt.opt_code}"
					data-opt_title="${opt.opt_title}"
					data-opt_detail="${opt.opt_detail}"
					>????????? ?????? ??????</button>
		</c:when>
		<c:otherwise>
		<div class="optUnitIntro">????????? ??????</div>
		<span class="navbar-right deleteX sub_gray_font" style="display:inline-block"  onclick="javascript:deleteStoOpt('${opt.sto_opt_code}')">x</span>
		<div class="optUnitPrice">${opt.sto_opt_price}???</div>
		<div class="optUnitTitle">${opt.sto_opt_detail}</div>

			<button class="btn btn-warning btn_custom stoOptUpt navbar-right" 
					style="display:inline-block;width:55%;height:30px;margin-top:10px;padding:0;text-align:center;"
					data-toggle="modal"
					data-target="#myModalUpt"
					data-sto_opt_code="${opt.sto_opt_code}"
					data-opt_code="${opt.opt_code}"
					data-opt_title="${opt.opt_title}"
					data-opt_detail="${opt.opt_detail}"
					>????????? ?????? ??????</button>
		</c:otherwise>
		</c:choose>
		</div>

		</div>
	</c:forEach>	
	

	<div class="form-group">

	<form method="post" action="${path}/Store.do" id="StoOptUnitSubmitForm">
	<input type="hidden" name="method" value="storeOptionReg"/>
	<input type="hidden" name="opt_code" id="opt_code"/>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="padding:30px 20px 20px 30px;">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">??</button>
				  	<h3 class="modal-title" id="myModalLabel" style="font-weight:bolder">????????? ?????? ??????</h3>
				</div>
				<div class="modal-body" style="padding-left:70px;padding-right:70px;">
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">???????????? ????????????</div>
						<div class="reward_reg_content_container2 pro_option_title">
						</div>
					</div>
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">???????????? ????????? ??????</div>
						<div class="reward_reg_content_container2 pro_option_detail">
						</div>
					</div>
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">?????? ??????</div>
						<div class="reward_reg_content_container2">
							<input type="text" name="sto_opt_price" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp???
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">?????? ??????</div>
						<div class="reward_reg_content_container2">
							<textarea class="form-control" name="sto_opt_detail"></textarea>
							<span class="sub_gray_font">xx??? ??????</span>
						</div>
					</div>
				
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-simple" data-dismiss="modal">??????</button>
						<div class="divider"></div>
					<button type="button" class="btn btn-info btn-simple" id="subBtn">??????</button>
				</div>
			</div>
		</div>
	</div>
	</form>


	<form method="post" action="${path}/Store.do" id="StoOptUnitUptForm">
	<input type="hidden" name="method" value="storeOptionUpt"/>
	<input type="hidden" name="sto_opt_code" id="sto_opt_code"/>
	<div class="modal fade" id="myModalUpt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" style="padding:30px 20px 20px 30px;">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">??</button>
				  	<h3 class="modal-title" id="myModalLabel" style="font-weight:bolder">????????? ?????? ??????</h3>
				</div>
				<div class="modal-body" style="padding-left:70px;padding-right:70px;">
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">???????????? ?????? ??????</div>
						<div class="reward_reg_content_container2 pro_option_title">
						</div>
					</div>

					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">???????????? ?????? ??????</div>
						<div class="reward_reg_content_container2 pro_option_detail">
						</div>
					</div>
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">?????? ??????</div>
						<div class="reward_reg_content_container2">
							<input type="text" name="sto_opt_price" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp???
						</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">?????? ??????</div>
						<div class="reward_reg_content_container2">
							<textarea class="form-control" name="sto_opt_detail"></textarea>
							<span class="sub_gray_font">xx??? ??????</span>
						</div>
					</div>
				
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-simple" data-dismiss="modal">??????</button>
						<div class="divider"></div>
					<button type="button" class="btn btn-info btn-simple" id="uptBtn">??????</button>
				</div>
			</div>
		</div>
	</div>

	</form>


	<br><br><br><br>

  	<button class="btn btn-warning btn_custom" style="width:40%" id="saveBtn">????????????</button>


  	
  	</div>

	</div>


	</div>
	        
	    </div>
	</div>
	<!-- end main -->

	<script>
		$(".stoOptAdd").on('click', function(event){
			$("#opt_code").val(event.target.dataset.opt_code);
			$(".pro_option_title").text(event.target.dataset.opt_title);
			$(".pro_option_detail").text(event.target.dataset.opt_detail);
		})
		$(".stoOptUpt").on('click', function(event){
			$("#sto_opt_code").val(event.target.dataset.sto_opt_code);
			$(".pro_option_title").text(event.target.dataset.opt_title);
			$(".pro_option_detail").text(event.target.dataset.opt_detail);
		})
		$("#subBtn").click(function(){
			if(confirm("?????? ???????????????????")){
				$("#StoOptUnitSubmitForm").submit();
			}
		})
		$("#uptBtn").click(function(){
			if(confirm("?????? ???????????????????")){
				$("#StoOptUnitUptForm").submit();
			}
		})
		$("#saveBtn").click(function(){
			if(confirm("?????? ???????????????????")){
				$(location).attr("href", "${path}/Store.do?method=storeRegReady");
			}
		})
		
		function deleteStoOpt(sto_opt_code){
			if (confirm("?????? ???????????????????")){
				$(location).attr("href", "${path}/Store.do?method=stoOptUnitDelete&sto_opt_code="+sto_opt_code);	
			}		
		}
	</script>



</body>
</html>
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
		
	
	$("#stoRegBtn").click(function(){
		$(location).attr("href", "${path}/Store.do?method=storeOpenRegSubmit");
	})	
	
	})
		
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">

 
 	<jsp:include page="../makerstudio/ht_user_w_MS_menu.jsp"/>
 
 
 	<c:set var="storeInfo" value="${storeInfo}"/>
 	<c:set var="stoOptCnt" value="${stoOptCnt}"/>
 
  	<div class="col-sm-10" style="padding-left:30px;padding-right:200px;">
  	
  	<h3 style="font-weight:bolder">????????? ?????? ??????</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">?????? ????????? ????????? ??????????????? ???????????? ???????????????.</span>

  	<br><br><br><br>

  	<div class="reg_item_container">
	  	<span class="reg_content_title">????????? ?????? ??????</span>
	  	<c:choose>
			<c:when test="${storeInfo.sto_title==null or storeInfo.sto_title==''}">
			<span class="beforeReg">?????????</span>
		  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom storeBasicInfoReg">????????????</button></span>
			</c:when>
			<c:otherwise>
			<span class="afterReg">????????????</span>
		  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom storeBasicInfoReg">????????????</button></span>
			</c:otherwise>
		</c:choose>
  	</div>
  	<div class="reg_item_container">
	  	<span class="reg_content_title">?????? ??????</span>
		<c:choose>
			<c:when test="${stoOptCnt==0}">
			<span class="beforeReg">?????????</span>
		  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom storeOptionReg">????????????</button></span>
			</c:when>
			<c:otherwise>
			<span class="afterReg">????????????</span>
		  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom storeOptionReg">????????????</button></span>
			</c:otherwise>
		</c:choose>
  	</div>

  	<br><br>
  	
	
	<c:choose>
	
 	<c:when test="${storeInfo.sto_title!=null and storeInfo.sto_title!='' and
 					stoOptCnt!=0}">
	 	<span class="sub_gray_font">
		?????? ?????? ????????? ?????????????????????.<br>
		???????????? ????????? ?????? ??? ??? ????????? ?????????, ????????? ?????? ????????? :)	
		</span>
		<br><br>
	  	<span>
  	  	<button class="btn btn-warning btn_custom" id="stoRegBtn">????????? ?????? ??????</button>
		</span>
 	</c:when>	
	<c:otherwise>
	 	<span class="sub_gray_font">
		????????? ????????? ????????? ?????? ????????? ????????? ?????? ?????? ????????? ?????? ????????? ????????? ??? ????????????.	
		</span>
	</c:otherwise>
	
	</c:choose>
	
	<br><br><br><br><br><br><br>
  	
	
	</div>

	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
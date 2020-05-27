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

 
 	<jsp:include page="ht_user_w_MS_menu.jsp"/>
 
 
  	<div class="col-sm-10" style="padding-left:30px;padding-right:200px;">
  	
  	<h3 style="font-weight:bolder">프로젝트 현황</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">현재 프로젝트 현황입니다</span>

  	<br><br><br><br>


  	
  	</div>




	</div>


	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
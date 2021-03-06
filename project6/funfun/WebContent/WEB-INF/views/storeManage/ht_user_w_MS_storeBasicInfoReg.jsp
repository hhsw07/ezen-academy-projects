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
<script src="ckeditor/ckeditor.js"></script>
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
		
		
	var ckeditor_config = {
			resize_enaleb : false,
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			filebrowserUploadUrl : "${path}/Store.do?method=storeStoryImgUpload"
	};			
			
		
	CKEDITOR.replace("sto_detai", ckeditor_config);
	
	$("#subBtn").click(function(){
		$("#basicInfoForm").submit();
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
  	
  	<h3 style="font-weight:bolder">????????? ?????? ?????? ??????</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">????????? ???????????? ?????? ????????? ????????? ?????????</span>

  	<br><br><br><br>
  	
  	<c:set var="sto" value="${storeInfo}"/>

	<form method="post" enctype="multipart/form-data" id="basicInfoForm" action="${path}/Store.do">

	<input type="hidden" name="method" value="storeBasicInfoReg"/>

	<div class="form-group">
	
	
	<span class="reg_content_title">????????? ?????? *</span><br><br>

    <input type="text" name="sto_title" value="${sto.sto_title}" placeholder="?????????  ????????? ???????????????" class="form-control" style="width:60%;" />
	
	
	<br><br>

	<span class="reg_content_title">????????? ????????? *</span><br><br>

	<div class="btn btn-warning btn_custom"> 
		<c:if test="${sto.sto_image!=null }">
		<img src="${path}/${sto.sto_image}/">
		</c:if>
	    <label for="storeImg">????????? ????????? ?????????</label>
	    <input type="file" id="storeImg" name="storeImg" accept=".gif, .jpg, .png" style="display:hidden;">
	</div>	
		
	<br><br><br>

	<span class="reg_content_title">????????? ?????? ?????? *</span><br><br>

	<textarea class="form-control" id="sto_detai" name="sto_detai">${sto.sto_detai}</textarea>
	

	<br><br>

	
	<span class="reg_content_title">???????????? *</span><br><br>

	<select class="form-control" id="sel1" style="width:60%;" name="sto_cate">
		<option>??????????????</option>
		<option>??????????????????????</option>
		<option>??????????????????????????</option>
		<option>??????????????</option>
		<option>???????????????????????</option>
		<option>??????</option>
		<option>????????????</option>
		<option>??????????????</option>
	</select>
	<br><br>
	
	
	<span class="reg_content_title">????????? ?????? ?????? ??????*</span><br><br>

    <input type="text" name="sto_price" value="${sto.sto_price}" placeholder="????????? ???????????????" class="form-control" style="width:800px;" />
	

	<br><br><br><br>
	
  	<button class="btn btn-warning btn_custom" style="width:40%" id="subBtn">????????????</button>
	
	</div>
	
	</form>
	
	</div>

	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
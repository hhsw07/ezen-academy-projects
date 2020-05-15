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
<script src="ckeditor/ckeditor.js"></script>
<script>
	$(document).ready(function(){
		
	var ckeditor_config = {
			resize_enaleb : false,
			enterMode : CKEDITOR.ENTER_BR,
			shiftEnterMode : CKEDITOR.ENTER_P,
			filebrowserUploadUrl : "img"
	};			
			

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
			

	
	CKEDITOR.replace("storyDetail", ckeditor_config);
		
	})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">
  	<div class="col-sm-2" style="padding-top:30px;height:100%">
 
	<div class="panel-group">
	<div class="panel panel-default">
	<div class="panel-body">
	
	<span class="sub_gray_font">
	님의<br> 
	프로젝트
	</span>
	
	</div>
	</div>
	<div class="panel panel-default">
	<div class="panel-body">
	 	<details open>
	    <summary class="sub_gray_font" style="font-size:1.1em;">프로젝트 준비<br><br></summary>
		<ul style="list-style:none;line-height:3em">

	  		<li class="sub_gray_font basicReqBtn">기본 요건 동의</li>
	  		<li class="sub_gray_font basicInfoBtn">기본 정보</li>
	  		<li class="sub_gray_font storyBtn">스토리 작성</li>
	  		<li class="sub_gray_font rewardBtn">리워드 설계</li>
	  		<li class="sub_gray_font riskBtn">위험요인</li>
	  	
		</ul>
	  	</details> 	
	</div>
	<div class="panel-body sub_gray_font proQnaBtn" style="font-size:1.1em;">
	프로젝트 문의 관리
	</div>
	</div>
	</div>
	
	 
  	</div>


  	<div class="col-sm-10" style="padding-left:30px;">
  	
  	<h3 style="font-weight:bolder">스토리 작성</h3>

  	<br><br>
  	
  	<span style="color:#787878;font-weight:bold;">메이커님의 프로젝트를 소개해보세요 :)</span>

  	<br><br><br><br>

	<div class="form-group">

	<span class="reg_content_title">소개 사진 등록 *</span><br><br>
	
	<button class="btn btn-warning">이미지 업로드</button>

	<br><br><br>

	<span class="reg_content_title">프로젝트 요약 *</span><br><br>

	<textarea class="form-control" rows="5" id="comment"></textarea>	

	<br><br>
	
	<span class="reg_content_title">프로젝트 스토리 *</span><br><br>

	<textarea class="form-control" id="storyDetail"></textarea>

	<br><br><br><br>
	
  	<button class="btn btn-warning">저장하기</button>


	<br><br><br><br><br><br><br><br>

	</div>

  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
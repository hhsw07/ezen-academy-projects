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
	
	님의<br> 
	프로젝트
	
	</div>
	</div>
	<div class="panel panel-default">
	<div class="panel-body">
	 	<details open>
	    <summary>프로젝트 준비</summary>
		<ul style="list-style:none;line-height:3em">

	  		<li>기본 정보</li>
	  		<li>스토리 작성</li>
	  		<li>리워드 설계</li>
	  		<li>위험요인</li>
	  		<li>메이커 정보</li>
		</ul>
	  	</details> 	
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
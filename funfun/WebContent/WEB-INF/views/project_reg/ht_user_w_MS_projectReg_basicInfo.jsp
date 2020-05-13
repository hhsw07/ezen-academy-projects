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
		
		
	})
	
	$( function() {
		$( "#startDate" ).datepicker();
	} );	
	$( function() {
		$( "#finishDate" ).datepicker();
	} );	
	$( function() {
		$( ".widget input[type=submit], .widget a, .widget button" ).button();
		$( "button, input, a" ).click( function( event ) {
			event.preventDefault();
		} );
	} );	
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
  	
  	<h3 style="font-weight:bolder">기본 정보</h3>
  	
  	<br><br>
  	
  	<span style="color:#787878;font-weight:bold;">프로젝트를 대표할 주요 기본 정보를 입력하세요</span>

  	<br><br><br><br>

	<div class="form-group">
	
	
	<span class="reg_content_title">프로젝트 제목 *</span><br><br>

    <input type="text" name="maker_name" value="" placeholder="프로젝트 제목을 입력하세요" class="form-control" style="width:60%;" />
	
	
	<br><br>

	<span class="reg_content_title">목표 금액 *</span><br><br>

    <input type="text" name="maker_name" value="" placeholder="목표 금액을 숫자로 입력하세요" class="form-control" style="width:60%;" />

	<br><br>	
	
	<span class="reg_content_title">대표 이미지 *</span><br><br>

	<button class="btn btn-warning">대표 이미지 업로드</button>
	
	<br><br><br>
	
	<span class="reg_content_title">카테고리 *</span><br><br>

	<select class="form-control" id="sel1" style="width:60%;" name="maker_type">
		<option>교육·키즈</option>
		<option>패션·잡화·뷰티</option>
		<option>홈리빙·디자인소품</option>
		<option>공연·컬쳐</option>
		<option>스포츠·모빌리티</option>
		<option>출판</option>
		<option>반려동물</option>
		<option>테크·가전</option>
	</select>
	<br><br>
	
	<span class="reg_content_title">프로젝트 시작 예정일 *</span><br><br>

	<input type="text" placeholder="날짜를 선택하세요" name="date" id="startDate" class="form-control" style="width:60%;" >
	
	<br><br>
	
	<span class="reg_content_title">프로젝트 종료일 *</span><br><br>

	<input type="text" placeholder="날짜를 선택하세요" name="date" id="finishDate" class="form-control" style="width:60%;" >

    	
	<br><br>
	
	<span class="reg_content_title">검색용 태그 *</span><br><br>

    <input type="text" name="maker_name" value="" placeholder="기업명을 입력하세요" class="form-control" style="width:800px;" />
	

	<br><br><br><br>
	
  	<button class="btn btn-warning">저장하기</button>
	
	</div>




  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
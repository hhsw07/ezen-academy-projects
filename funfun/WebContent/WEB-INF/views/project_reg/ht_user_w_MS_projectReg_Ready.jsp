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
<script>
	$(document).ready(function(){
		
		$("#basicInfoBtn").click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=basicInfo")
		})
		$("#storyBtn").click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=story")
		})
		$("#rewardBtn").click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=reward")
		})
		$("#riskBtn").click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=risk")
		})
		$("#makerInfoBtn").click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=makerInfo")
		})
		    
		
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
	  		<li>기본 요건</li>
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


  	<div class="col-sm-10" style="padding-left:80px;">
  	
  	<h3 style="font-weight:bolder">프로젝트 준비</h3>
  	
  	<br><br>
  	
  	<span style="color:#787878;font-weight:bold;">프로젝트를 오픈하기 위한 6가지 항목을 작성해 주세요</span>
  	
  	<br><br><br>
  	
  	<div class="reg_item_container">
	  	<span style="display:inline-block">기본 정보</span>
	  	<span class="navbar-right" style="display:inline-block"><button id="basicInfoBtn" class="btn btn-warning">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span style="display:inline-block">스토리 작성</span>
	  	<span class="navbar-right" style="display:inline-block"><button id="storyBtn" class="btn btn-warning">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span style="display:inline-block">리워드 설계</span>
	  	<span class="navbar-right" style="display:inline-block"><button id="rewardBtn" class="btn btn-warning">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span style="display:inline-block">위험 요인 및 정책</span>
	  	<span class="navbar-right" style="display:inline-block"><button id="riskBtn" class="btn btn-warning">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span style="display:inline-block">메이커 정보</span>
	  	<span class="navbar-right" style="display:inline-block"><button id="makerInfoBtn" class="btn btn-warning">작성하기</button></span>
  	</div>
  	
  	<br><br>
  	
  	<button class="btn btn-warning">프로젝트 등록 신청</button>
  	
  	<br><br><br><br><br><br>
  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
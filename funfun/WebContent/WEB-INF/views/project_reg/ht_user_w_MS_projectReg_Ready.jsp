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
	

</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">

	<div class="row">

 	<jsp:include page="ht_user_w_MS_projectReg_menu.jsp"/>

  	<div class="col-sm-10" style="padding-left:80px;">
  	
  	<h3 style="font-weight:bolder">프로젝트 준비</h3>
  	
  	<br><br>
  	
  	<span class="sub_gray_font">프로젝트를 오픈하기 위한 6가지 항목을 작성해 주세요</span>
  	
  	<br><br><br>
  	
  	<div class="reg_item_container">
	  	<span class="reg_content_title">기본 요건 동의</span>
	  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom basicReqBtn">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span class="reg_content_title">기본 정보</span>
	  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom basicInfoBtn">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span class="reg_content_title">스토리 작성</span>
	  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom storyBtn">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span class="reg_content_title">리워드 설계</span>
	  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom rewardBtn">작성하기</button></span>
  	</div>
  	<div class="reg_item_container">
	  	<span class="reg_content_title">위험 요인 및 정책</span>
	  	<span class="navbar-right" style="display:inline-block"><button class="btn btn-warning btn_custom riskBtn">작성하기</button></span>
  	</div>

  	<br><br>
  	
  	<button class="btn btn-warning btn_custom" id="proRegBtn">프로젝트 등록 신청</button>

	<br><br>

	<div style="text-align:right;margin-right:40%">
  	<button class="btn btn-warning btn_custom" id="proCancelBtn">프로젝트 취소</button>
  	</div>
  	
  	<br><br><br><br><br><br>
  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>

<script>

	$("#proRegBtn").click(function(){
		if(confirm("등록 신청 후에는 더 이상 수정할 수 없습니다.\n진행할까용??")){
			$(location).attr("href", "${path}/ProjectReg.do?method=projectRegister")
		}
	})
	
		$("#proCancelBtn").click(function(){
		if(confirm("정말 삭제하시겠습니까?")){
			$(location).attr("href", "${path}/MakerStudio.do?method=proCancelSubmit")
		}
	})


</script>


</html>
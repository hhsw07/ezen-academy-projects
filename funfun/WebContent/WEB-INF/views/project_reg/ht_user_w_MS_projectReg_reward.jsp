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
  	
  	<h3 style="font-weight:bolder">리워드 설계</h3>
  	
  	<br><br>
  	
  	<span style="color:#787878;font-weight:bold;">서포터에게 제공할 리워드 옵션 내용을 입력하세요</span>

  	<br><br><br><br>

	<div class="form-group">

	<button class="btn btn-warning" data-toggle="modal" data-target="#myModal">+ 추가하기</button>


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
						<div class="reward_reg_content_container2"><input type="text" class="form-control"/>xx자 남음</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">상세설명</div>
						<div class="reward_reg_content_container2"><textarea class="form-control"></textarea>xx자 남음</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">옵션조건</div>
						<div class="reward_reg_content_container2"><input type="text" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp원</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">배송조건</div>
						<div class="reward_reg_content_container2"><input type="text" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp원</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">제한수량</div>
						<div class="reward_reg_content_container2"><input type="text" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp원</div>
					</div>
				
					<div class="reward_reg_subTitle">
						<div class="reward_reg_content_container1">발송시작일</div>
						<div class="reward_reg_content_container2"><input type="text" class="form-control" style="width:60%;display:inline-block;"/>&nbsp&nbsp&nbsp원</div>
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

  	<button class="btn btn-warning" style="width:50%">저장하기</button>

	<br><br><br><br>

	</div>
  	
  	</div>




	</div>
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
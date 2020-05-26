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
<link rel="stylesheet" href="css/mk_user_w_projectList.css">
<script>
	$(document).ready(function(){
		
		

		
		$("#newProRegBtn").click(function(){
			$(location).attr("href", "${path}/ProjectReg.do?method=ready")
		})			
		$("#makerInfoBtn").click(function(){
			$(location).attr("href", "${path}/MakerStudio.do?method=makerInfo")
		})		
		
	})
	
	function go_update(pro_code){
		$(location).attr("href", "${path}/ProjectReg.do?method=projectManage&pro_code="+pro_code)
	}

	function go_manage(pro_code){
		$(location).attr("href", "${path}/MakerStudio.do?method=proCurrnet&pro_code="+pro_code)
	}
</script>

</head>
<body>


	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px; padding-bottom:50px;">

	<h3>${user.mem_name}님이 만든 프로젝트</h3>
	<span class="navbar-right" style="display:inline-block">
	<button id="newProRegBtn" class="btn btn-warning btn_custom">새 프로젝트 등록</button>
	<button id="makerInfoBtn" class="btn btn-warning btn_custom">메이커 정보 변경</button>
	</span>
	        
	    </div>

	<div class="jumbotron" style="padding-bottom:50px;">
	<div class="container tim-container" style="max-width:1200px;background-color:#EEEEEE;"> 





	<div class="row">
		<c:forEach var="proj" items="${list}">
		<div class="col-xs-12 col-md-3 item">
			<div class="thumbnail projectList-item">
				<c:choose>
					<c:when test="${proj.pro_reg_date==null}">
					<span onclick="javascript:go_update('${proj.pro_code}')">수정하기</span>
					</c:when>
					<c:otherwise>
					<span onclick="javascript:go_manage('${proj.pro_code}')">프로젝트 관리</span>
					</c:otherwise>
				</c:choose>
				<img alt="..." src="img/${proj.pro_image}">
				<div class="caption proj-info">
					<p class="ProjectList-title">${proj.pro_title}</p>
					<div class="maker-info">
						<span class="ProjectList-maker">${proj.cate_title} | ${proj.maker_name}</span>
					</div>
					<div>
						<span class="ProjectList-rate">모금율 : ${proj.percent}%</span>
					<c:choose>
						<c:when test="${proj.dday>0}">
							<span class="ProjectList-date">${proj.dday}일 남음</span>
						</c:when>
						<c:when test="${proj.dday<0}">
							<span class="ProjectList-date">펀딩 종료</span>
						</c:when>
						<c:when test="${proj.dday==0}">
							<span class="ProjectList-date">오늘 마감</span>
						</c:when>
					</c:choose>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>




	</div>
	</div>


	    
	</div>
	
	
	<!-- end main -->
</body>



</html>
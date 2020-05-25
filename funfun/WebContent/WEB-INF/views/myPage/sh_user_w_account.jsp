<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<%@ include file="/template/header.jsp" %>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sh_user_w_userProfile.css">
<script>
		$(document).ready(function(){
			
		})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:800px; padding-top:100px">
	        <div class="row">
			<div class="col-md-3"></div>
	    	<div class="profile col-md-6 accountMain">
		    	
		    	<p class="profile__title">계좌 정보 설정</p>
		    	<form>
		    	<p style="margin-top:40px;font-weight:bold;"class="profile__img--title">은행 선택</p>
		    	<select style="margin-top:5px;width:100%;height:35px;">
					    <option selected>은행선택</option>
					    <option>신한은행</option>
					    <option>우리은행</option>
					    <option>농협은행</option>
					    <option>기업은행</option>
					    <option>산업은행</option>
				</select>
				<p style="margin-top:30px;font-weight:bold;"class="profile__img--title">계좌 번호 등록</p>
		    	<input style="margin-top:-3px;width:100%;height:35px;">
		    	<div style="display:flex;margin-top:40px;">
						<button style="background-color:gray;color:white;" class="profile__cancle">취소</button>
						<input style="background-color:orange;color:white;" class="profile__submit" type="submit" value="제출">
		    	</div>
		    	</form>
		    	<p class="chargeBtn">예치금 충전 및 이용 내역</p>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
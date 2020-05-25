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
<link rel="stylesheet" href="css/sh_user_w_account.css">
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
	    	<div class="profile col-md-6">
		    	<p class="profile__title">예치금 충전 및 이용내역</p>
		    	<p style="margin-top:40px;font-weight:bold;"class="profile__img--title">예치금 충전</p>
		    	<input style="margin-top:5px;width:100%;height:35px;" class="ph" placeholder="충전할 금액을 입력해주세요">
		    	<div style="display:flex;margin-top:40px;">
					<input style="background-color:orange;color:white;margin:0;position:relative;bottom:20px;width:100%" class="profile__submit" type="submit" value="신청하기">
		    	</div>
		    	
		    	<form>
		    	<p style="margin-top:40px;font-weight:bold;"class="profile__img--title">예치금 출금</p>
		    	<input style="margin-top:5px;width:100%;height:35px;" class="ph" placeholder="출금할 금액을 입력해주세요">
		    	<div class="bankingDeco">
		    	<p style="font-size:13px;font-weight:100;" class="profile__img--title">출금 계좌</p>
		    	우리은행<br>
		    	123-4567-891
		    	</div>
		    	<div style="display:flex;margin-top:40px;">
					<input style="background-color:orange;color:white;margin:0;position:relative;bottom:20px;width:100%" class="profile__submit" type="submit" value="신청하기">
		    	</div>
		    	
				</select>
				<p style="margin-top:30px;font-weight:bold;"class="profile__img--title">계좌 번호 등록</p>
		    	<input style="margin-top:-3px;width:100%;height:35px;">
		    	<div style="display:flex;margin-top:40px;">
						<button style="background-color:gray;color:white;" class="profile__cancle">취소</button>
						<input style="background-color:orange;color:white;" class="profile__submit" type="submit" value="제출">
		    	</div>
		    	</form>
		    	
		    	<p style="margin-top:50px;font-weight:bold;"class="profile__img--title">예치금 이용 내역</p>
		    	<div style="background-color:white;height:500px;width:100%;border:1px solid gray;"></div>
		    </div>
		    </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
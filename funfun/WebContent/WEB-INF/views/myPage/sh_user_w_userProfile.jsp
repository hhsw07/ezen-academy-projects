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
<link rel="stylesheet" href="css/sh_user_w_userProfile.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		var mlist = "${mlist}";
		if(mlist ===''){
			window.location = "${path}/login.do";
			alert("로그인해주세요");
		}
		
		$(document).ready(function(){
			$(':checkbox').on('toggle', function() {
				  $("label").css('color','black')
				});
		})
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
			<div class="row">
			<div class="col-md-3"></div>
	    	<div class="profile col-md-6">
		    	<!-- 타이틀 -->
		    	<p class="profile__title">프로필 정보 설정</p>
		    	<p class="profile__img--title">프로필 사진</p>
		    	
		    	<!-- 이미지 -->
		    	<img src="${path}/img/${mlist.memProfile}" style="border:1px solid gray;padding:5px;width:130px;height:130px;border-radius:100px;margin-top:20px;margin-left: 210px;margin-bottom:8px" src="" class="profile__img"/>
		    	<div style="text-align:center;margin-bottom:50px;">
		    	<span class="profile__img-edit">바꾸기</span>
		    	<span class="profile__img-edit">삭제</span>
		    	</div>
		    	
		    	<!-- 정보 입력 -->
		    	<form style="width:80%;margin-left:10%;margin-bottom:30px;" action="" method="POST">
		    		<p class="profile__innertitle">이메일 주소</p>
		    		
		    		<div style="display:flex;margin-bottom:30px;" class="profile__input">
		    		<input style="width:100%" name="email" style="width:350px;padding-left:10px;" value="${mlist.memEmail}" disabled>
					</div>
		    		<p class="profile__innertitle">휴대폰 번호</p>
		    		<div style="display:flex; height:35px;margin-bottom:30px;">
		    		<select style="margin-right:15px;">
					    <option selected>SKT</option>
					    <option>KT</option>
					    <option>LGU</option>
					    <option>SKT 알뜰폰</option>
					    <option>KT 알뜰폰</option>
					    <option>LGU 알뜰폰</option>
					</select>
		    		<input class="profile__input" class="" name="phoneNum" style="padding-left:10px;" value="${mlist.memPhone}">
		    		<button class="profile__btn" style="width:145px;">번호받기</button>
		    		</div>
		    		
		    		<p class="profile__innertitle">인증 번호 확인</p>
		    		<div style="display:flex;margin-bottom:30px;">
		    		<input class="profile__input" name="checkNum">
		    		<button class="profile__btn">인증하기</button>
		    		</div>
		    		
		    		<p class="profile__innertitle">주소</p>
		    		<div style="display:flex; width:100%;margin-bottom:30px;">
		    		<input class="profile__input" name="Adr">
		    		<button class="profile__btn">주소검색</button>
		    		</div>
		    		
		    		<p class="profile__innertitle">상세주소</p>
		    		<input class="profile__input" style="margin-bottom:30px;"name="detailAdr">
		    		
		    		<p class="profile__innertitle">관심사</p>
		    		<p class="profile__innertitle--subtitle">최소 1개 이상의 관심사를 선택해주세요</p>
		    		
		    		<div style="display:flex">
		    		<div>
		    		
		    		<label class="checkbox ct-orange" for="checkbox1">
				    <input type="checkbox" value="edu" id="checkbox1" data-toggle="checkbox">
					교육.키즈
					</label>
					
					<label class="checkbox ct-orange" for="checkbox2">
					<input type="checkbox" value="beauty" id="checkbox2" data-toggle="checkbox">
					패션.잡화.뷰티
					</label>
					
					<label class="checkbox ct-orange" for="checkbox3">
					<input type="checkbox" value="living" id="checkbox3" data-toggle="checkbox">
					홈리빙.디자인소품
					</label>
					
					<label class="checkbox ct-orange" for="checkbox4">
					<input type="checkbox" value="culture" id="checkbox4" data-toggle="checkbox">
					공연.컬쳐
					</label>
					
					</div>
					
					<div style="margin-left : 150px;">
					
					<label class="checkbox ct-orange" for="checkbox5">
					<input type="checkbox" value="sports" id="checkbox5" data-toggle="checkbox">
					스포츠.모빌리티
					</label>
					
					<label class="checkbox ct-orange" for="checkbox6">
					<input type="checkbox" value="publishing" id="checkbox6" data-toggle="checkbox">
					출판
					</label>
					
					<label class="checkbox ct-orange" for="checkbox7">
					<input type="checkbox" value="animals" id="checkbox7" data-toggle="checkbox">
					반려동물
					</label>
					
					<label class="checkbox ct-orange" for="checkbox8">
					<input type="checkbox" value="tech" id="checkbox8" data-toggle="checkbox">
					테크.가전
					</label>
					
					</div>
					</div>
					
					<div style="display:flex;margin-top:30px;">
						<button class="profile__cancle">취소</button>
						<input class="profile__submit" type="submit" value="제출">
		    		</div>
		    	</form>
	    	</div>
	    	</div>
	    	<div class="col-md-3"></div>
	    </div>
	</div>
	
	<!-- end main -->
</body>
</html>
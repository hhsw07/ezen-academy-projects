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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
		var mlist = "${mlist}";
		if(mlist ===''){
			window.location = "${path}/login.do";
			alert("로그인해주세요");
		}
		
		function goPopup(){
			var pop = window.open("jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 	
		}

		function jusoCallBack(roadFullAddr,zipNo){
			$("[name=pay_zipcode]").val(zipNo);
			$("[name=pay_addr]").val(roadFullAddr);
			
			
		}
		
		$(document).ready(function(){
			var memFavor = "${mlist.memFavor}";
			var memFavorArray = memFavor.split(',');
			for(let i=0; i<memFavorArray.length; i++){
				$("input:checkbox[value="+memFavorArray[i]+"]").prop("checked", true);
			}
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
		    	<form style="width:80%;margin-left:10%;margin-bottom:30px;" action="/funfun/profileEdit.do/changeProfile.do" method="POST">
		    		<p class="profile__innertitle">이메일 주소</p>
		    		
		    		<div style="display:flex;margin-bottom:30px;" class="profile__input">
		    		<input style="width:100%;padding-left:10px;" name="email" value="${mlist.memEmail}" disabled>
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
		    		<input class="profile__input" class="" style="padding-left:10px;" name="memPhone" value="${mlist.memPhone}">
		    		<button class="profile__btn" style="width:145px;">번호받기</button>
		    		</div>
		    		
		    		<p class="profile__innertitle">인증 번호 확인</p>
		    		<div style="display:flex;margin-bottom:30px;">
		    		<input class="profile__input" name="checkNum">
		    		<button type="button" class="profile__btn">인증하기</button>
		    		</div>
		    		
		    		<p class="profile__innertitle">주소</p>
		    		<div style="width:100%;margin-bottom:30px;">
		    		<input class="profile__input" value="${mlist.pay_zipcode}" style="width:30%;margin-bottom:15px;padding-left:10px;" name="pay_zipcode" readonly>
		    		<input class="profile__input" value="${mlist.pay_addr}" style="margin-bottom:15px;padding-left:10px;" name="pay_addr" readonly>
		    		<button type="button" onclick="goPopup()" style="margin-top:15px;width:100%;margin:0;border-radius:10px;height:35px;"class="profile__btn">주소검색</button>
		    		</div>
		    		
		    		<p class="profile__innertitle">관심사</p>
		    		<p class="profile__innertitle--subtitle" style="margin-bottom:20px;">최소 1개 이상의 관심사를 선택해주세요</p>
		    		
		    		<div style="display:flex">
		    		<div>  

					<div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="교육·키즈"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>교육·키즈</label>
				        </div>
			    	</div>
			    	<div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="패션·잡화·뷰티"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>패션·잡화·뷰티</label>
				        </div>
			    	</div><div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="홈리빙·디자인소품"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>홈리빙·디자인소품</label>
				        </div>
			    	</div><div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="공연·컬쳐"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>공연·컬쳐</label>
				        </div>
			    	</div>
					
					</div>
					
					<div style="margin-left : 150px;">
					
					<div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="스포츠·모빌리티"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>스포츠·모빌리티</label>
				        </div>
			    	</div>
					
					<div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="출판"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>출판</label>
				        </div>
			    	</div>
					
					<div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="반려동물"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>반려동물</label>
				        </div>
			    	</div>
					
					<div class="pretty p-icon p-jelly p-round p-bigger">
				        <input name="favorChk" type="checkbox" value="테크·가전"/>
					        <div class="state p-warning">
					            <i class="icon material-icons">done</i>
					            	<label>테크·가전</label>
				        </div>
			    	</div>
					
					</div>
					</div>
					
					<div style="display:flex;margin-top:30px;">
						<button type="button" class="profile__cancle">취소</button>
						<input class="profile__submit" type="submit" value="수정">
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
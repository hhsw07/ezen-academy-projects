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
		/* var mlist = "${mlist}";
		if(mlist ===''){
			window.location = "${path}/login.do";
			alert("로그인해주세요");
		}
		 */
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
			<div class="row">
			<div class="col-md-3"></div>
	    	<div class="profile col-md-6">
	    	
	    	<p class="profile__title">회원탈퇴</p>
		    
		    <p class="profile__innertitle" style="color:black;font-size:15px;margin-top:40px;font-size:18px">탈퇴전, 꼭 확인하세요!</p>
		    <p class="profile__innertitle" style="font-size:14px;margin-top:5px;color:tomato">탈퇴 전 반드시 아래 유의사항을 확인하시기 바랍니다</p>
		    <hr>
		    
		    <p class="profile__innertitle" style="font-size:15px">탈퇴후 동일 이메일로 재가입 불가</p>
		    <hr>
		    
		    <p class="profile__innertitle" style="font-size:15px">탈퇴전 작성한 게시물은 삭제 불가</p>
		    <p class="profile__img--title" style="font-size:14px">문의글, 오픈한 프로젝트에 남겨진 이름 등 삭제 불가</p>
		    <hr>
		    
		    <div class="pretty p-icon p-jelly p-round p-bigger">
		        <input name="favorChk" type="checkbox" value="secessionAgreement"/>
			        <div class="state p-warning">
			            <i class="icon material-icons">done</i>
			            	<label style="font-size:14px">상기 펀펀 탈퇴시 유의사항을 확인 했습니다</label>
		        </div>
			</div>
	    	
	    	<p class="profile__innertitle" style="margin-top:50px;font-size:18px;">본인확인</p>
		    <p class="profile__img--title" style="font-size:14px">안전한 탈퇴를 위해 본인 인증 절차를 진행합니다. 본인확인하기 버튼을 클릭해주세요</p>
	    	<button type="button" class="profile__submit" style="width:30%;margin:0;background-color:orange;color:white;margin-top:20px;font-size:14px;">본인 확인하기</button>
	    	<div style="display:flex;">
	    		<p>yuseohee27@gmail.com</p>
	    		<button type="button">재전송</button>
	    	</div>
	    	<div class="confirmInputDiv" style="display:flex;">
	    		<input class="confirmInput" placeholder="인증번호입력">
	    		<button type="button">재전송</button>
	    	</div>
	    	<hr>
	    	<button type="button" class="profile__submit" style="width:30%;margin:0;background-color:red;color:white;border:red;font-size:14px;">회원탈퇴</button>
	    	
	    	</div>
	    	<div class="col-md-3"></div>
	    	</div>
	    </div>
	</div>
	
	<!-- end main -->
</body>
</html>
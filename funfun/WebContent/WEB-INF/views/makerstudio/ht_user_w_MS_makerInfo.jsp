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

  	
  	<h3 style="font-weight:bolder">메이커 정보 수정</h3>

	<span class="sub_gray_font">
		서포터와 소통이 가능한 정확한 정보를 입력해 주세요	
	</span>

	<form method="post" action="${path}/MakerStudio.do">
	 
	<input type="hidden" name="method" value="makerReg_done" />

	<input type="hidden" name="mem_code" value="123132"/>
	<input type="hidden" name="maker_profile" value="123123"/>
	<input type="hidden" name="maker_email" value="123123"/>
	<input type="hidden" name="maker_curr" value=""/>
	<input type="hidden" name="maker_bankbook" value="123123"/>

	<div class="form-group">
	

	<br><br><br>
	
	<span class="reg_content_title">메이커(기업)명 *</span><br>
	<span class="sub_gray_font">
		법인사업자는 법인등기부상 법인명 / 개인사업자는 주민등록상 성명 또는 상호/<br>
		개인은 주민등록상 성명을 입력하세요
	</span>
	<br><br>

    <input type="text" name="maker_name" value="" placeholder="기업명을 입력하세요" class="form-control" style="width:800px;" />
	
	<br><br><br>


	<span class="reg_content_title">메이커 프로필 이미지 *</span><br><br>

	<button class="btn btn-warning">프로필 이미지 업로드</button>
	
	<br><br><br><br>	

	<span class="reg_content_title">관리자 휴대폰 번호 *</span><br><br>
    <input style="width:800px;display:inline-block;" type="text" value="" placeholder="휴대폰 번호를 입력하세요" class="form-control" name="mem_phoneno" />


	<br><br><br>

	<span class="reg_content_title">개인/사업자 구분 *</span><br><br>
	
	<select class="form-control" id="sel1" style="width:800px;" name="maker_type">
		<option>법인 사업자</option>
		<option>개인 사업자</option>
		<option>개인 </option>
	</select>
			
	<br><br><br><br><br>

	
	<button class="btn btn-warning btn_custom" style="width:40%;" id="updateSubmit">수정하기</button>

	</div>
	</form>
  	
	        
	    </div>
	</div>
	<!-- end main -->
</body>
</html>
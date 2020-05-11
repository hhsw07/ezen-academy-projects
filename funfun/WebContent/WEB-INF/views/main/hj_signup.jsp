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
<script>
		
</script>
</head>
<body>
	<div class="main">
	    <div class="container tim-container" style="max-width:1200px; padding-top:100px">
	        <h1 class="text-center">회원가입</h1>
	        <br><br><br>
	        <form action="${path }/login.do">
	        <div class="row">
		        <div class="col-md-3"></div>
		        <div class="col-md-6">
		        	<div class="form-group">
					  <label for="email">이메일:</label>
					  <input type="text" class="form-control" id="email" name="email">
					</div>
		        </div>
    		</div>
    		
    		<div class="row">
		        <div class="col-md-3"></div>
		        <div class="col-md-6">
		        	<div class="form-group">
					  <label for="name">이름:</label>
					  <input type="text" class="form-control" id="name">
					</div>
		        </div>
    		</div>
    		
	        <div class="row">
        		<div class="col-md-3"></div>
        		<div class="col-md-6">
        			<div class="form-group">
					  <label for="pwd">비밀번호:</label>
 					<input type="password" class="form-control" id="pwd">
					</div>
        		</div>
        	</div>
        	
        	<div class="row">
        		<div class="col-md-3"></div>
        		<div class="col-md-6">
        			<div class="form-group">
					  <label for="pwd">비밀번호확인:</label>
 					<input type="password" class="form-control" id="pwd">
					</div>
        		</div>
        	</div>
        	<br>
        	
        	<div class="row">
        		<div class="col-md-3"></div>
        		<div class="col-md-6">
        			<div class="form-group">
				      <label for="sel1">관심 카테고리 설정:</label>
				      <select class="form-control" id="cate">
				        <option>교육·키즈</option>
				        <option>패션·잡화·뷰티</option>
				        <option>홈리빙·디자인소품</option>
				        <option>공연·컬쳐</option>
				        <option>스포츠·모빌리티</option>
				        <option>출판</option>
				        <option>반려동물</option>
				        <option>테크·가전</option>
				      </select>
 				     </div>
        		</div>
        	</div>
        	
        	<br>
        	<div class="row">
        		<div class="col-md-3"></div>
        		<div class="col-md-6">
        			<button type="submit" class="btn btn-warning btn-lg" style="width:100%; background-color:rgb(255,150,0); color:white;">회원가입</button>
        		</div>
        	</div>
        	</form>
     	 </div>
	    </div>
	</div>
	<!-- end main -->
</body>
</html>